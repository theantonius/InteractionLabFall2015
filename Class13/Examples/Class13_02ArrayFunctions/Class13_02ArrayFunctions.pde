String[] states = {"OH", "NY", "CA"};

// add a value to the array
states = append(states, "NY");

// find the array's length
int len = states.length;

// put a value in the middle of the array
states = splice(states, "KY", 1);

// remove the last value "NY"
states = shorten(states);

// see what we get
println(states[1]);
println(len);
println(states);
println(states[len-1]);
// this will crash
// println(states[len]);