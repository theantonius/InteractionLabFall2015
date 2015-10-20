// declaring and initializing an array in one line
String[] states = {"AR", "MA", "NY"}; 

// declaring an array only
int[] numbers = new int[5];
String[] cities = new String[3];

// adding values to an array later

numbers[0] = 88;

// these will give the values initialized
println(states[0]);
println(numbers[0]);

// these will give the default values
println(numbers[1]);
println(cities[0]);

// this will crash
//println(states[3]); 