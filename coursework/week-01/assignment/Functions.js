function greet(name) { 
    console.log("Hello, " + name + "!");
}

// when we need the same for the 3 names below the same function can be called 3 times with different arguments, instead of writing the same code 3 times.
greet("Alice"); 
greet("Bob");
greet("Charlie");