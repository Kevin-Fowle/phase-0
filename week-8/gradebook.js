/*
Gradebook from Names and Scores
I worked on this challenge [ with: Brian Donahue]
This challenge took me [2.5] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.




// var students = ["Joseph", "Susan", "William", "Elizabeth"]

//  var scores = [ [80, 70, 70, 100],
//                [85, 80, 90, 90],
//                [75, 70, 80, 75],
//                 [100, 90, 95, 85] ]

 // var array = [2, 4, 5, 7, 2]

 // function average(array){
 //   var add = 0;
 //   for(var i = 0; i < array.length; i++){
 //     add += array[i];
 //   }
 //   var avg = add/array.length;
 //   return (avg);
 // };

 // var gradebook = {
 //   "Joseph":{testScores: scores[0]},
 //   "Susan":{testScores: scores[1]},
 //   "William":{testScores: scores[2]},
 //   "Elizabeth":{testScores: scores[3]},
 //   addScore: function(name, score) {
 //      for (var i = 0; i < scores.length - 1; i++){
 //        if (name == students[i]){
 //          scores[i].push(score);
 //          console.log(scores[i]);
 //        }
 //       }
 //     },
 //   getAverage: function(name){
 //     for (var i = 0; i < scores.length -1; i++){
 //     if (name == students[i]){
 //       return average(scores[i])
 //     }
 //   }
 //  }
 // };


// gradebook.addScore("Susan", 80)

// gradebook.getAverage("Joseph");



// __________________________________________
// Refactored Solution








// __________________________________________
// Write your code below.




var students = ["Joseph", "Susan", "William", "Elizabeth"]

 var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
                [100, 90, 95, 85] ]

 // var array = [2, 4, 5, 7, 2]

 function average(array){
   var add = 0;
   for(var i = 0; i < array.length; i++){
     add += array[i];
   }
   var avg = add/array.length;
   return (avg);
 };

 var gradebook = new Object();

gradebook["Joseph"] = new Object();
gradebook["Susan"] = new Object();
gradebook["William"] = new Object();
gradebook["Elizabeth"] = new Object();

gradebook["Joseph"] = {testScores: scores[0]};
gradebook["Susan"] = {testScores: scores[1]};
gradebook["William"] = {testScores: scores[2]};
gradebook["Elizabeth"] = {testScores: scores[3]};



gradebook.addScore = function(name, score) {
      for (var i = 0; i < scores.length - 1; i++){
        if (name == students[i]){
          scores[i].push(score);
          console.log(scores[i]);
        }
      }
};



gradebook.getAverage = function(name){
     for (var i = 0; i < scores.length -1; i++){
     if (name == students[i]){
       return average(scores[i])
     }
   }
};


// gradebook.addScore("Susan", 80)

gradebook.getAverage("Joseph");






// __________________________________________
// Reflect


// My pair and I had tried a few different ways of adding the functions to the object. We tried doing it inside and outside. Our original solution has us defining the function inside of the object. You could add the function as a property inside of the object or you could add it with dot notation.

// We ended up using a for loop to go over the arrays. Initially, we were going to try. It was kinda funny, we planed out the iterations in Ruby with a .each do and then we translated that over to JavaScripts for loop.

// My refactored solution changes how I create the properties and objects. I think it ended up making the code look a little cleaner.






// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)