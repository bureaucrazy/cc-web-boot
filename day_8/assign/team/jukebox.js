function parseSong(notes) {
  var notesArray = [];
  var notesObject = {};
  var songArray = [];

  var notesArray = notes.split(' ');

  for (element = 0; element < notesArray.length; element++) {
    // songArray.push(parseNote(notesArray[element]));
    if (notesArray[element] !== '') {
      notesObject = parseNote(notesArray[element]);
      if (notesObject !== null) {
        // songArray.push(parseNote(notesArray[element]));
        songArray.push(notesObject);
      }
    }
  }
  return songArray
}

function parseNote(note) {
  var pitch = '';
  var beats;
  var beatsDefault = 1;
  var noteArray = [];
  var noteObject = {};

  noteArray = note.split('*');

  if (isValidNote(noteArray[0].charAt(0)) === null) { return null }

  if (isNaN(parseInt(noteArray[noteArray.length - 1]))) {
    noteArray[noteArray.length] = beatsDefault;
  } else {
    noteArray[1] = parseInt(noteArray[1])
  }

  pitch = noteArray[0].charAt(0).toUpperCase() + noteArray[0].substring(1);
  beats = noteArray[1];

  return { pitch: pitch, beats: beats };
}

function isValidNote(str) {
  return str.length === 1 && str.match(/[a-g]/i);
}

function customSong() {
  playSong(parseSong(prompt("Enter your song", "c d e f g h i a b c# bb c## bbb c#*2 C#** **2 * ** C*12  ")), 400, customSong);
}

customSong();
