# DOA-using-Genetic-Algorithm
This repo contains the code for calculating the  Far feild Direction of Arrival using the Genetic Algorithm with a uniform linear array. Direction of arrival is a  problem of estimation of amplitude and the angle of elevation of the targets. The main file is GA.m which calls calc for calculating the values recieved at the uniform linear array sensos. whereas, the cost calculates the error between actual values recieved on the sensors and the estimated values through Genetic algorithm. Children.m produces new offsprings of chromosomes based on the two best chromosomes of the previous genration.
In matlab you just have to run GA.m that will first calsulate the values  recieved on the sensor and then  based on this value Genetic Algorithm will find the angles that were supposed in the first step. 
