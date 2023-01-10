% Represents a move in the game
move(rock).
move(paper).
move(scissors).

% Define the rules of the game
wins(rock, scissors).
wins(scissors, paper).
wins(paper, rock).

% Play the game
play(Player1, Player2) :-
    move(Player1),
    move(Player2),
    ( wins(Player1, Player2)
    -> write('Player 1 wins!')
    ; wins(Player2, Player1)
    -> write('Player 2 wins!')
    ; write('It''s a draw!')
    ).


% To play the game, you can use queries like this:

% play(rock, paper).
% Player 2 wins!

% play(scissors, scissors).
% It's a draw!


% or Stdin Inputs using IDE
% play(rock, paper).
