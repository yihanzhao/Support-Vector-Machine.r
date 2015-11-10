# Support-Vector-Machine.r
I will use support vector approaches in order to predict whether a given car gets high of low gas mileage based on the Auto data set.
(1) create a binary variable that takes on a 1 for cars with gas mileage above the median, and a 0 for cars with gas mileage. 
(2) fit a support vector classifier to the data with various values of cost, in order to predict whether a car gets high or low gas mileage. Report the cross-validation errors associated with different values of this parameter. 
we can find the error reaches the minimum value when the cost equals to 100.
(3) use SVMs with radial and polynomial basis kernels, with different values of gamma and degree and cost. 
For radial SVMs, the best parameters can be obtained when cost equals to 10 and gamma equals to 0.1, and the minimum error is 0.035.
For polynomial SVMs, the best parameters can be obtained when cost equals to 100 and degree equals to 1, and the minimum error is 0.075.
