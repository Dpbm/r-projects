
is_prime <- function(number){
  if(number <= 1){
    return(FALSE);
  }else if(number == 2 || number == 3){
    return(TRUE);
  }else if(number%%2 == 0){
    return(FALSE);
  }
  
  for(i in seq(3, number-1, by=2)){
    if(number%%i == 0){
      return(FALSE);
    }
  }

  return(TRUE);
}

get_prime_frequency <- function(range){
  y = c();
  
  for(i in range){
    print(i);
    counter = 0;
    if(i > 2){
      for(j in 1:(i-1)){
        if(is_prime(j)){
          counter = counter+1;
        }
      }
    }
    
    y=append(y, counter);
  }
  return(y);
}


plot_prime_frequency <- function(range){
  plot(range, get_prime_frequency(range));
}

plot_prime_frequency(1:1000);

zeta_function <- function(zeta, max){
  result = 0
  for(i in 1:max){
    result = result + 1/i^zeta
  }
  return(result);
}

calc_zeta_frequency <- function(max, numbers_list){
  y = c();
  
  for(i in numbers_list){
    zeta_result = zeta_function(i, max)
    y = append(y, zeta_result);
  }
  
  return(y);
}

numbers = seq(0, 800, 0.01) + 1i*seq(0, 800, 0.01);
results = calc_zeta_frequency(1000, numbers)
plot(results)

numbers

