#IMPORTING THE DATASET
library(readxl)
flavors_of_cacao <- read_excel("flavors_of_cacao.xlsx")
Flavors_of_cacao<-data.frame(flavors_of_cacao)
#CHECKING THE DIMENSIONS
dim(Flavors_of_cacao)  #The data contains 1793 rows and 8 columns.
head(Flavors_of_cacao,2)
# CHECKING IF THERE ARE ANY MISSING VALUES IN THE DATAFRAME
sum(is.na(Flavors_of_cacao)) 
#There are no missing values
#CHECKING THE STRUSTURE OF THE DATAFRAME
str(Flavors_of_cacao)
#CHECKING THE SUMMARIES OF EACH COLUMN
summary(Flavors_of_cacao$Cocoa_Percent)
table(Flavors_of_cacao$Rating)
table(Flavors_of_cacao$Review_Date)
table(Flavors_of_cacao$Bean_Type)
table(Flavors_of_cacao$Company_Location)
table(Flavors_of_cacao$Broad_Bean_Origin)
#With the summary statistic used above, we can see the max, min and average of Cocoa_Percent and Rating as well as the number of chocolates in categories of Bean_Type,Company_Location,Broad_Bean_Origin and Review_Date

#ANALYZING THE DATA USING GRAPHICAL METHODS

#BARPLOTS
b1<-barplot(table(Flavors_of_cacao$Rating),xlab="RATINGS", ylab="NO. OF CACAO PRODUCTS MANUFACTURED",main="FREQUENCY OF CACAO PRODUCTS OF DIFFERENT RATINGS", col=rainbow(length(table(Flavors_of_cacao$Rating))),las=2,ylim=c(0,450))
text(b1, table(Flavors_of_cacao$Rating), round(table(Flavors_of_cacao$Rating), 1),cex=1,pos=3) 
#We see that a majority of cacao products (392) have a rating of 3.5, whereas only 2 products were rated 5.
b2<-barplot(table(Flavors_of_cacao$Company_Location),xlab="COUNTRIES", ylab="NO. OF CACAO PRODUCTS MANUFACTURED",main="FREQUENCY OF CACAO PRODUCTS MADE IN DIFFERENT COUNTRIES", col=rainbow(length(table(Flavors_of_cacao$Company_Location))),las=2,ylim=c(0,800))  
#We observe that majority of cacao products (763) are manufactured in USA
b3<-barplot(table(Flavors_of_cacao$Bean_Type),xlab="BEAN TYPE", ylab="NO. OF CACAO PRODUCTS MANUFACTURED",main="FREQUENCY OF CACAO PRODUCTS MADE FROM DIFFERENT BEANS", col=rainbow(length(table(Flavors_of_cacao$Bean_Type))),ylim=c(0,1000), las=2) 
#We observe that ^A and Trinitario have been used in majority of cacao products.
b4<-barplot(table(Flavors_of_cacao$Broad_Bean_Origin),xlab="BEAN ORIGIN", ylab="NO. OF CACAO PRODUCTS MANUFACTURED",main="FREQUENCY OF CACAO PRODUCTS MADE FROM BEANS OF DIFFERENT REGIONS", col=rainbow(length(table(Flavors_of_cacao$Broad_Bean_Origin))),ylim=c(0,250), las=2) 
#We observe that a majority of products in our sample were made from beans obtained from countries of South America and Africa, such as Venezuela, Dominican Republic, Peru and Madagascar, which makes sense as these countries have optimal climate conditions for growing cacao beans.

#HISTOGRAMS
h1<-hist(Flavors_of_cacao$Review_Date,main="REVIEW DATE OF CACAO PRODUCTS", xlab="Review Date", col="pink", ylim=c(0,300))
text(h1$mids,h1$counts,labels=h1$counts,adj=c(0.5,-0.5))
#We observe that majority of products (285) have been reviewed in 2014-15 whereas only 24 products have been recently reviwed.


