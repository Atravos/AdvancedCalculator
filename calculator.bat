@echo off
cls

:mainMenu
echo Main Menu
echo 1) go to Calculator
echo 2) exit

set /p option=Enter your selection then press enter:  
if %option%==1 goto classCalculator
if %option%==2 goto quit

echo Invalid selection
PAUSE
goto mainMenu
 
::this class is the main menu where I set up two options for the user to choose. If niether of the options are chose, the user will simply go  back to the mainMenu. Hunter Walker (03/09/2022)
:classCalculator
echo multiplication? type 1
echo division? type 2
echo subtraction? type 3
echo addition type 4

set /p option=Type the number of your selection then press enter:  
if %option%==1 goto class1
if %option%==2 goto class2
if %option%==3 goto class3
if %option%==4 goto class4
echo Invalid selection, try again
PAUSE 
goto classCalculator

::this class is the Calculator where the user can choose division, multiplication, addition, or subtraction. this will then take the user to a seperate class of either or. Hunter Walker (03/09/2022)
:class1

set /p firstNumber=Enter first number then press enter:  
set /p secondNumber=Enter second number then press enter:  

set /a result=%firstNumber%*%secondNumber%
echo the answer is:  %result%

echo going to end screen...
PAUSE
goto classEnding

::this is the multiplication class where the user will input two seperate numbers and the code will work its magic. Hunter Walker (03/09/2022)
:class2

set /p firstNumber=Enter first number then press enter:  
set /p secondNumber=Enter second number then press enter:  

set /a result=%firstNumber%/%secondNumber%
echo the answer is: %result%

echo going to end screen...
PAUSE
goto classEnding

::this is the division class where the user will input two seperate numbers and the code will once again work its magic. Hunter Walker (03/09/2022)
:class3

set /p firstNumber=Enter first number then press enter:  
set /p secondNumber=Enter second number then press enter:  

set /a result=%firstNumber%-%secondNumber%
echo the answer is:  %result%

echo going to end screen...
PAUSE
goto classEnding

::just like before this code is getting a prompt from the user and is then taking those results and subtracting them, making this the subtractionClass... go figure! Hunter Walker (03/09/2022)
:class4

set /p firstNumber=Enter first number then press enter:  
set /p secondNumber=Enter second number then press enter:  

set /a result=%firstNumber%+%secondNumber%
echo the answer is:  %result%

echo going to end screen... or maybe crashing
PAUSE
goto classEnding

::this class is taking the user input as well and then adding the numbers in question together. Hunter Walker (03/09/2022)
:classEnding

echo End Screen!
echo 1) go back to Calculator
echo 2) exit

set /p option=Enter your selection then press enter:  
if %option%==1 goto classCalculator
if %option%==2 goto quit

echo Invalid selection, try again
PAUSE
goto classEnding

::this is the ending class that I made because I wanted the user to be able to decide to go back to the calculator after the number problem was solved. Hunter Walker (03/09/2022)
PAUSE
cls
