text_color = c_white

// Game Responses
play_message = "Play!"			// Game start message
win_message = "You win!"		// You win the game message
lose_message = "You lose."		// You lose the game message
retry_message = "Try again!"	// Wrong word, try again message

text = "Unpaused"

// Set Game States
enum game_states {
	play,
	pause,
	win,
	lose
}

// Set Initial Game State
game_state = game_states.play

// Pause the game
function game_pause()
{
	game_state = game_states.pause
	text = "Paused"
}

// Unpause the game
function game_unpause()
{
	game_state = game_states.play
	text = "Unpaused"
}

// Win the game
function game_win()
{
	game_state = game_states.win
}

// Lose the game
function game_lose()
{
	game_state = game_states.lose
}