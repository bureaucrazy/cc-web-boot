// /* Print first name and last name,
//  plus the length in a message box. */
// firstName = "Bryan"
// lastName = "Co"
// fullName = firstName + " " + lastName
// nameLength = (fullName).length
// string = "My name is " + fullName + "(" + nameLength + ")"
// // alert(string)
//
// var name = prompt("Enter your name:");
// var string = "Hello, " + name;
// document.write(string);
// console.log(string);
// alert(string);

// Will display Big in the console
// var a = 5;
//
// if (a > 3) {
//   console.log('Big');
// } else {
//   console.log('Small');
// }

// Asks for age and display in the console a string depending on the age input.
// var age = prompt("What's your age?");
// if (age >= 50) {
//   console.log("You're so wise!");
// } else {
//   console.log("You're so youthful!")
// }

// var greeting = "Welcome to super safe.\n"
// var secretCode = '714';
// var inputConfirm = confirm(greeting + 'Are you sure you want to Enter?');
// if (inputConfirm) {
//   var inputPassword = prompt('Enter password between 9 and 12 characters');
//   if (inputPassword.length > 12) {
//     alert('Too long!');
//   } else if (inputPassword.length < 8) {
//     alert('Too short!');
//   } else {
//     alert('Just right!');
//     if (inputPassword === 'opensesame') {
//       alert('Secret number is ' + secretCode);
//     } else {
//       alert('Incorrect password!');
//     }
//   }
// } else {
//   alert('Good bye!');
// }


// WHILE Loop
// var counter = 0;
// while (counter < 10) {
//   console.log(counter);
//   // counter += 1;
//   // Below does the same as above
//   counter++;
// }

// Logging even number from 0 to 100 using WHILE loop
// var number = 0;
// while (number <= 100) {
//   if (number % 2 === 0) {
//     console.log(number);
//   }
//   number++;
// }

// Bottles of beer rhyme using WHILE loop.
// var bottles = 100;
// while (bottles > 0) {
//   var message = bottles + " bottles of beer on the wall\n";
//   var message = message + bottles + " bottles of beer\n";
//     bottles-- ;
//   var message = message + "Take one down, pass it around, " + bottles + " bottles of beer on the wall";
//   console.log(message);
//
//
// }


// FOR loops
// for(var n = 0; n <= 100; n++) {
//   console.log(n);
// }

// Bottles of beer rhyme using FOR loop.
// for(var bottles = 100; bottles > 0; bottles--) {
//   console.log(bottles + " bottles of beer on the wall");
//   console.log(bottles + " bottles of beer");
//   console.log("Take on down, pass it around, " + (bottles - 1) + " bottles of beer on the wall");
// }

// var result = 0;
//
// for( var i = 5; i < 10; i += 1 ) {
//   result += i;
//   if (i % 3 === 0) {
//     break;
//   }
// }
// console.log(result);

// 1. Logging of number from 100 down to 0 using FOR loop
// for( var num = 100; num >= 0; num-- ) {
//   console.log(num);
// }

// 2. Determine sum of number from 0 to 99 using FOR loop
// var sum = 0;
// for( var num = 0; num < 100; num++ ) {
//   sum += num;
// }
// console.log(sum);

// 3. Guess the number game
// var num = 42;
//
// while (input !== num) {
//   var input = prompt("Guess the number");
//   if (input !== "") {
//     if (input > num){
//       alert("Too high");
//     } else if (input < num) {
//       alert("Too low");
//     } else {
//       alert(input + " is the correct answer!");
//     }
//   } else {
//     break
//   }
// }

// var secertNumber = Math.floor((Math.random() * 10) + 1);
// console.log(secertNumber);
//
// while (answer != secertNumber)  {
//  var answer = prompt("Please enter a digit between 0 to 100")
//  if(answer != null) {
//    if (answer > secertNumber) {
//      alert("You number " + answer + " is too high!")
//    } else if (answer < secertNumber) {
//      alert("You number " + answer + " is too low!")
//    } else {
//      alert("You number " + answer + " is the correct answer!!!")
//    }
//  } else {
//    break
//  }
// }


// Arrays
//
// myArray = [1,2,3,4,5]
// myArray.push(6)
// myArray.length - same as Ruby
// myArray.pop() - same as Ruby
// myArray.push() - same as Ruby

// 1. Exercise
// var first = ["hello", 5, "a"];
// first[1] = 6;
// console.log(first);
//
// var second = [];
// for( var num = 0; num <= 100; num++ ) {
//   second.push(num);
// }
// console.log(second.length);

// var myArray = [1,2,3,4,5];
// for(var i = 0; i < myArray.length; i++) {
//   console.log(myArray[i]);
// }

// var sum = 0;
// var array1 = [0, 5, 6, -12];
// for( var n = 0; n < array1.length; n++) {
//   sum += array1[n];
// }
// console.log(sum);
//
// var array2 = ["apple", "dog", "computer", "cup"];
// for( var n = 0; n < array2.length; n++) {
//   console.log(array2[n] + " has " + array2[n].length + " characters.");
// }


// String functions
// .split()
// .join()

// var string1 = 'hello';
// var array1 = [];
// array1 = string1.split('');
//
// var array2 = [];
// array2 = prompt("Enter a sentence").split(' ');
// alert(array2.length + ' words in the sentence.');
// // Below chains the two lines above into one
// // alert(prompt("Enter a sentence").split(' ').length + ' words in the sentence.');
//
// var string2 = '';
// for( var n = 0; n < 100; n++ ){
//   string2 = string2 + n;
// }
//
// var array3 = [];
// for( var n = 0; n < 100; n++ ){
//   array3.push(n);
// }
// console.log.array3.join('');


// var doubleIt = function(a) {
//   console.log(a * 2);
// }
// doubleIt(5);
//
// function sum(a, b) {
//   console.log(a + b);
// }
// sum(5, 6);

// Must explicitly specify return for the function to return a value.
// Just like Ruby, any code after the return will not be processed.
// var doubleIt = function(a) {
//   (a * 2);
// }
// console.log(doubleIt(5));
//
// var doubleIt = function(a) {
//   return (a * 2);
// }
// console.log(doubleIt(5));


// Reversing an Array
// var reverseArray = function(array) {
//   return array.reverse();
// }
// console.log(reverseArray([1,2,3]));


// Insult
// var insultMe = function(name) {
//   return name + " you dummy!";
// }
// console.log(insultMe(prompt("What's your name?")));

// Increment
// var increment = function(number) {
//   return parseInt(number) + 1;
// }
// console.log(increment(prompt("Enter a number?")));

// Array doubled
// var doubleArray = function(array) {
//   for (var n = 0; n < array.length; n++) {
//     array[n] = array[n] * 2;
//   }
//   return array;
// }
// console.log(doubleArray([1,2,3]));

// This is the same as the doubleArray function
// [1,2,3].map(function(x) { return x * 2});


// Objects (aka. Hash in Ruby)
var myObject = {a: 1, b: 2, c: 3};
myObject.a
myObject["a"]

var me = {name: 'Bryan', age: '0', occupation: 'student'};
me.occupation = 'javascript expert';
me.skills = ['javascript', 'ruby', 'rails']
me['magic powers'] = 'none';
