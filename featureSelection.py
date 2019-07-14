import pandas as pd
import numpy as np
data = pd.read_excel('imageDatanewTEST.xlsx', index_col=None, header=0)

X = data.iloc[:,0:12]  #independent columns
y = data.iloc[:,12]    #target column i.e price range

from sklearn import preprocessing
from sklearn import utils
lab_enc = preprocessing.LabelEncoder()
y = lab_enc.fit_transform(y)


from sklearn.ensemble import ExtraTreesClassifier
import matplotlib.pyplot as plt
model = ExtraTreesClassifier(n_estimators= 750, criterion = 'entropy', random_state= 1)
model.fit(X,y)
print(model.feature_importances_) #use inbuilt class feature_importances of tree based classifiers
#plot graph of feature importances for better visualization
feat_importances = pd.Series(model.feature_importances_, index=X.columns)
feat_importances.nlargest(12).plot(kind='barh')
plt.show()