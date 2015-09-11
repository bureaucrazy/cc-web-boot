Implement filter function in Javascript.

var isEven = function (x) { return x % 2 == 0; };

var filter = function(arr, func) {
  var result = [];
  for (n = 0; n < arr.length; n++) {
    if (func(arr[n])){ result.push(arr[n])};
  };
  return result;
}

filter([1, 2, 3, 4], isEven); // => [2, 4]
