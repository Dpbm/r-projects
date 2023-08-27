
conjuncture <- function(start){
  data = c(start);
  last = start;
  while(last != 1){
    if(last %% 2 == 0){
      last = last/2;
     
    }else{
      last = last*3 + 1;
    }
    data = append(data, last)
  }
  return(data);
}
data = conjuncture(1000);

plot(data)
lines(data)

