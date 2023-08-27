# [1]
total_of_array_1 = 1

# [1,2]
# 1, 2, [1, 2]
total_of_array_2 = 3

# [1, 2, 3]
# 1, 2, 3, [1, 2], [2, 3], [1,2, 3]
total_of_array_3 = 6

# [1, 2, 3, 4]
# 1, 2, 3, 4, [1, 2], [2, 3], [3, 4], [1, 2, 3], [2, 3, 4], [1, 2, 3, 4]
total_of_array_4 = 10

# [1, 2, 3, 4, 5]
# 1, 2, 3, 4, 5, [1,2], [2,3], [3,4], [4,5], [1,2,3], [2,3,4], [3,4,5], [1,2,3,4], [2, 3, 4, 5], [1,2,3,4,5]
total_of_array_5 = 15

# [1, 2, 3, 4, 5, 6]
# 1, 2, 3, 4, 5, 6
# [1,2], [2,3], [3,4], [4,5], [5,6]
# [1,2,3], [2,3,4], [3,4,5], [4,5,6]
# [1,2,3,4], [2,3,4,5], [3,4,5,6]
# [1,2,3,4,5], [2,3,4,5,6]
# [1,2,3,4,5,6]
total_of_array_6 = 21

data = c(total_of_array_1, total_of_array_2, total_of_array_3, total_of_array_4, total_of_array_5, total_of_array_6);
lines(1:6, data);


generate_line <- function(size){
  if(size == 1)
    return(1);
  
  return(size + generate_line(size - 1));
}

generate_line(6);



data <- c();
total = 1:140;
for(i in total){
  print(sprintf("i --> %d", i));
  data = append(data, generate_line(i));
}
plot(total, data);
lines(total, data);


