#Test library 
library(circlize)

From = (A,B,C,D,B,B,C,C,D,D,D);
To = (B,C,D,A,A,D,A,B,A,B,C);
Count = (100,200,50,6,25,80,100,200,25,3,17);
datacount <- Matrix(From,To,Count);
datacount
