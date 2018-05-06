# Faking it as a Data Scientist, Hands-on
# ==============================================================================









# Loading libraries, etc.
# ------------------------------------------------------------------------------
library(datasets)
library(ggplot2)
library(gridExtra)
theme_set(theme_bw(12))










# Clustering - Textbook example
# ==============================================================================


# Exploring data
# ------------------------------------------------------------------------------


head(iris)
# ?iris


ggplot(
   iris, 
   aes(
      x = Petal.Length, 
      y =Petal.Width
   )
) + 
   geom_point()




ggplot(
   iris, 
   aes(
      x = Petal.Length, 
      y = Petal.Width, 
      color = Species
   )
) + 
   geom_point() + 
   scale_colour_manual(
      values =  c('red','black','green')
   )




# Running k-means clustering
# Feel free to play with the arguments
# ------------------------------------------------------------------------------


# controlling any randomisation
set.seed(1)


iris$Cluster = NULL


irisCluster <- kmeans(
   x = iris[, 3:4], # assume we already these are the important variables
   centers = 3 # assume we already know how many clusters to split it in
)




# K-means clustering results exploration
# ------------------------------------------------------------------------------


iris$Cluster = as.character(irisCluster$cluster)


ggplot(
   iris, 
   aes(
      x = Petal.Length, 
      y = Petal.Width, 
      color = Species
   )
) + 
   geom_point() + 
   scale_colour_manual(
      values =  c('red','black','green')
   ) + 
   facet_grid(Cluster~Species)




table(irisCluster$cluster, iris$Species)




# Cleaning
# ------------------------------------------------------------------------------


rm(list = ls())












# Clustering - More realistic data set
# ==============================================================================




# Exploring data
# ------------------------------------------------------------------------------


head(attitude)
# ?attitude


plot(attitude)


lPlots = lapply(
   colnames(attitude),
   function(cColumnName) {
      ggplot(attitude) + geom_density(aes_string(x = cColumnName))
   }
)


do.call('grid.arrange', lPlots)




# Figure out the best number of clusters
# ---------------------------------------------------------------------------
dfnbrclusters = data.frame(
   wss = ( nrow( attitude ) - 1 ) * sum( apply ( attitude, 2, var ) ),
   NbrClusters = 1
)


for (i in 2:15) {
   
   dfnbrclusters = rbind(
      dfnbrclusters,
      data.frame(
         NbrClusters = i,
         wss = sum(
            kmeans(
               attitude,
               centers = i
            )$withinss
         )
      )
   )
   
}

# Find an elbow. 
# Incremental gain after elbow is little.
ggplot(
   dfnbrclusters, 
   aes(x = NbrClusters, y = wss)
) + 
   geom_line() + 
   geom_point()






# Running k-means clustering
# Feel free to play with the arguments
# ------------------------------------------------------------------------------


# controlling any randomisation
set.seed(1)




# clustering
attitude$Cluster = NULL

# Centers = 6 from the elbow
attitudeCluster <- kmeans(
   x = attitude,
   centers = 6
)




# K-means clustering results exploration
# ------------------------------------------------------------------------------


attitude$Cluster = as.character(attitudeCluster$cluster)


lClusterPlots = lapply(
   setdiff(colnames(attitude), 'Cluster'),
   function(cColumnName) {
      
      ggplot(attitude) + 
         geom_boxplot(
            aes_string(
               x = 'Cluster', 
               y = cColumnName, 
               group = 'Cluster'
            )
         )
   }
)


do.call(
   'grid.arrange', 
   lClusterPlots
)




# Running hierarchical clustering
# ------------------------------------------------------------------------------


attitude$Cluster = NULL
attitudeCluster = hclust(dist(attitude))




# Hierarchical clustering results exploration
# ------------------------------------------------------------------------------


attitude$Cluster = as.character(cutree(attitudeCluster, k = 6))


lClusterPlots = lapply(
   setdiff(colnames(attitude), 'Cluster'),
   function(cColumnName) {
      
      ggplot(attitude) + 
         geom_boxplot(
            aes_string(
               x = 'Cluster', 
               y = cColumnName, 
               group = 'Cluster'
            )
         )
   }
)


do.call(
   'grid.arrange', 
   lClusterPlots
)


# Cleaning
# ------------------------------------------------------------------------------


rm(list = ls())


# Other types
# ------------------------------------------------------------------------------
# Fuzzy
# Density
# Overlapping
















# Classification - example
# ==============================================================================




# Exploring data
# ------------------------------------------------------------------------------
head(infert)
# ?infert
plot(infert)




# Running logistic regression
# Feel free to play with the arguments
# ------------------------------------------------------------------------------


# cautionary removal of prediction column in case you rerun it
# and mistakenly to get the prediction being used to predict
infert$prediction = NULL
infert$predictionprobability = NULL


infertClassification <- glm(
   case ~ ., 
   data = infert, 
   family = binomial()
)


summary(infertClassification)
# note that only induced and spontaneous are significant


infertClassification <- glm(
   case ~ induced+spontaneous, 
   data = infert, 
   family = binomial()
)


summary(infertClassification)


# Logistic regression results exploration
# ------------------------------------------------------------------------------


infert$predictionprobability = predict(
   infertClassification,
   newdata = infert,
   type = 'response'
)


infert$prediction = infert$predictionprobability > 0.5


ggplot(infert) + 
   geom_point(
      aes(
         x = predictionprobability, 
         y = factor(case)
      ), 
      position = position_jitter(height = 0.01)
   )


table(
   infert$prediction, 
   infert$case
)
# oveall accuracy isn't great
# but what if the problem statement was fraud detection? 149/204 fraudulent 
# transactions could be detected at the inconvenience of 16/44 genuine customers 


