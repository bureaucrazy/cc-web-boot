var showPassword = function(pwdID, toggleID) {
  $(toggleID).on('click', function() {
    if ($(pwdID).attr('type') === 'text') {
      $(pwdID).attr('type', 'password');
    } else {
      $(pwdID).attr('type', 'text');
    };
  })
}

var hasManyChar = function(pwdID) {
  if ($(pwdID).val().length > 8) { return 1;}
  return 0;
}

var hasMixCase = function(pwdID) {
  if ($(pwdID).val() == parseInt($(pwdID).val())) { return 0; }
  if ($(pwdID).val() === $(pwdID).val().toLowerCase() ||
  $(pwdID).val() === $(pwdID).val().toUpperCase()) {
    return 1;
  } else {
    return 2;
  };
}

var hasNum = function(pwdID) {
  if (parseInt($(pwdID).val()) !== NaN) { return 1; }
  return 0;
}

var hasSoManyChar = function(pwdID) {
  if ($(pwdID).val().length > 12) { return 1; }
  return 0;
}

var checkBad = function(pwdID) {
  var badArray = ["password", "123456", "12345678", "admin", "master", "111111"]
  for (var n = 0; n < badArray.length; n++) {
    if ($(pwdID).val().trim() === badArray[n]) { return "Are you kidding me?" }
  };
  return '';
}

var evaluate = function(pwdID) {
  var score = 0;
  var scoreArray = ["terrible", "weak", "meh meh", "good", "strong", "awesome!"]

  if ($(pwdID).val() === '') {
    return '';
  } else if ($(pwdID).val().trim() === '') {
    score = 0;
  } else {
    score += hasManyChar(pwdID);
    score += hasMixCase(pwdID);
    score += hasNum(pwdID)
    score += hasSoManyChar(pwdID);
  }

  return score + " points: " + scoreArray[score]
}

var main = function(pwdID, ratingID, suggestionID) {
  $(pwdID).on("keyup", function() {
    $(ratingID).html(evaluate(pwdID));
    $(suggestionID).html(checkBad(pwdID));
  })
}

$(document).ready(function() {
  showPassword("#pwd", "#show");
  main("#pwd", "#rating", "#suggestion");
})
