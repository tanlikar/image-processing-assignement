# Random Forest Classification

# Importing the libraries
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import statistics as st

dataset = pd.read_excel('imageDataDay1new.xlsx', index_col=None, header=0)
#X = dataset.iloc[:, [0,1,2,6,7,8]].values
X = dataset.iloc[:, 0:4].values
y = dataset.iloc[:, 12].values

from sklearn import preprocessing
from sklearn import utils
lab_enc = preprocessing.LabelEncoder()
y = lab_enc.fit_transform(y)


# Feature Scaling
from sklearn.preprocessing import StandardScaler
sc = StandardScaler()
#X_train = sc.fit_transform(X_train)
#X_test = sc.transform(X_test)

# Fitting Random Forest Classification to the Training set
from sklearn.ensemble import RandomForestClassifier
classifier = RandomForestClassifier(n_estimators= 750, criterion = 'entropy', random_state= 1)
#classifier.fit(X_train, y_train)

from sklearn.metrics import confusion_matrix

from sklearn.model_selection import KFold 
kf = KFold(n_splits=5, random_state=0, shuffle=True) 

#from sklearn.model_selection import RepeatedKFold 
#rkf = RepeatedKFold(n_splits=5, n_repeats = 10, random_state=0) 

score=[]
cm1 = []
y_test_1 = []
y_pred_1 = []
from sklearn.metrics import accuracy_score
for train_index, test_index in kf.split(X):
      print("Train:", train_index, "Validation:",test_index)
      X_train, X_test = X[train_index], X[test_index] 
      y_train, y_test = y[train_index], y[test_index]
      classifier.fit(X_train, y_train)
      y_pred = classifier.predict(X_test)
      #score.append(accuracy_score(y_test, y_pred, normalize=True))
      score.append(classifier.score(X_test,y_test))
      cm1.append(confusion_matrix(y_test, y_pred))
      y_test_1.append(y_test)
      y_pred_1.append(y_pred)
      
# Predicting the Test set results
#y_pred = classifier.predict(X_test)
      
print(st.mean(score))
#from sklearn.model_selection import cross_val_score
#score1 = cross_val_score(classifier, X, y, cv=2, scoring='accuracy')
#print(score1.mean())

# Making the Confusion Matrix
#from sklearn.metrics import confusion_matrix
#cm = confusion_matrix(y_test, y_pred)