PImage img;
int[] x1,x2,y1,y2,longsor,banjir,gempa,angin,kebakaran;
void setup() {
  size(1024,600);
  img = loadImage("Indonesia.png");
  String[] stuff = loadStrings( "x1.txt");
  x1 = int(split(stuff[0], ','));
  String[] stuff1 = loadStrings( "x2.txt");
  x2 = int(split(stuff1[0], ','));
  String[] stuff2 = loadStrings( "y1.txt");
  y1 = int(split(stuff2[0], ','));
  String[] stuff3 = loadStrings( "y2.txt");
  y2 = int(split(stuff3[0], ','));
  String[] b1 = loadStrings( "longsor.txt");
  longsor = int(split(b1[0], ','));
  String[] b2 = loadStrings( "banjir.txt");
  banjir = int(split(b2[0], ','));
  String[] b3 = loadStrings( "gempa.txt");
  gempa = int(split(b3[0], ','));
  String[] b4 = loadStrings( "angin.txt");
  angin = int(split(b4[0], ','));
  String[] b5 = loadStrings( "kebakaran.txt");
  kebakaran = int(split(b5[0], ','));
}

void grafik(int a)
{
   fill(0);
   rect(820,510,10,-longsor[a]/4);
   fill(255,0,0);
   rect(850,510,10,-banjir[a]/4);
   fill(0,255,0);
   rect(880,510,10,-gempa[a]/4);
   fill(0,0,255);
   rect(910,510,10,-angin[a]/4);
   fill(100,100,100);
   rect(940,510,10,-kebakaran[a]/4);
}

void koordinat(int x1, int x2, int y1, int y2, int urutan)
{
   if((x1<mouseX) &&(mouseX<x2) &&(mouseY>y1)&&(mouseY<y2))
  {
    grafik(urutan);
  } 
}

void draw() {
  image(img, 10, 100);
  
   fill(255);
   rect(790,510,300,-410);
 println(mouseX,mouseY);
 for (int i=0; i<x1.length; i++)
 {
   koordinat(x1[i],x2[i],y1[i],y2[i],i);
 }
}
