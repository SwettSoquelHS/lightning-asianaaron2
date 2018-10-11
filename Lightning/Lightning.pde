//Aaron Fauni, A3
//Purpose of program is to simulate lightning using *random walk...

int startX;
int startY;
int endX;
int endY;
int value;

void setup()
{
  size(800, 500);
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
  strokeWeight(1);
  background(0, 0, 50.2);
}
void draw()
{ 
  stroke(random(255),random(255),random(255),random(255));
  while(endX < width){
   endX = startX + (int)(Math.random()*9);
   endY = startY + (int)(Math.random()*19)-9;
   line(startX,startY,endX,endY);
   startX = endX;
   startY = endY;
  }
}
void mousePressed()
{
  if (mousePressed) {
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
    
  }
}
