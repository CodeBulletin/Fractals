float len = 500;
float a = 0.5;
float angle = PI/4;
long drawDelay = 1000;

public void settings() {
  fullScreen();
}
private String extracter(){
  String[] s = loadStrings("/data/number.txt");
  String myfile = "/data/colour";
  String filetype = ".png";
  String m = myfile + s[0] + filetype;
  println(m);
  return m;
}
private int integer(){
  String[] s = loadStrings("/data/number.txt");
  int n = int(s[0]);
  println(n);
  return n;
}
private void writer(int n){
  String m = str(n);
  String[] g = split(m, " ");
  println(g[0]);
  saveStrings("/data/number.txt", g);
}
private void reset(){
  String m = str(0);
  String[] g = split(m, " ");
  println(g[0]);
  saveStrings("/data/number.txt", g);
}

char i = '~';
int depth;
long lastDrawTime = 0;
String main;
int g;
int fo = 0;

void setup(){
  background(0);
  PFont f;
  f = createFont("Arial",16,true);
  textFont(f,36);
  fill(255);
  text("1. Circle Fractals\n2. Tree fracatls\n3. Circle-Line fractals\n4. Line Fractals\n5. Sierpinski carpet \n6. Sierpinski triangle carpet\n7. main menu\n\n\n\n\n\n s--->save/r--->reset/x--->exit",50,100);
}
void keyPressed(){
  i = key;
  depth = 0;
  switch(i){
    case '1':
      len = 340;
      a = 0.5;
      angle = PI/4;
      drawDelay = 1000;
      break;
    case '2':
      switch(fo){
        case 0:
          len = 400;
          a = 0.67;
          angle = PI/2;
          drawDelay = 1000;
          break;
        case 1:
          len = 300;
          a = 0.67;
          angle = PI/3;
          drawDelay = 1000;
          break;
        case 2:
          len = 280;
          a = 0.67;
          angle = PI/4;
          drawDelay = 1000;
          break;
        case 3:
          len = 260;
          a = 0.67;
          angle = PI/6;
          drawDelay = 1000;
          fo = -1;
          break;
      }
      ++fo;
      break;
    case '3':
      len = 180;
      a = 0.5;
      angle = PI/4;
      drawDelay = 1000;
      break;
    case '4':
      len = 260;
      a = 0.5;
      angle = PI/4;
      drawDelay = 1000;
      break;
    case '5':
      len = 729;
      break;
    case '6':
      len = 729;
      a = 0.5;
      break;
  }
}

void draw(){
  switch(i){
    case '1':
      if(System.currentTimeMillis() < lastDrawTime + drawDelay)
        break;
      lastDrawTime = System.currentTimeMillis();
      CircleF(a,len, angle, depth++);
      break;
    case '2':
      if(System.currentTimeMillis() < lastDrawTime + drawDelay)
        break;
      lastDrawTime = System.currentTimeMillis();
      TreeF(a, len, angle,depth++);
      break;
    case '3':
      if(System.currentTimeMillis() < lastDrawTime + drawDelay)
        break;
      lastDrawTime = System.currentTimeMillis();
      cirline(len, a, angle, depth++);
      break;
    case '4':
      if(System.currentTimeMillis() < lastDrawTime + drawDelay)
        break;
      lastDrawTime = System.currentTimeMillis();
      lineF(len, a, angle, depth++);
      break;
    case '5':
      if(System.currentTimeMillis() < lastDrawTime + drawDelay)
        break;
      lastDrawTime = System.currentTimeMillis();
      CF(len ,depth++);
      break;
    case '6':
      if(System.currentTimeMillis() < lastDrawTime + drawDelay)
        break;
      lastDrawTime = System.currentTimeMillis();
      TF(len , a, depth++);
      break;
    case '7':
      setup();
      break;
    case 's':
      main = extracter();
      g = integer();
      save(main);
      ++g;
      writer(g);
      i = '0';
      break;
    case 'r':
      reset();
      break;
    case 'x':
      exit();
      break;
    default:
      if(i != '~'){
        background(0);
        PFont f;
        f = createFont("Arial",16,true);
        textFont(f,36);
        fill(255);
        text("Wrong option press 4 for main menu",50,100); 
      }
  }
}
