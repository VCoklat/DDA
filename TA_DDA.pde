PImage img;
int[] x1,x2,y1,y2,longsor,banjir,gempa,angin,kebakaran;
 String[] nama;
 
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
  String[] b6 = loadStrings( "nama.txt");
  nama = split(b6[0], ',');
  
  fill(0);
  textSize(24);
  text("Banyaknya Desa yang Mengalami Bencana Alam dalam Tiga Tahun Terakhir", 0, 30); 

  fill(0);
  textSize(20);
  text("Petunjuk :", 0, 550); 
  
  fill(0);
  textSize(20);
  text("Longsor", 100, 550);  
  fill(0);
  rect(100,560,50,10);
   
  fill(0);
  textSize(20);
  text("Banjir", 200, 550); 
  fill(255,0,0);
  rect(200,560,50,10);
  
  fill(0);
  textSize(20);
  text("Gempa", 300, 550); 
  fill(0,255,0);
  rect(300,560,50,10);
    
  fill(0);
  textSize(20);
  text("Angin", 400, 550); 
  fill(0,0,255);
  rect(400,560,50,10);
    
  fill(0);
  textSize(20);
  text("Kebakaran", 500, 550); 
  fill(100,100,100);
  rect(500,560,50,10);
}

void grafik(int a)
{
   fill(0);
   rect(820,510,10,-longsor[a]/4);
   textSize(12);
   text(longsor[a], 818, 510-longsor[a]/4);
   
   fill(255,0,0);
   rect(850,510,10,-banjir[a]/4);
   textSize(12);
   text(banjir[a], 848, 510-banjir[a]/4);
   
   fill(0,255,0);
   rect(880,510,10,-gempa[a]/4);
   textSize(12);
   text(gempa[a], 878, 510-gempa[a]/4);
   
   fill(0,0,255);
   rect(910,510,10,-angin[a]/4);
   textSize(12);
   text(angin[a], 908, 510-angin[a]/4);
   
   fill(100,100,100);
   rect(940,510,10,-kebakaran[a]/4);
   textSize(12);
   text(kebakaran[a], 938, 510-kebakaran[a]/4);
   
    fill(0);
  textSize(24);
  text(nama[a], 800, 100); 

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
   fill(255);
   rect(790,110,300,-32);
 println(mouseX,mouseY);
 for (int i=0; i<x1.length; i++)
 {
   koordinat(x1[i],x2[i],y1[i],y2[i],i);
 }
}
