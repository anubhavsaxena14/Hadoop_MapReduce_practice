numbers = c(1:50)
dfs.numbers = to.dfs(numbers)
funcMap = function(k,v){
key = ifelse(v%%2 == 0, ”Even”, ”Odd”);
return(keyval(key,v));
}
funcReduce=function(k,v){
val = length(v);
return(keyval(k, val));
}
mpres = mapreduce(dfs.numbers, map = funcMap, reduce = funcReduce)
from.dfs(mpres)
