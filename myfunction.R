myfunction<-function(){
x<-runif(1,0,100);

if(x>3)
{
y<-10
}
else
{
y<-50
}
result=list("x"=x,"y"=y)
print(result)
}

loop<-function(){
  x<-matrix(1:6,2,3)
  
  for (i in seq_len(nrow(x))){
    for(j in seq_len(ncol(x))){
      print(x[i,j])
    }
  }
}

loop2<-function(){
  x<-matrix(1:9,3,3)
  
  for (i in seq_len(nrow(x))){
    for(j in seq_len(ncol(x))){
      print(x[i,j])
    }
  }
}

coin<-function(){
  z<-5
  set.seed(1)
  while(z>=3 && z<=10){
    coin<-rbinom(1,1,0.5)
    
    if(coin==1){
      z <- z + 1
    }else{
      z <- z - 1
    }
  }
  print(z)
}

cube<- function(x,n){
  x^3
}


error<-function(){
  x<-1:10
  if(x>5){
    x<-0
  }
}

f<-function(x){
  g<-function(y){
    y+z
  }
  z<-4
  x+g(x)
}

h <- function(x, y = NULL, d = 3L) {
  z <- cbind(x, d)
  if(!is.null(y))
    z <- z + y
  else
    z <- z + f
  g <- x + y / z
  if(d == 3L)
    return(g)
  g <- g + 10
  g
}