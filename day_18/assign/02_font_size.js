var changeFontSize = function(objId, num) {
  var prefix = "font-size:"
  var suffix = "px"
  $(objId).attr("style", prefix + num + suffix)
}

$(document).ready(function() {
  $("#size").on("change", function() { changeFontSize("#subject", $("#size").val()); })
})
