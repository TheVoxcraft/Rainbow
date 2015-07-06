// Made by VOX, 2015

int windowX = 800; // Window Size (Width), default 800px
int windowY = 600; // Window Size (Height), default 600px
int step = 5; // Steps(pixels) in color range
int FPS = 600; //Speed of process (can depend on system speed)

int r_c = 255;
int g_c = 0;
int b_c = 0;
int counterX = 1;
int counterY = 1;

void setup(){
  background(0,0,0);
  size(windowX, windowY);
  noStroke();
  frameRate(FPS);

} // END SETUP

void draw(){
    if(counterX < windowX){
       //Coloring (complete brainfuck)
       if (r_c == 255 && g_c < 255 && b_c == 0){
         g_c += step;
       } if(g_c == 255 && r_c > 0){
         r_c -= step;
       } if(r_c == 0 && b_c == 255 && g_c < 255){
         g_c -= step;
       } if(r_c == 0 && g_c == 255 && b_c < 255){
         b_c += step;
       } if(r_c == 0 && g_c > 0 && b_c == 255){
         g_c -= step;
       } if(r_c < 255 && g_c == 0 && b_c == 255){
         r_c += step;
       } if(r_c == 255 && g_c == 0){
         b_c -= step;
       }
       // end coloring
       fill(r_c,g_c,b_c);
       rect(counterX,counterY,1,1);
       counterX++;
    } else{ if(counterY < windowY) { counterX = 1; counterY++;} } 
  
  fill(0,0,0);
  rect(0,windowY-77,100,80); // clears previous draw of text
  fill(255,255,255);
  text("FPS: "+(int)frameRate,0,windowY-47);
  text("X: "+counterX,0,windowY-30);
  text("Y: "+counterY,0,windowY-10);
} // END DRAW
