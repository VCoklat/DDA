import ddf.minim.*;

PImage img;
int[] x1,x2,y1,y2,input0,input1,input2,posx,posx1,banjir1;
String[] nama;
Minim minim;
AudioPlayer player;
AudioInput input;

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
  String[] x = loadStrings( "x11.txt");
  posx = int(split(x[0], ','));
  String[] x01 = loadStrings( "x12.txt");
  posx1 = int(split(x01[0], ','));
  String[] byk0 = loadStrings( "banjir2012.txt");
  input0 = int(split(byk0[0], ','));  
  String[] byk1 = loadStrings( "banjir2013.txt");
  input1 = int(split(byk1[0], ',')); 
  String[] byk2 = loadStrings( "banjir2014.txt");
  input2 = int(split(byk2[0], ','));  
  String[] daerah = loadStrings( "nama.txt");
  nama = split(daerah[0], ',');
  
  fill(0);
  textSize(24);
  text("Banyaknya Desa yang Mengalami Bencana Alam 2012-2014", 0, 30); 
  
}

void grafik(int a)
{
  fill(0);
  rect(820,510,10,-input0[a]);
  textSize(12);
  text(input0[a], 818, 510-input0[a]);
  text("2012", 810, 530);
  
  fill(0);
  rect(850,510,10,-input1[a]);
  textSize(12);
  text(input1[a], 850, 510-input1[a]);
  text("2013", 845, 530);
  
  fill(0);
  rect(880,510,10,-input2[a]);
  textSize(12);
  text(input2[a], 880, 510-input2[a]);
  text("2014", 880, 530);
  
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

void koordinat1()
{
  for(int i=0; i<5;i++)
  {

    if((posx[i]<mouseX) &&(mouseX<posx1[i]) &&(mouseY>50)&&(mouseY<80) && mousePressed)
    {
      String[] byk0=null;
      String[] byk1=null;
      String[] byk2=null;
      if (i==0) 
      {
        byk0 = loadStrings("banjir2012.txt");
        byk1 = loadStrings("banjir2013.txt");
        byk2 = loadStrings("banjir2014.txt");
        minim = new Minim(this);
        player = minim.loadFile("banjir.mp3");
        player.loop();
      }
      if (i==1) 
      {
        byk0 = loadStrings("gempa2012.txt");
        byk1 = loadStrings("gempa2013.txt");
        byk2 = loadStrings("gempa2014.txt");
        minim = new Minim(this);
        player = minim.loadFile("gempa.mp3");
        player.loop();
      }
      if (i==2) 
      {
        byk0 = loadStrings("angin2012.txt");
        byk1 = loadStrings("angin2013.txt");
        byk2 = loadStrings("angin2014.txt");
        minim = new Minim(this);
        player = minim.loadFile("angin.mp3");
        player.loop();
      }
      if (i==3) 
      {
        byk0 = loadStrings("longsor2012.txt");
        byk1 = loadStrings("longsor2013.txt");
        byk2 = loadStrings("longsor2014.txt");
        minim = new Minim(this);
        player = minim.loadFile("longsor.mp3");
        player.loop();
      }
      if (i==4) 
      {
        byk0 = loadStrings("kebakaran2012.txt");
        byk1 = loadStrings("kebakaran2013.txt");
        byk2 = loadStrings("kebakaran2014.txt");
        minim = new Minim(this);
        player = minim.loadFile("kebakaran.mp3");
        player.loop();
      }
      input0 = int(split(byk0[0], ','));  
      input1 = int(split(byk1[0], ','));  
      input2 = int(split(byk2[0], ','));  
    }
  }
}

void draw() {
  image(img, 10, 100);
  
  fill(0,0,300);
  rect(10,50,60,30);
  fill(255);
  textSize(20);
  text("Banjir", 10, 70); 
  
  fill(139,69,19);
  rect(100,50,70,30);
  fill(255);
  textSize(20);
  text("Gempa", 100, 70); 
  
  fill(132,112,255);
  rect(200,50,60,30);
  fill(255);
  textSize(20);
  text("Angin", 200, 70); 
  
  fill(165,42,42);
  rect(290,50,80,30);
  fill(255);
  textSize(20);
  text("Longsor", 290, 70); 

  fill(255,0,0);
  rect(400,50,100,30);
  fill(255);
  textSize(20);
  text("Kebakaran", 400, 70); 
  
  fill(255);
  rect(790,510,300,-410);
  fill(255);
  rect(790,110,300,-32);
     
  println(mouseX,mouseY);
  koordinat1();

  
  for (int i=0; i<x1.length; i++)
  {
    koordinat(x1[i],x2[i],y1[i],y2[i],i);
  }

}
