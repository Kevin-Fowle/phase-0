// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode:
/*input: a number with no comma placed
output: the number with a comma every three numbers
steps:
Define a function that takes a number as an argument;
Turn number into a string ;
if length of number is less than 3 return the number
else
start coding
reverse the string and place comma ever 4 spots
reverse again and return


// Initial Solution
/*
function separateComma(number) {
  if (number.length < 4) {
    console.log(number);
  }
  else {
    new_num = number.toString().split("").reverse();
    commas_needed = new_num.length / 4;
      if (new_num.length < 6) {
        new_num.splice(3,0,",");
        console.log(new_num.reverse().join(""))
      }
        else if (new_num.length <= 9) {
        new_num.splice(3,0,",");
        new_num.splice(7,0,",");
        console.log(new_num.reverse().join(""))
       }
         else if (new_num.length <= 12) {
           new_num.splice(3,0, ",");
           new_num.splice(7,0, ",");
           new_num.splice(11,0, ",");
           console.log(new_num.reverse().join(""))
         }
  }
}


separateComma(1000000)
*/


// Refactored Solution
var separateComma = function(num) {
    var array = num.toString().split('');
    var index = -3;
    while (array.length + index > 0) {
        array.splice(index, 0, ',');
        index -= 4;
    }
    console.log(array.join(''));
};

separateComma(1000000)

// Your Own Tests (OPTIONAL)




// Reflection

// I kept having to remind myself that I wasn't supposed to be programming in Ruby. My pair and I dissected the problem in Ruby, but then we programmed it out in JS. A lot of our psudocode was thought out in Ruby because we weren't sure how some of the built in methods would work or translate over.

// Iterating over arrays is very similar to ruby. Our initial solution was written with a bunch of if/else statements. We didn't want to google around too much, so we ended up building a really primitive program. Then we got to googling around for our refactored program. We found out that we were super close to solving the problem with iterations, but we had spent far too much time trying to figure it out.

// Some of the methods were a little different. Also we needed to store a lot more into variables than we would have if we were using Ruby.

// Our refactored solution uses a while loop to go over the array. We had tried playing around with a while loop, but we couldn't get it to work properly. I learned a lot about iterating in Javascript.