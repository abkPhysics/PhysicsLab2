#!/usr/bin/python
from sklearn import datasets, linear_model
from pylab import *
import numpy as np

regr = linear_model.LinearRegression() #fit_intercept = False)


volts = np.array([750,1500,3000,6000])
x=np.log(volts)

y = charges = np.array([1.9,2.9,4.1,5.8])


#x=np.arange(0,10, .1)
#y= 2.34*x + np.random.randn(len(x)) 
x.shape = (len(x),1)
#plot(charges,volts)
print volts
print x
print charges

fit = regr.fit(x,y)
print fit.coef_
print fit.intercept_


ion()
clf()
#scatter(volts,charges)
#scatter(np.log(volts),charges)
scatter(volts,y)
px = np.arange(0.1,np.max(volts) + .1, .1)
plot(px, fit.coef_[0]*(np.log(px)) + fit.intercept_)
show()
