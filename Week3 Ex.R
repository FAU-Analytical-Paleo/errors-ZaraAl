#WEEK THREE EXERCISE: ERRORS

# Q1 ----------------------------------------------------------------------

#converting the units 

torad <- function(d, m, s) { rad <- pi* (d+m/60+s/3600/180)
return(rad)}

#the angle between the horizontal plane and the building to be 1°21’ 
#the distance to a building is estimated from a map to be about 2550 25 m

angle <- torad(1, 21, 0)
angle_err <- torad(0, 1, 0)

d <- 2550
d_err <- 25

#What is the height of the building and the fractional uncertainty in this estimate? 

#equation is height = d*tan(angle)

height <- d*tan(angle)
print(height)

height_err <- d_err*tan(angle_err)
print(height_err)

#uncertainty 

un <- height_err/abs(height)
print(un)

# Q2 ----------------------------------------------------------------------


#Volcano 1: 25.53 plus or minus 0.1 Ma
#volcano 2: 29.66 plus or minus  0.2 

v1 <- 25.53
v1_err <- 0.1
v2 <- 29.66
v2_err <- 0.2

#Duration of the volcanic activity? We use differences equation 
#min x-y + delta x + delta y and min x-y-delta x - delta y

max <- v1-v2+v1_err+v2_err
min <- v1-v2-v1_err-v2_err

print (min)
print(max)


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

