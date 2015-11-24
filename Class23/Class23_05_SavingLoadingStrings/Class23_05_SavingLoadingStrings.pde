// saveStrings()
String words = "monkey bear cat dog";
//String[] list = split(words, ',');
String[] list = split(words, ' ');
saveStrings("animals.txt", list);

// loadStrings()
String lines[] = loadStrings("animals.txt");
println("there are " + lines.length + " lines");
for (int i = 0 ; i < lines.length; i++) {
  println(lines[i]);
}