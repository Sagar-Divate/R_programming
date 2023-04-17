
basis 
datatype:-numeric ,char, logical(TRUE FALSE),complex(7+5j)
operators:- 
assignment(=,->,variable<-value), relational(<,>,=,!=),arithmetic(+,-,*,/), logical(&,| o/p-- true ,false)

data structucture(object):- 
	 vector(homogenous),suppose we pass non homegenous data then 			data will convert as per presidence   
	 list() 
     matrix 
	 array
	 factor
	 dataframe
inbuild function:-
flow control:-
user define function:-
data manipulation (dply package) (e.g.___%>%_select_filter__) 
data visulation (ggplot)





vec1 <- c(1,2,3)
vec2<- c('a','b','c')
vec3 <- c(TRUE,FALSE,TRUE)


mixbag1<-c(1,FALSE,TRUE,2)
print(mixbag1)
# hetrogenous convert in to homgenous 
# here greather presedence is numeric that why o/p=>[1] 1 0 1 2

mixbag2<-c(1,'F','T',2)
print(mixbag2)
#char value is greather precidence [1] "1" "F" "T" "2"
print(class(mixbag2)) #char
mixbag3<-c(1,'a',TRUE,2,'b',FALSE)
print(mixbag3)
#[1] "1"     "a"     "TRUE"  "2"     "b"     "FALSE"
#[1] "character (more precidence here)
print(mixbag3[2])
print(mixbag3[1:3])
# indexing like[1,2,3,4]
print(mixbag3[c(1,5)]) # first index and 5th index


# list (1D ) indusial identity retain 
l1<-list(1,'a',TRUE)
print(l1)
print(class(l1))
print(class(l1[[1]])

      
l2<-list(c(1,2,3),c('a','b','c'),c(TRUE,FALSE,TRUE))   
print(l2)
print(l2[[2]][3])#[1] "c"


#.............................................
#matrix(2 dimensional datastructure) homo

m1=matrix(c(1,2,3,4,5,6),nrow=2,ncol=3)#matrix----2*3
print(m1)# column wise arrange

m2=matrix(c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=TRUE)#matrix----2*3
print(m2)# rowwise arrange
print(m2[2,3])# [row,column]

#array.(homo).................
vec1<-c(1,2,3,4,5,6)
vec2<-c(7,8,9,10,11,12)

a1<-array(c(vec1,vec2),dim=c(2,3,2))
# c(matrix size(row,col),array_position/array_dimension)
print(a1)
#extract 11 element
print(a1[1,3,2])


#..............................................
#factor variable and categorical variable
color<-factor(c('blue','yellow','red','yellow','yellow'))
print(color)

#.......................................
#dataframe
fruit<-data.frame(fruit_name=c('apple','bananna','orange'),fruit_cost=c(100,30,60))
print(fruit)
# extract column
fruit$fruit_name #dataframe$column
fruit$fruit_cost


#..........................................
# look at builtin function
library(datasets)
print(iris)
print(str(iris))
print(tail(10))
print(head(10))
print(table(iris$Species))# count of catggorical column
print(min(iris$Sepal.Length))
print(max(iris$Sepal.Width))
print(mean(iris$Sepal.Length))
print(range(iris$Sepal.Length))# min value and max value

#........................................
#decision making statement
#if.......else
if(iris$Sepal.Length[1]<4){
  print('seple length is greather than 4')
}else{print('SL is less than 4')}

# for loop(iteration)
vec1<-1:9
for (i in vec1){print(i+5)}

#while(iterate till some condi)
i=1
while (i<9){
  print(i+5)
  i=i+1
}


#user define function
add5<-function(x){print(x+5)}
add5(2) #o/p--7


#.............................................
#data manupalation
print(nrow(laptops))
print(ncol(laptops))
library(dplyr)
print(laptops%>% select(1,2)) -> laptop1_2 # new data frame is creat
# %>% pipe operator(use for join datafram and select function)


#extract column name who start with P
print(laptops%>% select(starts_with('P'))) -> laptop_p
#llly ends with

#filter (extract record base on conditions)
print(laptops%>% filter(Type=='Gaming Laptop')) -> laptop_gamming_laptop


#combine select filter
laptops %>% select(name,Price,`Model Number`,Color,Type) %>% filter(Type=='Gaming Laptop') -> selected_gaming



#data visulation
#ggplot
library(ggplot2)
nrow(diamonds)
ncol(diamonds)

#?diamonds
ggplot(data=diamonds,aes(x=price)) + geom_histogram()
#     (             price on xaxix)   histogram
ggplot(data=diamonds,aes(x=price)) + geom_histogram(fill='green',col='red')

#
ggplot(data=diamonds,aes(x=cut,fill=cut))+geom_bar()
#                               aesticic color          (attribute)  normal color


# scatter plot (numeric column )
ggplot(data=diamonds ,aes(y=price,x=carat)) +geom_point()
#
ggplot(data=diamonds ,aes(y=price,x=carat,col=cut)) +geom_point() #(color is assign ffrom cut )
#obseration :-carat value is more then prise is also more
#boxplot (continuous ,catagorical)
 ggplot(data=diamonds,aes(x=clarity,y=carat,fill=clarity))+geom_boxplot()

 # facting(different group)
 ggplot(data =diamonds,aes(x=clarity,y=carat,fill=cut)) +geom_boxplot()
+face_grid(-cut) 
 
 





















