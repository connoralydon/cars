#! /bin/bash
#cars.#!/bin/sh

while [ "$num" != 3 ]
do
	echo "[1] Type the number 1 to enter a new car."
	echo "[2] Type the number 2 to display the list of cars."
	echo "[3] Type the number 3 to quit and exit the program."
	echo "Please type the number of the option you wish to select: "
	read -r num
	 case "$num" in
		 "1")
			 echo "Enter the car year: "
			 read -r year
			 echo "Enter the car make: "
			 read -r make
			 echo "Enter the car model: "
			 read -r model
			 NEW="${year}:${make}:${model}"
			 echo  "$NEW" >> my_old_cars.txt
			 ;;
		 "2")
	 		 sort  My_old_cars.txt;;
		 "3")
			 echo "Exiting, thank you for using the program";;
	 	 *)
	   		 echo "Please type 1, 2, or 3";;
	 esac
done
