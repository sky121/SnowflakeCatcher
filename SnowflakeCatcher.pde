Snowflake[] bob;

void setup()
{
  background(0,0,0);
  size(500,500);
  
  bob = new Snowflake[100];
  for(int i =0; i<bob.length; i++){
    bob[i] = new Snowflake();
  }
}
void draw()
{
  
  for(int k = 0; k<bob.length; k++){
     bob[k].erase();



bob[k].lookDown();
bob[k].move();
bob[k].wrap();
bob[k].show(); 


  }
  
  //your code here
}
void mouseDragged()
{
  stroke(0,0,255);
  fill(0,0,255);
  line(pmouseX,pmouseY,mouseX,mouseY);
  //your code here
}

class Snowflake
{
  //class member variable declarations
  int x, y, rand;
  boolean isMoving;
  Snowflake()
  {
    rand = (int)(Math.random()*20);
     x = (int)(Math.random()*500);
     y = (int)(Math.random()*500);
   
     isMoving = true;
    //class member variable initializations
  }
  void show()
  {
     stroke(0,0,0);
    fill(255,255,255);
    ellipse(x,y,rand,rand);
    //your code here
  }
  void lookDown()
  {
    if(y<600 && y>0 && get(x,y+rand+3)==color(0,0,255)){
    isMoving = false;
    }
    //your code here
  }
  void erase()
  {
    
    fill(0,0,0);
   ellipse(x,y,rand+2,rand+2);
    //your code here
  }
  void move()
  {
    if(isMoving==true){
      y++;
    }
    //your code here
  }
  void wrap()
  {
    if(y>400){
    y=10;
    x=(int)(Math.random()*500);
    }
    //your code here
  }
}
