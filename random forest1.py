# Random Forest Classification

# Importing the libraries
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import statistics as st

dataset = pd.read_excel('imageData.xlsx', index_col=None, header=None)
#X = dataset.iloc[:, [0,1,2,6,7,8]].values
X = dataset.iloc[:, 3:6].values
y = dataset.iloc[:, 12].values

from sklearn import preprocessing
from sklearn import utils
lab_enc = preprocessing.LabelEncoder()
y = lab_enc.fit_transform(y)

# Splitting the dataset into the Training set and Test set
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 0.20, random_state = 5)


# Fitting Random Forest Classification to the Training set
from sklearn.ensemble import RandomForestClassifier
classifier = RandomForestClassifier(n_estimators = 1000, criterion = 'entropy', random_state = 1, oob_score=True)
#classifier.fit(X_train, y_train)

classifier.fit(X_train, y_train)
print('Score: ', classifier.score(X_train, y_train))
print(classifier.oob_score_)
print('Score: ', classifier.score(X_test, y_test))