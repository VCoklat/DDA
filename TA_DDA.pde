int[] data;
void setup() {
size(700,200);
// Load text file as a String
String[] stuff = loadStrings( "data.txt");
// Convert string into an array of integers
// using ',' as a delimiter
data = int(split(stuff[0], ','));
}
void draw() {
  background(0);
stroke(0,255,0);
line(0,height-100,100,height-data[0]);

for (int i = 1; i < data.length; i++ ) {
  if(data[i]>data[i-1]) {
    stroke(0,255,0);
  } else stroke(255,0,0);
line(i*100,height-data[i-1],(i+1)*100,height-data[i]);
}
noLoop();
}
