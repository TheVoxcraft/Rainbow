int windowX = 800;
int windowY = 600;
int[] r = new int[windowX];
int[] g = new int[windowX];
int[] b = new int[windowX];
int r_c = 255;
int g_c = 0;
int b_c = 0;
int counter = 1;
int i = 0;
int debug = 0;

void setup(){
  background(0,0,0);
  size(windowX, windowY);
  noStroke();
  frameRate(120);

} // END SETUP

void draw(){
        //Coloring (complete brainfuck)
       if (r_c == 255 && g_c < 255 && b_c == 0){
         g_c += 1;
         debug = 1;
       } if(g_c == 255 && r_c > 0){
         r_c -= 1;
         debug = 2;
       } if(r_c == 0 && b_c == 255 && g_c < 255){
         g_c -= 1;
         debug = 3;
       } if(r_c == 0 && g_c == 255 && b_c < 255){
         b_c += 1;
         debug = 4;
       } if(r_c == 0 && g_c > 0 && b_c == 255){
         g_c -= 1;
         debug = 5;
       } if(r_c < 255 && g_c == 0 && b_c == 255){
         r_c += 1;
         debug = 6;
       } if(r_c == 255 && g_c == 0){
         b_c -= 1;
         debug = 7;
       }
       // end coloring
       
       //println(debug); // debug
       fill(r_c,g_c,b_c); //fill coloring
       rect(1,1,windowX,windowY); // draws

} // END DRAW
