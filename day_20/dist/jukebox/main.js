$(document).ready(function() {
  // Your code here...
  var $pb = $("#play-button"),
      $np  = $("#now-playing"),
      bpm = 500,
      stop = false,
      isPlaying = false,
      typer = "",
      npDefault = "Enter a song to play";

  // Initialize play button state
  $pb.attr("playing", "false").
      html("").
      removeClass("btn-lg").
      addClass("btn-xs fa fa-play");

  $np.addClass("h5").html(npDefault);

  // Animate play button and set internal flags for self toggle
  var togglePlayButton = function(element){
    var state = (element.attr("playing").toLowerCase() === "true");
    if (state === true) {
      element.slideToggle();
      element.slideToggle();
      element.attr("playing", "false").
          removeClass("fa fa-stop btn-danger").
          addClass("fa fa-play btn-primary");
    } else {
      element.slideToggle();
      element.slideToggle();
      element.attr("playing", "true").
          removeClass("fa fa-play btn-primary").
          addClass("fa fa-stop btn-danger");
    }
    return !state;
  }

  // Returns boolean if there's a song in the playlist <ul>
  var isQueueFilled = function(element) { return (element.length > 0); }

  // Save top-most song from playlist <ul> to array and remove from list
  var popQueue = function(element) {
    var array = [];
    array[0] = element.eq(0).text();
    array[1] = element.eq(0).attr("notes");
    element.eq(0).remove();
    return array;
  }

  // Main call for play button, now playing, play list
  var playAll = function() {
    if (stop === true) {
      isPlaying = togglePlayButton($pb);
      $np.html(npDefault);
      return null;
    }

    var $ql = $("#song-queue li");

    if (isQueueFilled($ql)) {
      var songDetails = [];
      songDetails = popQueue($ql);
      $np.html("Now Playing " + songDetails[0]);
      if (songDetails[1].trim() !== "" || songDetails[1] !== null) {
        var song = parseSong(songDetails[1]);
        playSong(song, bpm, playAll);
        typeNP();
      }
    } else {

      alert("Queue empty");
      isPlaying = togglePlayButton($pb);
      $np.html(npDefault);
      clearInterval(typer);
      typeNP();
    }
  };

  // Event when play all is clicked
  $pb.on("click", function() {
    if (isPlaying) {
      stop = true;
    } else {
      stop = false;
      isPlaying = togglePlayButton($pb);
      playAll();
    }
  });

  // Event to add songs into play list
  $("#song-form .btn").on("click", function() {
    event.preventDefault();
    var $name  = $("#song-form [name='name']");
    var $notes = $("#song-form [name='notes']");
    $("#song-queue").html(
      $("#song-queue").html() +
      "<li notes='" + $notes.val() + "'" +
      "data-toggle='tooltip' data-placement='bottom'" +
      "title='" + $notes.val() +"'>" +
      $name.val() + "</li>");

    $('[data-toggle="tooltip"]').tooltip();

    $name.val("");
    $notes.val("");
  })

  // Allows spacebar to trigger play event except on input fields.
  $(document).on("keypress", function(event) {
    if (event.target.tagName.toLowerCase() !== "input") {
      if (event.which == 32) {
        $pb.click();
      }
      event.stopPropagation();
    }
  })

  var letter = 1,
      typeThis = [];

  // Typing out the now playing
  var typeIt = function() {
    if(letter < typeThis.length) {
      $np.html($np.html() + typeThis[letter++]);
    } else {
      clearInterval(typer);
    };
  }

  var typeNP = function() {
    letter = 1;
    typeThis = $np.html().split("");
    $np.html(typeThis[0]);
    typer = setInterval(typeIt, 100);
  }

  // Types out now playing on page load. That's it.
  typeNP();
});
