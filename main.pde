// Made by VOX, 2015

int windowX = 800; // Window Size (Width)
int windowY = 600; // Window Size (Height)
int step = 5; // Steps(pixels) in color range
int FPS = 60; //Speed of process (can depend on system speed)
boolean continuous = true; // IF YOU WANT CONTINUOUS CHANGING RAINBOW (DEFAULT = ON/true)

int r_c = 255;
int g_c = 0;
int b_c = 0;
int counter = 1;

void setup(){
  background(0,0,0);
  size(windowX, windowY);
  noStroke();
  frameRate(FPS);

} // END SETUP

void draw(){
    if(counter < windowX){
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
       rect(counter++,1,2,windowY);
       counter++;
    } else{ if(continuous == true) { counter = 1; } } 

} // END DRAW
