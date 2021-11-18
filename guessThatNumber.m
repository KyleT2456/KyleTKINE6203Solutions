function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME: Kyle Thompson
%
%         DUE: November 18
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None 
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced 
    % BUG 3: Initially, no valid level selections were allowed. 
    %The OR logical operator, ||, was switched to AND logical operator, &&. 
    %This allowed the loop to be logically completed by any of the 
    %1-3 entries.     

fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner %BUG 1: This was the first error message when ran 
    %initially. MATLAB caught this mistake. Changed '=' operator to '==' 
    %since checking for equality here and not assigning a variable.                    

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest; % BUG 9: Error when selecting level 3, 
%"unrecognized function of variable 'advancedhighest'." Changed 
%advancedhighest to advancedHighest to match the previously created 
%variable from line 29.           

end

% randomly select secret number between 1 and highest for level of play

secretNumber = randi(highest); %BUG 6: Debugging of Bug 5 and 6 was 
%required to randomly assign a number between 1 and highest and 
%appropriately provide feedback on guess proximity to the secret number. 
%SecretNumber was always generated as the highest value for level of play. 
%I first tried removing the + 1, but this still allowed for zero to be 
%generated as a secret number. By switching to randi(highest), a random 
%integer is generated between 1 and the highest value for level of play.     

% initialize number of guesses and User_guess

numOfTries = 0; % BUG 8: After Bug 7 was fixed, I noticed that the number 
%of guesses was greater than it should be by a quantity of 1. Switched 
%numOfTries from 1 to 0. This fixed the bug where the number of tries to 
%complete the game overcounted by 1.

userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber % BUG 2: Second error message from MATLAB. 
    %Ended this while loop.

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
while userGuess < 1 || userGuess > highest % BUG 4: 10 as a data test case
    %returned the message 'Sorry, that is not a valid guess.' 
    %userGuess >= highest did not allow the highest number to be selected 
    %as a guess. Changed to userguess > highest.

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber % BUG 5: There was no conditional for a guess 
    %lower than the secret number. Changed > to < since this conditional 
    %is checking to see if the user guess is LESS than the secret number.

fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber, numOfTries); % BUG 7: fprintf assigned two signed integers 
%(%d), but only one was specified (secretNumber), which meant the number 
%of guesses (tries) was not displayed at the conclusion of the game. 
%numOfTries was added as the second signed integer.

fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');

end  % of guessing while loop

end % BUG 2: Resolve of second error message. Added this end to the while 
%userGuess ~= secretNumber loop.
% end of game
