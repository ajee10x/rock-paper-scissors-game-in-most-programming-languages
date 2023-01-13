% create a figure window
figure;

% create buttons for the player's selection
uicontrol('Style', 'pushbutton', 'String', 'Rock',...
    'Position', [10,10,80,30],...
    'Callback', @rock_callback);
uicontrol('Style', 'pushbutton', 'String', 'Paper',...
    'Position', [10,50,80,30],...
    'Callback', @paper_callback);
uicontrol('Style', 'pushbutton', 'String', 'Scissors',...
    'Position', [10,90,80,30],...
    'Callback', @scissors_callback);

% create text field to display results
result_text = uicontrol('Style', 'text', 'String', '',...
    'Position', [100,10,80,30]);

% callback function for rock button
function rock_callback(~, ~)
    computer_choice = randi([1,3]);
    if computer_choice == 1
        set(result_text, 'String', 'Tie');
    elseif computer_choice == 2
        set(result_text, 'String', 'You Lose');
    elseif computer_choice == 3
        set(result_text, 'String', 'You Win');
    end
end

% callback function for paper button
function paper_callback(~, ~)
    computer_choice = randi([1,3]);
    if computer_choice == 1
        set(result_text, 'String', 'You Win');
    elseif computer_choice == 2
        set(result_text, 'String', 'Tie');
    elseif computer_choice == 3
        set(result_text, 'String', 'You Lose');
    end
end

% callback function for scissors button
function scissors_callback(~, ~)
    computer_choice = randi([1,3]);
    if computer_choice == 1
        set(result_text, 'String', 'You Lose');
    elseif computer_choice == 2
        set(result_text, 'String', 'You Win');
    elseif computer_choice == 3
        set(result_text, 'String', 'Tie');
    end
end

% To create a Rock-Paper-Scissors game in MATLAB, you can use the built-in functions to create a user interface and control flow.
% 1. Create a figure window using the figure() function.
% 2. Create buttons for the player to make their selection using the uicontrol() function.
% 3. Use the callback function to determine the winner and display the result using the text() function.
% 4. Use the while loop for repeat the game until the player quits.
% You can also use the random number generator to simulate the computer's selection, and use if-else statements to determine the winner.

