
setwd("../../UD")
load("GDELTURLS.rdat") # loads urls, unique URLs from cleaned GDELT data from 20160101 to 20160630
length(urls)->N
urls.orig<-urls
#urls.sorted<-sort(urls)
library(httr)
library(XML)

urls<-urls[grepl("HTTP:|http:",urls)]

paste(dat,collapse="")->ddat
ddat[[1]]->ddat

gsub("<script ","AAA<script ",ddat)
gsub("<script ","AAA<script ",ddat)->ddat
gsub("</script>","</script>ZZZ",ddat)->ddat
strsplit(ddat,"AAA")
strsplit(ddat,"AAA")->ddat

gsub("^(.)+ZZZ","",ddat)
gsub("^(.)+ZZZ?","",ddat)

gsub("\t","",ddat)
gsub("\t","",ddat)->ddat

gsub("<style.+</style>?","",ddat)->ddat
gsub("<script.+</script>?","",ddat)->ddat
gsub("&.+;?","",ddat)->ddat

grep("&#[0-9];?",dat,value=T)
gsub("&#[0-9];?","",dat)->dat

gsub("\t","",dat)->dat

gsub("<script(.)+</script>","",dat)->dat
grep("^<script",dat)
grep("</script>",dat)

grep("^<script","",dat)
grep("^<script",dat)
grep("</script>$",dat)
dat[220:272]
grep("^<script",dat)
grep("</script>",dat)
grep("</script>",dat)->sbeg
grep("</script>",dat)->send
grep("</script>",dat)->j
grep("^<script",dat)->i

# sort(i,decreasing=T)->i
# sort(j,decreasing=T)->j
# for(ii in 1:length(i)) dat[-(i[ii]:j[ii])]->dat

grep("script",dat,value=T)
grep("<script",dat,value=T)
grep("script>",dat,value=T)
dat[-which(nchar(dat)==0)]
dat[-which(nchar(dat)==0)]->dat
dat
dat[1:30
]
grep("Abu Qatada",dat,value=T)
grep("<meta.*title?",dat,value=T)
grep("<meta.*\"title\"?",dat,value=T)
grep("<meta.*:title?",dat,value=T)
grep("<meta.*:title?|<title|<h1>|<H1>",dat,value=T)
grep("<meta.*:title?|<title|<h1|<H1",dat,value=T)
grep("<meta.*:title?|<title|<h1|<H1",urls[11100],value=T)
grep("<meta.*:title?|<title|<h1|<H1",urls[100],value=T)
grep("<meta.*:title?|<title|<h1|<H1",readLines(urls[11100]),value=T)
grep("<meta.*:title?|<title|<h1|<H1",readLines(urls[1100]),value=T)
grep("<meta.*:title?|<title|<h1|<H1",readLines(urls[11100])->dat,value=T)

grep("<meta.*:title?|<title|<h1|<H1",readLines(urls[100]),value=T)


for(i in 1:length(x)) print(grep("<meta.*:title?|<title|<h1|<H1",x[[i]],value=T))
for(i in 1:length(x)) print(grep("<meta.*:title?|<title|<h2|<H2",x[[i]],value=T))


sample(urls,10)->uurl
list()->x; for(myurl in uurl) x<-c(x,list(try(readLines(myurl),silent=T)))
lapply(x,length)
sapply(uurl,url_ok)->y
for(i in 1:length(x)) print(grep("<meta.*:title?|<title|<h2|<H2",x[[i]],value=T))
for(i in 1:length(x)) print(grep("<meta.*:title?|<title|<h1|<H1",x[[i]],value=T))
