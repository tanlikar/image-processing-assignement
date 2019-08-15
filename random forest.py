# Random Forest Classification

# Importing the libraries
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import statistics as st

#dataset = pd.read_excel('imageDatanew.xlsx', index_col=None, header=0)
dataset = pd.read_excel('imageDatanewTEST.xlsx', index_col=None, header=0)


X = dataset.iloc[:,[0,1,2,3,4,5,7]].values #both day
#X = dataset.iloc[:19,[0,2,3,4]].values #day 1 only
#X = dataset.iloc[19:,[0,2,3,4,8]].values #day 2 only
y = dataset.iloc[:, 12].values


#due to y are floating value, need to encode the y value
#0 = control, 1 = 0.25, 2= 0.5, 3= 1.0, 4=2.0, 5=4.0, 6=8.0
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

# Fitting Decision Tree Classification to the Training set
from sklearn.tree import DecisionTreeClassifier
classifierDT = DecisionTreeClassifier(criterion = 'entropy', random_state = 1)


from sklearn.metrics import confusion_matrix

#Initialize K-Fold of 19-Fold
from sklearn.model_selection import KFold 
kf = KFold(n_splits=19, random_state=0, shuffle=True) 

score=[]
scoreNB = []
scoreDT = []

cmRF = []
cmNB = []
cmDT = []

y_test_1 = []
y_test_NB1 = []
y_test_DT1 = []

y_pred_1 = []
y_pred_NB1 = []
y_pred_DT1 = []

#perform k-fold validation
from sklearn.metrics import accuracy_score
for train_index, test_index in kf.split(X):
      print("Train:", train_index, "Validation:",test_index)
      X_train, X_test = X[train_index], X[test_index] 
      y_train, y_test = y[train_index], y[test_index]

      #normalize the data (feature scaling)
      X_train = sc.fit_transform(X_train) 
      X_test = sc.transform(X_test)

      classifier.fit(X_train, y_train)       #train the model
      y_pred = classifier.predict(X_test)	 #Test the model
      score.append(classifier.score(X_test,y_test)) #save the accuracy
      cmRF.append(confusion_matrix(y_test, y_pred)) #save the confusion matrix
      y_test_1.append(y_test)      #save the prediction value
      y_pred_1.append(y_pred)      #save the real value
      
      classifierNB.fit(X_train, y_train)
      y_pred_NB = classifier.predict(X_test)
      scoreNB.append(classifier.score(X_test,y_test))
      cmNB.append(confusion_matrix(y_test, y_pred))
      y_test_NB1.append(y_test)      
      y_pred_NB1.append(y_pred)
      
      classifierDT.fit(X_train, y_train)
      y_pred_DT = classifier.predict(X_test)
      scoreDT.append(classifier.score(X_test,y_test))
      cmDT.append(confusion_matrix(y_test, y_pred))
      y_test_DT1.append(y_test)      
      y_pred_DT1.append(y_pred)
      
      

print("Random Forest Accuracy: ", st.mean(score))
print("Naive Bayes Accuracy: ",st.mean(scoreNB))
print("Decision Tree Accuracy: ",st.mean(scoreDT))
