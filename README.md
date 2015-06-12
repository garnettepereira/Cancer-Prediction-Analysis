# Cancer-Prediction-Project

ABOUT DATASET:

URL of original dataset: https://vincentarelbundock.github.io/Rdatasets/csv/survival/cancer.csv

The data set North Central Cancer Treatment Group (NCCTG) Lung Cancer Data describes survival in
patients with advanced lung cancer from the North Central Cancer Treatment Group.
Performance scores rate how well the patient can perform usual daily activities. Size of
the original dataset is 229 rows and 10 columns.

For the purpose of Prediction, I modified this dataset to create training data for the Google Prediction API.
The URL of this new dataset in Google Cloud Storage is "http://storage.googleapis.com/lungcancer/cancer.csv". This is currently a Public Link.

The columns of the dataset are as follows:

1. Eastern Cooperative Oncology Group (ECOG) performance score

2. Age of the patient

3. Sex of the patient

4. Karnofsky performance score (bad=0 and good=100) as rated by the physician.

The ECOG performance status is a scale used to assess how a patient's disease is progressing, assess how the disease affects the daily living abilities of the patient, and determine appropriate treatment and prognosis. 

The below are the various grades of the ECOG performance score:

Grade 0:  Fully active, able to carry on all pre-disease performance without restriction.

Grade 1: Restricted in physically strenuous activity but ambulatory and able to carry out work of a light or sedentary nature, e.g., light house work, office work.

Grade 2: Ambulatory and capable of all selfcare but unable to carry out any work activities. Up and about more than 50% of waking hours.

Grade 3: Capable of only limited selfcare, confined to bed or chair more than 50% of waking hours.

Grade 4: Completely disabled. Cannot carry on any selfcare. Totally confined to bed or chair.

Grade 5: Dead.

In this training dataset, I have considered only the first 4 grades of the ECOG Performance Score, that is, from 0-3.

GOOGLE PROJECT INFORMATION:

Project Name: Cancer Patient Performance

Project ID: stunning-vertex-97218

Project Number: 813553865193

GOOGLE CLOUD STORAGE:

Created a bucket named "lungcancer" in the project and uploaded the csv file "cancer.csv" to it.

GOOGLE PREDICTION API:

After creation of the bucket, I used the APIs Explorer to run the below Prediction API methods:

1. prediction.trainedmodels.insert - To train the model (I passed model id as "lungcancer").

2. prediction.trainedmodels.get - To check the training status of the model.

3. prediction.trainedmodels.predict - To request a prediction from the trained model.

ABOUT R SCRIPT:

The gsutil tool is used to access the Google Cloud Storage from the command line. 
I installed it using the command "python C:\gsutil\gsutil\gsutil.py config -b" in Command prompt after installing Python 2.7.10 and downloading the gsutil file from "https://storage.googleapis.com/pub/gsutil.zip".

I have written a script in R to get the predictions from the model that I had built previously using the Google Prediction API.

The below are the steps followed in R:

1. In R, I have installed the required packages rjson and RCurl. 

2. I download the googlepredictionapi archived package from "https://code.google.com/p/google-prediction-api-r-client/downloads/list".

3. Change the working directory to the archived file's location.

4. Install the googlepredictionapi package.

5. Load the required libraries.

6. Make a training call to the prediction model in Google Prediction API.

7. Make a training call against training data stored locally as a CSV file.

8. Make prediction calls to the trained model to get accurate predictions.