# Looking for the famous S shape
# ------------------------------------------------------------------------------


# Making some fake data
# ------------------------------------------------------------------------------
# Spontaneous will be broken into more than just 0, 1, 2 so that we have
# better resolution on the curve even thought you can't have 0.5 spontaneous
# abortions.
dtFakeDataset = data.frame(
   expand.grid(
      0:2, 
      (0:60)/30
   )
)
colnames(dtFakeDataset) = c('induced','spontaneous')
head(dtFakeDataset)


# predicting probabilities for the fake data
# ------------------------------------------------------------------------------
dtFakeDataset$predictionprobability = predict(
   infertClassification,
   newdata = dtFakeDataset,
   type = 'response'
)

 
# s shape plot
# ------------------------------------------------------------------------------
ggplot(
   dtFakeDataset[dtFakeDataset$induced == 0.00,]
) + 
   geom_line(
      aes(
         x = spontaneous, 
         y = predictionprobability
      )
   )
# fail


# making faker data to get the s shape
# ------------------------------------------------------------------------------
dtFakeDataset = data.frame(
   expand.grid(
      0:2, 
      (-600:600)/30
   )
)
colnames(dtFakeDataset) = c('induced','spontaneous')
head(dtFakeDataset)


# predicting probabilities for the faker data
# ------------------------------------------------------------------------------
dtFakeDataset$predictionprobability = predict(
   infertClassification,
   newdata = infert,
   type = 'response'
)



# s shape plot
# ------------------------------------------------------------------------------
ggplot(
   dtFakeDataset
) + 
   geom_line(
      aes(
         x = spontaneous, 
         y = predictionprobability
      )
   )


# Cleaning
# ------------------------------------------------------------------------------


rm(list = ls())








# Regression - example
# Disclaimer: Not a meteorologist. The formulation may not makes sense.
# ==============================================================================




# Exploring data
# ------------------------------------------------------------------------------


head(airquality)
# ?airquality


plot(
	airquality[, 
		c('Ozone','Solar.R','Wind','Temp')
	]
)




# Running linear regression
# Feel free to play with the arguments
# ------------------------------------------------------------------------------
lmAirquality = lm(
   Ozone ~ Solar.R + Wind + Temp, 
   data = airquality
)


summary(lmAirquality)
# what are the significant variables?




# Linear regression results exploration
# ------------------------------------------------------------------------------
airquality$PredictionOzone = predict(
   lmAirquality, 
   newdata = airquality
)
airquality$ErrorOzone = airquality$PredictionOzone  - airquality$Ozone 


plotPredictions1 = ggplot() + 
   geom_point(
   	data = airquality, 
   	aes(
   		x = Ozone, 
   		y = PredictionOzone
   	)
   ) + 
   geom_abline(
   	slope = 1, 
   	intercept = 0
   ) + 
   geom_vline(xintercept = 0) + 
   geom_hline(yintercept = 0) + 
   coord_fixed()


plotPredictions1 


plotWindError = ggplot() + 
   geom_point(
   	data = airquality, 
   	aes(
   		x = Wind, 
   		y = ErrorOzone
   	)
   ) +
   geom_hline(yintercept = 0)

plotTempError = ggplot() + 
   geom_point(
   	data = airquality, 
   	aes(
   		x = Temp, 
   		y = ErrorOzone
   	)
   ) + 
   geom_hline(yintercept = 0)

plotSolar.RError = ggplot() + 
   geom_point(
   	data = airquality, 
   	aes(
   		x = Solar.R, 
   		y = ErrorOzone
   	)
   ) + 
   geom_hline(yintercept = 0)

plotOzoneError = ggplot() + 
   geom_point(
   	data = airquality, 
   	aes(
   		x = Ozone, 
   		y = ErrorOzone
   	)
   ) + 
   geom_hline(yintercept = 0)


grid.arrange(
   plotWindError,
   plotTempError,
   plotSolar.RError,
   plotOzoneError,
   ncol = 2
)
# errors from a good linear regression should be uniformly spread 
# around 0 across all values of the variable. There should be no 
# pattern against any of the variables.
# Whatever pattern is observed, try to include it in the regression


# Therefore, running linear regression - second pass
# Feel free to play with the arguments
# ------------------------------------------------------------------------------
lmAirquality = lm(
   Ozone ~ Solar.R + Wind + Temp + I( Temp * Temp ) + I( Wind * Wind ), 
   data = airquality
)
summary(lmAirquality)




# Linear regression second pass results exploration
# ------------------------------------------------------------------------------
airquality$PredictionOzone = predict(
   lmAirquality, 
   newdata = airquality
)
airquality$ErrorOzone = airquality$PredictionOzone  - airquality$Ozone 


plotPredictions1 + 
   geom_point(
   	data = airquality, 
   	aes(
   		x = Ozone, 
   		y = PredictionOzone, 
   		color = '2'
   	)
   )


grid.arrange(
   plotWindError + 
      geom_point(
      	data = airquality, 
      	aes(
      		x = Wind, 
      		y = ErrorOzone, 
      		color = '2'
      	)
     ),
   plotTempError + 
      geom_point(
      	data = airquality, 
      	aes(
      		x = Temp,
      		y = ErrorOzone, 
      		color = '2'
      	)
      ),
   plotSolar.RError + 
      geom_point(
      	data = airquality,
      	aes(
      		x = Solar.R, 
      		y = ErrorOzone, 
      		color = '2'
      	)
      ),
   plotOzoneError + 
      geom_point(
      	data = airquality, 
      	aes(
      		x = Ozone, 
      		y = ErrorOzone, 
      		color = '2'
      	)
      ),
   ncol = 2
)