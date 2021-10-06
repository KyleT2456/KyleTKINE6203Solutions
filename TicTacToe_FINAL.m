% This is a computer game of Tic Tac Toe that I created. This particular
% game is player vs. computer and has the capacity to declare the
% player the winner, the computer the winner, or a tie. The gameboard is a 3x3 matrix, labeled
% 1-9. The code first asks the user if they would like to play, to which
% the user inputs "yes" or "no". If the user enters "no" then the game
% ends. If the user enters "yes", then the player will be given the first
% chance to move in any one of spaces 1-9. The computer will then generate
% a move and the new updated gameboard will be displayed. The player will
% then be prompted again to select where they'd like to play. This cycle
% will repeat until a winner is declared based on 3 X's in a row for
% the player, 3 O's in a row for the computer, or all spots being filled.
% The player will be asked if they'd like to play again and they can play
% as many times in a row as they say "yes." If they say "no" then the code
% will end.
clc
clear all 
playAgain = true
close all
disp('Welcome to my Tik Tak Toe Game. ')
willYouPlay = input('Input yes to play or no to exit: ', 's');
if strcmpi('yes', willYouPlay)
    while playAgain == true
    gameboard = {1 2 3; 4 5 6; 7 8 9};
    disp(gameboard)
    disp('This Tic Tac Toe board has 9 possible places that')
    disp('the player or computer can play. As you can see above,')
    disp('movement options 1-9 exist. To play in row 1, column 1,')
    disp('for example, the player would enter the number 1.')
    disp('To play in row 1, column 2, the player would enter the number 2.')
    disp('Lastly, you will have an X gamepiece and the computer will have')
    disp('an O gamepiece.')

understand = input('Type ready when you understand the instructions: ', 's')
    if strcmpi('ready', understand)
        clc
    end
    gamePiece = {'X'}
    disp(gameboard)
    availableMoves = [1 2 3 4 5 6 7 8 9]
    for i = (1:length(availableMoves))
        move1= input('Select where you would like to play: ', 's')    
if strcmpi('1', move1)
    gameboard{1,1} = ('X')
    availableMoves(availableMoves == 1) = []
end
if strcmpi('2', move1)
    gameboard{1,2} = ('X')
    availableMoves(availableMoves == 2) = []
end
if strcmpi('3', move1)
    gameboard{1,3} = ('X')
    availableMoves(availableMoves == 3) = []
end
if strcmpi('4', move1)
    gameboard{2,1} = ('X')
    availableMoves(availableMoves == 4) = []
end
if strcmpi('5', move1)
    gameboard{2,2} = ('X');
    availableMoves(availableMoves == 5) = []
end
if strcmpi('6', move1)
    gameboard{2,3} = ('X')
    availableMoves(availableMoves == 6) = []
end
if strcmpi('7', move1)
    gameboard{3,1} = ('X')
    availableMoves(availableMoves == 7) = []
end
if strcmpi('8', move1)
    gameboard{3,2} = ('X')
    availableMoves(availableMoves == 8) = []
end
if strcmpi('9', move1)
    gameboard{3,3} = ('X')
    availableMoves(availableMoves == 9) = []
end

if gameboard{1,1} == gameboard{1,2} && gameboard{1,2} == gameboard{1,3}
    if strcmpi(gameboard{1,2}, gamePiece{1,1})
                    disp('You''ve Won')
                    break
    else 
                    disp('Computer Won')
            break
    end
end
            if gameboard{2,1} == gameboard{2,2} && gameboard{2,2} == gameboard{2,3}
                if strcmpi(gameboard{2,2}, gamePiece{1,1})
                    disp('You''ve Won')
                    break
                else 
                    disp('Computer Won')
                    break
                end
            end
                if gameboard{3,1} == gameboard{3,2} && gameboard{3,2} == gameboard{3,3}
                    if strcmpi(gameboard{3,2}, gamePiece{1,1})
                    disp('You''ve Won')
                    break
                else 
                    disp('Computer Won')
                    break
                    end
                end
                    if gameboard{1,1} == gameboard{2,1} && gameboard{2,1} == gameboard{3,1}
                        if strcmpi(gameboard{2,1}, gamePiece{1,1})
                    disp('You''ve Won')
                    break
                else 
                    disp('Computer Won')
                        break
                        end
                    end
                            if gameboard{1,2} == gameboard{2,2} && gameboard{2,2} == gameboard{3,2}
                                if strcmpi(gameboard{2,2}, gamePiece{1,1})
                    disp('You''ve Won')
                    break
                else 
                    disp('Computer Won')
                        break
                                end
                            end
                                if gameboard{1,3} == gameboard{2,3} && gameboard{2,3} == gameboard{3,3}
                                    if strcmpi(gameboard{2,3}, gamePiece{1,1})
                    disp('You''ve Won')
                    break
                else 
                    disp('Computer Won')
                        break
                                    end
                                end
                                    if gameboard{1,1} == gameboard{2,2} && gameboard{2,2} == gameboard{3,3}
                                        if strcmpi(gameboard{2,2}, gamePiece{1,1})
                    disp('You''ve Won')
                    break
                else 
                    disp('Computer Won')
                        break
                                        end
                                    end
                                        if gameboard{3,1} == gameboard{2,2} && gameboard{2,2} == gameboard{1,3}
                                            if strcmpi(gameboard{2,2}, gamePiece{1,1})
                    disp('You''ve Won')
                    break
                else 
                    disp('Computer Won')
                        break
                                            end
                                        end
               checkTie = isempty(availableMoves)
               if checkTie == true
                   disp('Tie')
                   break
               end
                                       
  
