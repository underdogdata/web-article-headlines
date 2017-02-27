load("GDELTURLS.rdat") # loads urls, unique URLs from cleaned GDELT data from 20160101 to 20160630
length(urls)->N
urls -> urls.orig
#urls.sorted<-sort(urls)

library(httr)
library(XML)

urls <- urls[grepl("HTTP:|http:",urls)]
sample(urls,10) -> uurl

list()->x; for(myurl in uurl) x<-c(x,list(url=myurl,is.ok=try(readLines(myurl),silent=T)))
sapply(uurl,url_ok)->y
# lapply(x,length)
  
readLines(myurl[1]) -> dat
paste(dat,collapse="")[[1]] -> ddat

### Doesn't really work for some pages. try something else  
# gsub("<script ","AAA<script ",ddat)->ddat
# gsub("</script>","</script>ZZZ",ddat)->ddat
# strsplit(ddat,"AAA")->ddat

### why it doesn't work
# grep("</script>",dat)->j
# grep("^<script",dat)->i
# sort(i,decreasing=T)->i
# sort(j,decreasing=T)->j
# for(ii in 1:length(i)) dat[-(i[ii]:j[ii])]->dat

### code snippets and trials
gsub("^(.)+ZZZ?","",ddat) -> ddat # non-greedy match to remove scripts
gsub("\t","",ddat) -> ddat # remove tabs

gsub("<style.+</style>?","",ddat) -> ddat # remove style definitions
# gsub("<script.+</script>?","",ddat)->ddat
# gsub("&.+;?","",ddat)->ddat

gsub("&#[0-9];?","",ddat) -> ddat #remove special characters

grep("<meta.*title?",ddat,value=T)
grep("<meta.*\"title\"?",ddat,value=T)
grep("<meta.*:title?",ddat,value=T)
grep("<meta.*:title?|<title|<h1|<H1",readLines(myurl),value=T)

for(i in 1:length(x)) print(grep("<meta.*:title?|<title|<h1|<H1",x[[i]],value=T))
for(i in 1:length(x)) print(grep("<meta.*:title?|<title|<h2|<H2",x[[i]],value=T))
