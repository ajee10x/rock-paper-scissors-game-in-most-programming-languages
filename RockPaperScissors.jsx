import React, { useState } from 'react';

// function to get the computer's move
function getComputerMove() {
  const move = Math.floor(Math.random() * 3) + 1; // generate a random number between 1 and 3
  if (move === 1) {
    return 'rock';
  } else if (move === 2) {
    return 'paper';
  } else {
    return 'scissors';
  }
}

// function to get the winner of the game
function getWinner(playerMove, computerMove) {
  if (playerMove === computerMove) {
    return 'draw';
  } else if (playerMove === 'rock' && computerMove === 'scissors') {
    return 'player';
  } else if (playerMove === 'paper' && computerMove === 'rock') {
    return 'player';
  } else if (playerMove === 'scissors' && computerMove === 'paper') {
    return 'player';
  } else {
    return 'computer';
  }
}

function Game() {
  const [playerMove, setPlayerMove] = useState(null);
  const [computerMove, setComputerMove] = useState(null);
  const [winner, setWinner] = useState(null);

  // function to handle the player's move
  function handleMove(move) {
    setPlayerMove(move);
    const computerMove = getComputerMove();
    setComputerMove(computerMove);
    const winner = getWinner(move, computerMove);
    setWinner(winner);
  }

  // function to reset the game
  function resetGame() {
    setPlayerMove(null);
    setComputerMove(null);
    setWinner(null);
  }

  return (
    <div>
      {winner === null ? (
        <div>
          <button onClick={() => handleMove('rock')}>Rock</button>
          <button onClick={() => handleMove('paper')}>Paper</button>
          <button onClick={() => handleMove('scissors')}>Scissors</button>
        </div>
      ) : (
        <div>
          <p>Player's move: {playerMove}</p>
          <p>Computer's move: {computerMove}</p>
          {winner === 'draw' ? (
            <p>It's a draw!</p>
          ) : (
            <p>{winner === 'player' ? 'You win!' : 'Computer wins!'}</p>
          )}
          <button onClick={resetGame}>Play again</button>
        </div>
      )}
    </div>
  );
}

export default Game;
