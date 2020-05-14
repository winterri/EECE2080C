% Homework 4.2: Task 1
% File: HW4_2_Task1_TEAM218_winterri.m
% Date: 13 Feb 2019
% By: Ryan Winterhalter
%		winterri
% Section: 017
% Team: 218
%
% ELECTRONIC SIGNATURE
% Ryan Winterhalter
%
% The electronic signature above indicates that the script
% submitted for evaluation is my individual work, and I 
% have a general understanding of all aspects of its
% development and execution.
%
% A BRIEF DESCRIPTION OF WHAT THE SCRIPT OR FUNCTION DOES
% This program is a calculator for, given the inputs of age, weight,
% gender, and heart rate, the number of calories burned per hour of working
% out and the level of exercise of the subject.

double age;
double weight;
string gender;
double hr;
double caloriesburned;
double maxhr;

age = input("What is the age: ");
weight = input("What is the weight: ");
hr = input("What is the heartrate: ");

gender = input("What is the gender: ", 's');

if or(gender == "male", gender == "Male")
    caloriesburned = (60.0 / 4.184) * (age * 0.2017 + weight * 0.09036 + hr * 0.6309 - 55.0969);
    maxhr = 205.8 - (0.685 * age);
    if ((hr) < (0.6 * maxhr))
        disp("The calories burned per hour is ");
        disp(caloriesburned);
        disp("The intensity of the workout is below level");
    elseif ((hr < (0.7 * maxhr)) && (hr >= (0.6 * maxhr)))
        disp("The calories burned per hour is ");
        disp(caloriesburned);
        disp("The intensity of the workout is weight loss");
    elseif ((hr < (0.8 * maxhr)) && (hr >= 0.7 * maxhr))
        disp("The calories burned per hour is: ");
        disp(caloriesburned);
        disp("The intensity of the workout is cardio");
    elseif ((hr < (0.9 * maxhr)) && (hr >= 0.8 * maxhr))
        disp("The calories burned per hour is: ");
        disp(caloriesburned);
        disp("The intensity of the workout is anaerobic (hardcore)");
    else
        disp("The calories burned per hour is: ");
        disp(caloriesburned);
        disp("The intensity of the workout is above level");
    end
elseif or(gender == "female", gender == "Female")
    caloriesburned = (60.0 / 4.184) * (age * 0.074 -weight * 0.05741 + hr * 0.4472 - 20.4022);
    maxhr = 206.0 - (0.88 * age);
    if ((hr) < (0.6 * maxhr))
        disp("The calories burned per hour is ");
        disp(caloriesburned);
        disp("The intensity of the workout is below level");
    elseif ((hr < (0.7 * maxhr)) && (hr >= (0.6 * maxhr)))
        disp("The calories burned per hour is ");
        disp(caloriesburned);
        disp("The intensity of the workout is weight loss");
    elseif ((hr < (0.8 * maxhr)) && (hr >= 0.7 * maxhr))
        disp("The calories burned per hour is: ");
        disp(caloriesburned);
        disp("The intensity of the workout is cardio");
    elseif ((hr < (0.9 * maxhr)) && (hr >= 0.8 * maxhr))
        disp("The calories burned per hour is: ");
        disp(caloriesburned);
        disp("The intensity of the workout is anaerobic (hardcore)");
    else
        disp("The calories burned per hour is: ");
        disp(caloriesburned);
        disp("The intensity of the workout is above level");
    end
else
    disp("Gender could not be understood");
end