/*
  She Draws with Code   
  180916
  Jessica In 

  >> email      jin@jessicain.net   
  >> twitter    @innjesst
  >> instagram  @shedrawswithcode

  Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0) 
  
  You are free to:
    Share — copy and redistribute the material in any medium or format
    Adapt — remix, transform, and build upon the material
    The licensor cannot revoke these freedoms as long as you follow the license terms.

  Under the following terms:
    Attribution — You must give appropriate credit, provide a link to the license, 
    and indicate if changes were made. You may do so in any reasonable manner, 
    but not in any way that suggests the licensor endorses you or your use.
    NonCommercial — You may not use the material for commercial purposes.
    ShareAlike — If you remix, transform, or build upon the material, you must distribute 
    your contributions under the same license as the original.
    No additional restrictions — You may not apply legal terms or technological measures 
    that legally restrict others from doing anything the license permits.

*/
int divX;
float gridX;
color bg = #084E86;
color str = 240;
color col1 = 200; 

float t;

void setup() {
  size(900, 900);
  divX = 32;                
  gridX = (float)width/divX;  
  smooth(16);
}//setup

void draw() {
  background(bg);
  for (int i=0; i<=divX; i++) {
      float x =  x= i*gridX + gridX*0.5;
      float y = height*0.5;
      stroke(str); 
      strokeWeight(5);
      point(x, y);
      float dia2 = map(sin(t*2+i+1), -1, 1, 0, gridX*6);
      float distFromMouse = dist(mouseX, mouseY, x, y); 
      float dia = map(dia2 + distFromMouse, 0, width, gridX, gridX*6); 
      strokeWeight(2); 

      noFill(); 
      ellipse(x, y, dia, dia2); 
     
      stroke(col1);  
      ellipse(x, y, dia2, dia2);

  }//i
  float inc = map(mouseX, 0, width, 0.01, 0.06);
  t = t+inc;

  if (t<TWO_PI) {
   // saveFrame("myFrames/frames-######.png");
  }
}//draw