disp(gameboard)
compmove1 = availableMoves(1)
if compmove1 == 1
    gameboard{1,1} = ('O')
    availableMoves(availableMoves == 1) = []
end
if compmove1 == 2
    gameboard{1,2} = ('O')
    availableMoves(availableMoves == 2) = []
end
if compmove1 == 3
    gameboard{1,3} = ('O')
    availableMoves(availableMoves == 3) = []
end
if compmove1 == 4
    gameboard{2,1} = ('O')
    availableMoves(availableMoves == 4) = []
end
if compmove1 == 5
    gameboard{2,2} = ('O')
    availableMoves(1) = []
    availableMoves(availableMoves == 5) = []
end
if compmove1 == 6
    gameboard{2,3} = ('O')
    availableMoves(availableMoves == 6) = []
end
if compmove1 == 7
    gameboard{3,1} = ('O')
    availableMoves(availableMoves == 7) = []
end
if compmove1 == 8
    gameboard{3,2} = ('O')
    availableMoves(availableMoves == 8) = []
end
if compmove1 == 9
    gameboard{3,3} = ('O')
    availableMoves(availableMoves == 9) = []
end

if gameboard{1,1} == gameboard{1,2} && gameboard{1,2} == gameboard{1,3}
    if strcmpi(gameboard{1,2}, gamePiece{1,1})
                    disp('You''ve Won')
    else 
                    disp('Computer Won')
            break
    end
end
            if gameboard{2,1} == gameboard{2,2} && gameboard{2,2} == gameboard{2,3}
                if strcmpi(gameboard{2,2}, gamePiece{1,1})
                    disp('You''ve Won')
                    break
                else 
                    disp('Computer Won')
                    break
                end
            end
                if gameboard{3,1} == gameboard{3,2} && gameboard{3,2} == gameboard{3,3}
                    if strcmpi(gameboard{3,2}, gamePiece{1,1})
                    disp('You''ve Won')
                    break
                else 
                    disp('Computer Won')
                    break
                    end
                end
                    if gameboard{1,1} == gameboard{2,1} && gameboard{2,1} == gameboard{3,1}
                        if strcmpi(gameboard{2,1}, gamePiece{1,1})
                    disp('You''ve Won')
                    break
                else 
                    disp('Computer Won')
                        break
                        end
                    end
                            if gameboard{1,2} == gameboard{2,2} && gameboard{2,2} == gameboard{3,2}
                                if strcmpi(gameboard{2,2}, gamePiece{1,1})
                    disp('You''ve Won')
                    break
                else 
                    disp('Computer Won')
                        break
                                end
                            end
                                if gameboard{1,3} == gameboard{2,3} && gameboard{2,3} == gameboard{3,3}
                                    if strcmpi(gameboard{2,3}, gamePiece{1,1})
                    disp('You''ve Won')
                    break
                else 
                    disp('Computer Won')
                        break
                                    end
                                end
                                    if gameboard{1,1} == gameboard{2,2} && gameboard{2,2} == gameboard{3,3}
                                        if strcmpi(gameboard{2,2}, gamePiece{1,1})
                    disp('You''ve Won')
                    break
                else 
                    disp('Computer Won')
                        break
                                        end
                                    end
                                        if gameboard{3,1} == gameboard{2,2} && gameboard{2,2} == gameboard{1,3}
                                            if strcmpi(gameboard{2,2}, gamePiece{1,1})
                    disp('You''ve Won')
                    break
                else 
                    disp('Computer Won')
                        break
                                            end
                                        end
                                        checkTie = isempty(availableMoves)
               if checkTie == true
                   disp('Tie')
                   break
               end
                                          
    end


    playAgain = input('Would you like to play again? Input yes or no: ','s')
    if strcmpi('yes', playAgain)
        playAgain = true;
    else
        playAgain = false
        disp('Goodbye ')
        break
    end
    end
else
    disp('Goodbye ')
end
