##Change Directory Into Project Folder
cd C:/Users/"Rakyan Prajnagra"/Documents/"Data Engineer"/BigQuery-Taxi-Fare-Prediction-Project

#Save The Directory
export BASE_DIR=$(pwd)

##Create a Bucket on Cloud Storage
echo "Creating Bucket"
gcloud storage buckets create gs://ml-fare-predictions

#Export File From Local To Cloud Storage That We Created Before
echo "Export File To Cloud Storage"
gsutil cp client_prediction_data.csv gs://ml-fare-predictions