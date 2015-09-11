1. Write a function that takes any number, but always returns 0.

var alwaysZero = function(){
  var input = prompt("Enter a number", 100);
  return 0;
}


2. Write a function that takes a user object with 'name' and 'age' properties,
and logs the string "[name] is [age] years old."

var nameAge = function(){
  var info = {name: "Bob", age: "12"};
  return info.name + " is " + info.age + " years old.";
}


3. Write a function that takes a sentence, and returns an object of all the
words and their lengths.
wordLengths("Hello world"); => { "Hello": 5, "world": 5 }

var wordLengths = function(input){
  var array = input.split(" ");
  var object = {}
  for (var n = 0; n < array.length; n++){
    object[array[n]] = array[n].length;
  }
  return object;
}


4. Add a stop method to your car that logs "screeetch!" to the console.
var stop = function() {
  if (!isNaN(this.speed)) {
    console.log("Scr" + Array(parseInt(this.speed) + 1).join("e") + "tch!");
  } else {
    if (this.speed === "fast") {
      console.log("screeeetch!");
    } else if (this.speed === "medium") {
      console.log("Rrch!");
    } else if (this.speed === "slow") {
      console.log("sh!");
    } else {
      console.log("Yikes, I don't know how fast I'm going!!!");
    }
  }
}

var car = {
  brand: "Honda",
  model: "Civic",
  speed: "10",
  stop: stop(this.speed)
}

var car1 = {speed: 50, stop: stop};
car1.stop();
var car2 = {speed: "fast", stop: stop};
car2.stop();
var car3 = {speed: "medium", stop: stop};
car3.stop();
var car4 = {speed: "slow", stop: stop};
car4.stop();
var car5 = {speed: "abc", stop: stop};
car5.stop();


5. Write a function call which takes a number and a function as parameters,
and returns the result of calling the function on the number.

var doubleIt = function (x) {
  return 2 * x;
};
call (5, doubleIt); // => 10

Stretch: Make call take a third parameter, the number of times to call
the function (e.g. call(5, doubleIt, 2) == 20)

var call = function (num, func, loop) {
  var result = num;
  for (var n = 0; n < loop; n++) {
      result = func(result);
  };
  return result;
};

call(5, doubleIt, 1)
call(5, doubleIt, 2)
call(5, doubleIt, 3)


6. Write a function map which takes an array and a function as parameters,
and returns an array where each items is the item in the original array
with the function applied to it.

var addOne = function (x) {
  return x + 1;
};

map([1, 2, 3], addOne); // [2, 3, 4]

Stretch: The second parameter is an array of functions, apply all the
functions one-by-one to the items in the array.

var map = function (array, arrayFunc) {
  var output = []
  var num = 0
  for (var x = 0; x < array.length; x++){
    var num = array[x];
    for (var y = 0; y < arrayFunc.length; y++){
      num = arrayFunc[y](num);
    };
    output.push(num);
  };
  return output;
};

var increment = function (x){
  return x + 1;
}

var doubleIt = function (x) {
  return x * 2;
}

map([1,2,3,4,5], [increment, doubleIt]);

map([1, 2, 3], function(x){
  return x + 1;
})


7. Use your map function to produce an array of squares of:

[1, 2, 3, 4, 5, 6, 7, 8, 9]

Stretch: use map to produce an array of the number of character of each string
in the following array:

['hello', 'data', 'eat cheese', 'walking']

var map = function (array) {
  var output = []
  for (var x = 0; x < array.length; x++){
    output.push(array[x]);
  };
  return output;
};

map([1, 2, 3, 4, 5, 6, 7, 8, 9], function(x){ return Math.pow(x, 2);})

map(['hello', 'data', 'eat cheese', 'walking'], function(word){ return word.length; });


8. Change your page script to write to the page "Loading..." and
then, 3 seconds later, "Hello, World!"

Stretch: Make your page display "Ready...", then "Set...", then "Go!",
one second after another.

setTimeout(function(){
  document.write("Loading...");
  setTimeout(function(){
    document.write("Hello World");
  }, 3000);
}, 0);

setTimeout(function(){
  document.write("Ready...");
  setTimeout(function(){
    document.write("Set...");
    setTimeout(function(){
      document.write("Go!");
    }, 1000);
  }, 1000);
}, 1000);


9. Make a counter using setInterval. Count from 1 up, every second.

Stretch: Create two counter, one for even numbers and one for odd.
Run them both at the same time.

var x = 0;
var y = 1;
setInterval(function(){
  console.log(x);
  x += 2
}, 1000);
//
setInterval(function(){
  console.log(x += 2);
}, 1000)
setInterval(function(){
  console.log(y += 2);
}, 1000)


10. Use setInterval to log '.' to the screen every 1 second. Stop
after 10 seconds have passed.
(Hint: Use setTimeout to stop things after 10 seconds)

Stretch: Build a blast-off countdown using setInterval.
10 9 8 7 6 5 4 3 2 1 Blast Off!

var dots = setInterval(function(){
  document.write(".")
}, 1000);
setTimeout(function(){
  clearInterval(dots);
}, 11000);

var x = 10;
var blastOff = setInterval(function(){
  document.write(x);
  x--;
}, 1000);
setTimeout(function(){
  document.write("Blast Off!");
  clearInterval(blastOff);
}, 11000);
