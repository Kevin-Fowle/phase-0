 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Select a char, put char through an array(lol) of puzzles
// Goals: Use two objects and two functions to alter those objects
// Characters: Catsquid, Reddit Snoo or other
// Objects: Directions and Riddle
// Functions: Bridgecrosser and color

// Pseudocode
// Select a char, first puzzle will be a random number guesser
// The second will add values if mazemovement is correct to an object once object = 100 maze is complete
// Color picker will be something similar, but the answer will be any color
//
//

// Initial Code

// function Character(name){
// if (name === "Catsquid"){
//   console.log("May the long tenticles of "+ name + " guide you");
// }
//   else if (name === "Reddit snoo"){
//     console.log("Bring home the reddit gold!");
//   }
//     else{
//       console.log("Interesting choice?");
// }
// }
// var randomNumber = Math.floor(Math.random() * 5) + 1;
// function numberChoice(number){

// if(number === randomNumber){
//   console.log("Well done, champion");
// }
// else{
//     console.log("Pick again, mortal");
//     numberChoice;
// }
// }

// var direction = {
// mazeprogress: 0

// };
// function bridgeCrosser(direction_1,direction_2,direction_3,direction_4){
//     console.log("Enter the maze and move forward,left or right to get to the other side");
//     if(direction_1 === "right"){
//         direction.mazeprogress += 25;
//     }
//     else{
//         direction.maze += 0;
//         console.log("your first direction " + direction_1 +" ..you hit a wall");
//     }

//     if(direction_2 === "forward"){
//         direction.mazeprogress += 25;
//     }
//      else{
//         direction.maze += 0;
//         console.log("your second direction " + direction_2 +" ..you hit a wall");
//     }

//      if(direction_3 === "left"){
//         direction.mazeprogress += 25;
//     }
//     else{
//         direction.maze += 0;
//         console.log("your first direction " + direction_3 +" ..you hit a wall");
//     }
//     if(direction_4 === "forward"){
//         direction.mazeprogress += 25;
//     }
//      else{
//         direction.maze += 0;
//         console.log("your first direction " + direction_4 +" ..you hit a wall");
//     }

//     if(direction.mazeprogress === 100){
//         console.log("You made it through the maze of mystery!!!");
//     }
// }

// var riddle = {
// fav_color: "x"

// };

// function color(color){
//     console.log("You approach the final boss..A dragon swoops down from the sky! WHAT IS YOUR FAVORITE COLOR!!!!!");
//     if(color !== "x"){
//         riddle.fav_color += color;
//         console.log(color + " What a nice choice.. Congrats! YOU WON!!!!");
//     }

// }

// Character("Catsquid");
// numberChoice(2);
// bridgeCrosser("right","forward","left","forward");
// console.log(direction);
// color("pink");




// Refactored Code


function Character(name){
switch(name){
    case "Catsquid":
    console.log("May the long tenticles of "+ name + " guide you");
    break;

    case "Reddit snoo":
    console.log("Bring home the reddit gold!");
    break;

    default:
    console.log("Interesting choice?");
}
}
var randomNumber = Math.floor(Math.random() * 5) + 1;
function numberChoice(number){

if(number === randomNumber){
  console.log("Well done, champion");
}
else{
    console.log("Pick again, mortal");
    numberChoice;
}
}

var direction = {
mazeprogress: 0

};
function bridgeCrosser(direction_1,direction_2,direction_3,direction_4){
    console.log("Enter the maze and move forward,left or right to get to the other side");
    if(direction_1 === "right"){
        direction.mazeprogress += 25;
    }
    else{
        direction.maze += 0;
        console.log("your first direction " + direction_1 +" ..you hit a wall");
    }

    if(direction_2 === "forward"){
        direction.mazeprogress += 25;
    }
     else{
        direction.maze += 0;
        console.log("your second direction " + direction_2 +" ..you hit a wall");
    }

     if(direction_3 === "left"){
        direction.mazeprogress += 25;
    }
    else{
        direction.maze += 0;
        console.log("your first direction " + direction_3 +" ..you hit a wall");
    }
    if(direction_4 === "forward"){
        direction.mazeprogress += 25;
    }
     else{
        direction.maze += 0;
        console.log("your first direction " + direction_4 +" ..you hit a wall");
    }

    if(direction.mazeprogress === 100){
        console.log("You made it through the maze of mystery!!!");
    }
}

var riddle = {
fav_color: "x"

};

function color(color){
    console.log("You approach the final boss..A dragon swoops down from the sky! WHAT IS YOUR FAVORITE COLOR!!!!!");
    if(color !== "x"){
        riddle.fav_color += color;
        console.log(color + " What a nice choice.. Congrats! YOU WON!!!!");
    }

}

Character("Catsquid");
numberChoice(2);
bridgeCrosser("right","forward","left","forward");
console.log(direction);
color("pink");



// Reflection
// I think the most difficult part of the challenge was using Javascript(haha). I kept thinking in Ruby, but there needs to be a different though processes(to a certain extent) due to the difference in syntax. I felt like it kept having to reference documentation to make sure even the simplest of syntax in my program was correct. I would have to put this up there as one of the most fun/educational assignments i've worked on here at DBC. I liked how open it was to creativity, but I learn SO MUCH!

// It required a little bit of research, but I became super comfortable working with objects and functions together. I needed to remember that the object didn't necessarily have to be within the function.

// I didn't learn any new ones, probably because my program took a good amount of research to begin with..but I did implement a switch statement in my refactored code.  I was going to use a few more of these, but I thought the if/else statements helped for readability.

// Within the function you just need to access the object with the property. For instance, I added numbers based on if the direction they used as input was correct. direction.maze += (number). Would add a number to what is already in the object. Neat stuff
