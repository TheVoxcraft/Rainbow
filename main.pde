int windowX = 255;
int windowY = 255;
int[] r = new int[windowX];
int[] g = new int[windowX];
int[] b = new int[windowX];
int r_c = 255;
int g_c = 0;
int b_c = 0;
int counter = 1;
int i = 0;

void setup(){
  background(0,0,0);
  size(windowX, windowY);
  noStroke();
  frameRate(60);

} // END SETUP

void draw(){
    if(counter < windowX){
       if (r_c > 255){
         r_c -= 1;
       } else if (r_c > 255){
         _c -= 1;
       }
       fill(r[i],g[i],b[i]);
       rect(counter++,1,1,windowY);
       counter++;
    }

} // END DRAW
