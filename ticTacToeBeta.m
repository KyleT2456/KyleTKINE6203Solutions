clc
clear all
close all
disp('Welcome to my Tik Tak Toe Game. ')
willYouPlay = input('Input yes to play or no to exit: ', 's');
if strcmpi('yes', willYouPlay)
    gameboard = {1 2 3; 4 5 6; 7 8 9};
    disp(gameboard)
    disp('This Tic Tac Toe board has 9 possible places that')
    disp('the player or computer can play. As you can see above,')
    disp('movement options 1-9 exist. To play in row 1, column 1,')
    disp('for example, the player would enter the number 1.')
    disp('To play in row 1, column 2, the player would enter the number 2')
    understand = input('Type ready when you understand the instructions: ', 's')
    if strcmpi('ready', understand)
%         availableMoves = [1 2 3 4 5 6 7 8 9]
%         for i = 1:length(availableMoves)
        clc
        disp(gameboard)
    end
    move1= input('Select where you would like to play: ', 's')
    if strcmpi('1', move1)
        gameboard = {'X' 2 3; 4 5 6; 7 8 9}
    end
    if strcmpi('2', move1)
        gameboard = {1 'X' 3; 4 5 6; 7 8 9}
    end
    if strcmpi('3', move1)
        gameboard = {1 2 'X'; 4 5 6; 7 8 9}
    end
    if strcmpi('4', move1)
        gameboard = {1 2 3; 'X' 5 6; 7 8 9}
    end
    if strcmpi('5', move1)
        gameboard = {1 2 3; 4 'X' 6; 7 8 9} 
    end
    if strcmpi('6', move1)
        gameboard = {1 2 3; 4 5 'X'; 7 8 9} 
    end
    if strcmpi('7', move1)
        gameboard = {1 2 3; 4 5 6; 'X' 8 9} 
    end
    if strcmpi('8', move1)
        gameboard = {1 2 3; 4 5 6; 7 'X' 9} 
    end
    if strcmpi('9', move1)
        gameboard = {1 2 3; 4 5 6; 7 8 'X'}
    end
    disp(gameboard)
%     move2= input('Type go for the computer to take a turn: ', 's')
%     if strcmpi('go', move2)
        
else strcmpi('no', willYouPlay)
    disp('Goodbye. ')
end


