
# Q1 ----------------------------------------------------------------------





# Q2 ----------------------------------------------------------------------







# Q3 ----------------------------------------------------------------------

# Import the file ---------------------------------------------------------


Earthquake <- read.csv(('ex3_eqscals.txt'), header = FALSE, sep="", col.names = c("distance,km", "radius,m" ,"moments,Nm"))
View(Earthquake)

distance <- Earthquake$distance.km
radius <- Earthquake$radius.m
moments <- Earthquake$moments.Nm

# Q1A ---------------------------------------------------------------------

#What is the mean, median, standard deviation, and median absolute deviation (MAD) for r and Mo? 

#For R
mean_r <- mean(radius)
median_r <- median(radius)
sd_r <- sd(radius)
MAD_r <- mad(radius)

#for Mo
mean_m <- mean(moments)
median_m <- median(moments)
sd_m <- sd(moments)
MAD_m <- mad(moments)


# Q3B ---------------------------------------------------------------------

#For r

plot(Earthquake$radius ,xlim = c(1,20), ylim = c(300,2000), ylab = "Value" ,xlab = "Radius in m" ,main = "Earthquake Radius value" ,col="red")
#For Mo
plot(Earthquake$moments.Nm, Earthquake$distance, ylab = "Distance in km" ,xlab = "Moments in Nm", main = "Earthquake Moments value with regards to the distance" ,col="blue")



# Q3C ---------------------------------------------------------------------


newdata <- subset(Earthquake[Earthquake$moments.Nm<3*MAD_m,])
View(newdata)

mean_newdata_Mo <- mean(newdata$moments.Nm)
median_newdata_Mo <- median(newdata$moments.Nm)
sd_newdata_Mo <- sd(newdata$moments.Nm
                    )
MAD_newdata_Mo <- mad(newdata$moments.Nm)


#I did not understand this question :(
