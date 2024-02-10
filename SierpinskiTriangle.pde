int x = 0;
int y = 1000;
int noBalls = 100;
public void setup()
{
  size(1000, 1000);
  frameRate(120);
}
public void draw()
{
  background(0);
  sierpinski(x, y, noBalls);
}
public void keyPressed(){
 if(key == ' ')
 {
 noBalls+=100; 
 if(noBalls > 100000)
 noBalls = 0;
 }
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20)
    triangle(x, y, x + len/2, y - len, x + len, y);
   else {
   sierpinski(x, y, len/2);
   sierpinski(x + len/2, y, len/2); 
   sierpinski(x + len/4, y - len/2, len/2);
}
