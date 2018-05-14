mapT12=function(k,va){
	vk=c();
	vv=c();
	for(v in va){
		val=strsplit(v,'\\s');
		val=unlist(val);
		count=1;
		for (i in val){
			vk=c(vk,count);
			vv=c(vv,i);
			count=count+1;
		}
	}
	return(keyval(vk,vv));
}

reduceT12=function(k,v){
	v=unlist(v);
	vals=c();
	for(c in v){
		cvector=strsplit(c,'#');
		cvector=unlist(cvector);
		indexex=strsplit(cvector[1],',');
		indexex=unlist(indexex);
		indexexStr=paste(indexex[2],indexex[1],sep=',')
		tmp=paste(indexexStr,cvector[2],sep='#');
		vals=c(vals,tmp);
	}	
	val=c();
	val=paste(vals,collapse=' ');
	
	
	return(keyval(k,val));
}
