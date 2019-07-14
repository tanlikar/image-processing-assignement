# Random Forest Classification

# Importing the libraries
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import statistics as st

dataset = pd.read_excel('imageDatanew.xlsx', index_col=None, header=0)
#X = dataset.iloc[:, [0,1,2,6,7,8]].values
#0:19 for day 1, 19: for day 2
#separate day prediction use 0,2,3,4,14
#combine dat prediction use [0,1,2,3,4,5,13]
X = dataset.iloc[:, [0,1,2,3,4,5,13]].values
y = dataset.iloc[:, 18].values

from sklearn import preprocessing
from sklearn import utils
lab_enc = preprocessing.LabelEncoder()
y = lab_enc.fit_transform(y)


# Feature Scaling
from sklearn.preprocessing import StandardScaler
sc = StandardScaler()


# Fitting Random Forest Classification to the Training set
from sklearn.ensemble import RandomForestClassifier
classifier = RandomForestClassifier(n_estimators= 500, criterion = 'entropy', random_state= 1)

from sklearn.naive_bayes import GaussianNB
classifierNB = GaussianNB()

from sklearn.linear_model import LogisticRegression
classifierLR = LogisticRegression(random_state = 1)


from sklearn.metrics import confusion_matrix

from sklearn.model_selection import KFold 
kf = KFold(n_splits=38, random_state=0, shuffle=False) 

score=[]
scoreNB = []

cmRF = []
cmNB = []

y_test_1 = []
y_test_NB1 = []

y_pred_1 = []
y_pred_NB1 = []

from sklearn.metrics import accuracy_score
for train_index, test_index in kf.split(X):
      print("Train:", train_index, "Validation:",test_index)
      X_train, X_test = X[train_index], X[test_index] 
      y_train, y_test = y[train_index], y[test_index]
      X_train = sc.fit_transform(X_train)
      X_test = sc.transform(X_test)

      classifier.fit(X_train, y_train)
      y_pred = classifier.predict(X_test)
      score.append(classifier.score(X_test,y_test))
      cmRF.append(confusion_matrix(y_test, y_pred))
      y_test_1.append(y_test)      
      y_pred_1.append(y_pred)
      
      classifierNB.fit(X_train, y_train)
      y_pred_NB = classifier.predict(X_test)
      scoreNB.append(classifier.score(X_test,y_test))
      cmNB.append(confusion_matrix(y_test, y_pred))
      y_test_NB1.append(y_test)      
      y_pred_NB1.append(y_pred)
      
      

print(st.mean(score))
print(st.mean(scoreNB))
