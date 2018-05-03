funcMap=function(k,v){
  words.list  = strsplit(v," ")
  words = unlist(words.list)
  return(keyval(words,1))
}
funcReduce=function(word,count){
  return(keyval(word,sum(count)))
}
mp=mapreduce(input = "/Hadoop_Examples/wordcount.txt", input.format = "text", map=funcMap,reduce=funcReduce)
from.dfs(mp)
as.data.frame(result)
result
