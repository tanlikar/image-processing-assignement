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
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 0.15, random_state = 1)

# Feature Scaling
from sklearn.preprocessing import StandardScaler
sc = StandardScaler()
#X_train = sc.fit_transform(X_train)
#X_test = sc.transform(X_test)

# Fitting Random Forest Classification to the Training set n_estimators = 1000, 
from sklearn.ensemble import RandomForestClassifier
classifier = RandomForestClassifier(criterion = 'entropy', random_state = 1)
#classifier.fit(X_train, y_train)

from sklearn.metrics import confusion_matrix

from sklearn.model_selection import KFold 
kf = KFold(n_splits=20, random_state=0, shuffle=True) 

from sklearn.model_selection import RepeatedKFold 
rkf = RepeatedKFold(n_splits=20, n_repeats = 10, random_state=0) 

from sklearn.model_selection import RandomizedSearchCV
# number of trees in random forest
n_estimators = [int(x) for x in np.linspace(start = 200, stop = 10000, num = 10)]
# number of features at every split
max_features = ['auto', 'sqrt']

# max depth
max_depth = [int(x) for x in np.linspace(100, 1000, num = 11)]
max_depth.append(None)

# create random grid
random_grid = {
 'n_estimators': n_estimators,
 'max_features': max_features,
 'max_depth': max_depth
 }

# Random search of parameters
rfc_random = RandomizedSearchCV(estimator = classifier, param_distributions = random_grid, n_iter = 100, cv = 3, verbose=2, random_state=0, n_jobs = -1)

# Fit the model
#rfc_random.fit(X_train, y_train)
# print results

#classifier.fit(X_train, y_train)
rfc_random.fit(X_train, y_train)

      
# Predicting the Test set results
#y_pred = classifier.predict(X_test)
print(rfc_random.best_params_ )      
#from sklearn.model_selection import cross_val_score
#score1 = cross_val_score(classifier, X, y, cv=2, scoring='accuracy')
#print(score1.mean())

# Making the Confusion Matrix
#from sklearn.metrics import confusion_matrix
#cm = confusion_matrix(y_test, y_pred)