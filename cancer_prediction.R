# Install required packages
install.packages("rjson")
install.packages("RCurl")

# Download the googlepredictionapi archived package from https://code.google.com/p/google-prediction-api-r-client/downloads/list
# Set the working directory to the location of the archived directory
setwd("C:/Users/garnette.pereira/Desktop/Datarobot/")

# Install the googlepredictionapi package
install.packages("googlepredictionapi_0.1.tar.gz", repos=NULL, type="source")

# Load googlepredictionapi and other dependent libraries
library(rjson)
library(RCurl)
library(googlepredictionapi)

# Make a training call to the Prediction API against the data in Google Cloud Storage
my.model <- PredictionApiTrain(data="gs://lungcancer/cancer.csv")

# Make a training call against training data stored locally as a CSV file
my.model <- PredictionApiTrain(data="C:/Users/garnette.pereira/Desktop/Datarobot/cancer.csv", remote.file="gs://lungcancer/cancer.csv")

# Summary of the trained model
summary(my.model)

# Make a prediction call for the cancer data using the trained model
predict(my.model, c(49, "Female", 100))

# Make a prediction call for the cancer data using the trained model
predict(my.model, c(68, "Female", 70))

# Make a prediction call for the cancer data using the trained model
predict(my.model, c(70, "Male", 60))

# Make a prediction call for the cancer data using the trained model
predict(my.model, c(74, "Male", 50))