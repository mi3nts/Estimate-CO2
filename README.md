# Overview
This repository consists the data and code for estimating inhaled CO2 from the biometrics of a participant. The data and code involves:
- the latitude and longitude data and the corresponding code for visualizing the location, done using MATLAB.
- collecting, visualizing and cleaning the biometrics & CO2 data and finally constructing a DataFrame to apply machine learning model, done using Python. 

The subdirectories include:

- backend: This subdirectory has two key parts. First, code for making use of the EEG data. Converting the EEG data from time domain to frequency domain. Second, retreiving the Tobii, physiological responses and CO2 data and then matching the timestamp to create a single DataFrame.
- Location: This subdirectory consists the data and code for plotting the longitude and latitude of a participant riding a bicycle which was used in data collection. 

Description of each of the subdirectory, files and how to make use of it is below:
#### backend 
This subdirectory essentially consists of intial process of data retrieval, collection and cleaning to create a DataFrame to be implemented on a machine learning model. The Jupyter Notebook titled " EEG frequency 2021.ipynb" retrieves the EEG data from the .vhdr file and converts from time domain to frequency domain. The large dataset are in files named "2021_05_26","2021_06_09" and "2021_06_10" is not uploaded and is availabe in Zenodo (link at the very end). The DataFrame thus obtained is stored as pickle file "full_psds_for_2021.pkl". The "full_psds_for_2021.pkl" is made use in the Jupyter notebook titled " Bike Ride 2021 for CO2.ipynb" where the EEG, physiological, Tobii and CO2 datasets are merged and timestamp is matched. The final DataFrame created from this file is stored as a pickle file and titled as " full_df_2021_CO2.pkl" which consists of 2317 rows and 428 column which is cleaned and analyzed in the next part, in the Jupyter notebook titled "CO2 all features.ipynb".  

#### location
This subdirectory consists of the latitudes and longtitudes of the bike that was used in collection of data. A total of 4 trials was done. Each of the subdirectory consists of an excel file which has the values of latitudes and the longitudes and the corresponding code in MATLAB to plot the location.

#### other files 
The DataFrame that was used in building the machine learning model is stored as a pickle file titled "full_df_2021_CO2.pkl". This pickle file is used in the Jupyter notebook " CO2 all features.ipynb" where all the 329 features have been used for study. The other study which includes only the 9 physiological responses (or non-EEG) is done in the Jupyter notebook "CO2 Non-EEG.ipynb".

#### Citation

If the code and data was useful, then the please use the following citation:

`Ruwali S, Fernando B, Talebi S, Lary DJ. Estimate inhaled carbon dioxide using biometric variables of a participant.
https://github.com/mi3nts/Estimate-CO2, 2023`

__Bibtex__:
```
@misc{biometrics,
author={Ruwali,S. and Fernando, B.A. and Talebi, S. and Lary, D. J.},
title={Estimate Inhaled Carbon dioxide Using Biometric Variables of a Participant},
howpublished={https://github.com/mi3nts/Estimate-CO2},
year={2023},
}
```
The entire dataset and description is available in Zenodo:
