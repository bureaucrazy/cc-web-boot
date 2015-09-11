// promptAndPlay
//
// Prompts the user to enter a song.
// Plays the entered song.
// Repeats when the song is complete.
//
var promptAndPlay = function() {
  var songString = prompt("Welcome to JukeBox!\nEnter a song to play:");
  if (songString.trim() === '' || songString === null) { return null }
  var song = parseSong(songString);
  playButtonState();
  playSong(song, 500, playButtonState);
};

var playButtonState = function(){
  if ($('#play').attr('playing') === 'false') {
    $('#play').attr('playing', 'true');
    $('#play').html('Playing..');
    $('#play').attr('disabled', true);
  } else {
    $('#play').attr('playing', 'false');
    $('#play').html('Play');
    $('#play').attr('disabled', false);
  }
}

$(document).ready(function() {
  $('#play').on('click', function() {
    promptAndPlay();
  });
})
