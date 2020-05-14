# Homework 2.1: Task 1c
# File: HW2_1_Task1c_TEAM218_winterri.py
# Date: 31 Jan 2019
# By: Ryan Winterhalter
#		winterri
# Section: 017
# Team: 218
#
# ELECTRONIC SIGNATURE
# Ryan Winterhalter
#
# The electronic signature above indicates that the script
# submitted for evaluation is my individual work, and I 
# have a general understanding of all aspects of its
# development and execution.
#
# A BRIEF DESCRIPTION OF WHAT THE SCRIPT OR FUNCTION DOES
# This program will ask for three input variables (particle velocity in ft/s,
# reference pressure in bars, and sound pressure level in dBs) and will
# convert the inputs to their proper units for calculations.  Then, the program
# will calculate and output the sound intensity in W/m^2.

velocity = float(input("Please input the particle velocity in ft/s: "))
pref = float(input("Please input the reference pressure in bars: "))
SPL = float(input("Please input the sound pressure level in dBs: "))

velocity_converted = velocity / 3.28084
pref_converted = pref * 100000

sound_intensity = (velocity_converted) * (pref_converted) * (pow(10, (SPL / 20)))

print("The sound intensity in W/m^2 with the given inputs is: " + str(sound_intensity))
