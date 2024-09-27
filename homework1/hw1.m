% Author Name: Noah Yamanaka
% Email: yamana16@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 1
% Date: 9/ /2024

%Task 1

radius = 5; %Radius of the circle

area = radius * radius * pi; % Calculates area (pi * r^2)

circumference = 2 * pi * radius; % Calculates circumference (2 * pi * r)

%Prints results of (in order of top to bottom) radius, area, and circumference. 
fprintf("Circle with a radius of 5:"); 
fprintf("area: %f%n ", area);
fprintf("circumference: %f%n ", circumference);

%Task 2

%Gets the temperature in °C from user's input
tempIn = input("\nEnter a temperature(°C): ");
%Takes the user's input in °C and converts it to °F
tempF = (tempIn * 9/5) + 32;

%Prints the temperature in °F
fprintf("The current temperature in °F is: %f%n", tempF);

%If the temperature (°F) is over 100°,
if tempF > 100
    %Prints "It's a hot day!"
    fprintf("It's a hot day!");
%Else nothing happens and program moves to Task 3
end

%Task 3

apple = 2.5; %Assigns price of apple
milk = 1.5; %Assigns price of milk
honey = 10; %Assigns price of honey
eggs = 15; % Assigns price of eggs

appleIn = input("How many apples would you like? ");
%Gets how many apples the user wants
milkIn = input("How many liters of milk would you like? ");
%Gets how many liters of milk the user wants
honeyIn = input("How many ounces of honey would you like? ");
%Gets how many ounces of honey the user wants
eggsIn = input("How many singular eggs would you like? ");
%Gets how many eggs the user wants

appleP = times(apple, appleIn); %Gets the total price of the apples
milkP = times(milk, milkIn); %Gets the total price of the milk
honeyP = times(honey, honeyIn); %Gets the total price of honey
eggsP = times(eggs, eggsIn); %Gets the total price of eggs

total = appleP + milkP + honeyP + eggsP; %Gets the sum of every food item's total price

%If the total is less than 0, Task 3 stops and goes to Task 4
if total < 0
    fprintf("You sneaky beaky, you tried to exploit");
else
%Else, tells user cost beofre discount
    fprintf("Your supplies cost: %f%n", total);
end

if total > 50 %If total is over 50, then it applies a %10 discount and shows the user the discounted price
    total = times(total, 0.9);
    fprintf("You get a discount! New total: %f%n", total);
end

%Task 4

answer = randi([1 100]); %generates a random number from 1 - 100
guess = input("Enter a number (1 - 100): "); %Gets the user's guess
count = 1; %Sets the total amount of attempts to 1

% While the guess is not equal to the random number, the code inside will
% repeat so long as quess does not equal the answer.
while guess ~= answer
    %If the answer is more than the guess, tells the user that their input
    %was too low.
    if answer > guess
        fprintf("Guess is too low\n");
    else
    %Else, it would be too high and tells the user so.
        fprintf("Guess is too high\n");
    end
    %Tells the user to try a different guess from 1 - 100.
        guess = input("Enter a number (1 - 100): ");
        %Updates the count and increases it by 1.
        count = count + 1;
end
%This code will trigger when the correct answer is input by the user.
%The message will tell the user that they guessed correctly and how many
%guesses they did.
fprintf("You got the correct answer! It took you %f%n tries!", count);


