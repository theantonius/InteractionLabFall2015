String m1 = "monkey";
String m2 = "monkey";
String m3 = "Monkey";

// Returns True
if (m1 == "monkey" || m1 == m2) {
}

// Returns True
if (m1.equals("monkey") || m1.equals(m2)) {
}

// Returns False
if (m3 == "monkey" || m3 == m2) {
  println("HooHOoHaahahaaa!");
}