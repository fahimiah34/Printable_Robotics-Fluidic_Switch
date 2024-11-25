clc
clear 
close all 

data = readtable('team-5-coffee-gripper-switch.csv');  

Time = (data{:,"Var1"}/1000) - 220; 
A = data{:,"Var2"}; 
B = data{:,"Var3"}; 
Q = data{:,"Var4"}; 

subplot(2,1,1)
plot(Time, A, 'r'); 
legend("A")
xlabel("Time (s)")
ylabel("Pressure at A (kPa)")
title("Pressure Comparison of A and Q")
hold on

subplot(2,1,2)
plot(Time, Q, 'g'); 
xlabel("Time (s)")
ylabel("Pressure at Q (kPa)")
legend("Q")


