class Vehicle{
  PVector acceleration, velocity, position;
  boolean mUp=false, mDown=false, mLeft=false, mRight=false;
  
  public Vehicle(float x, float y){
    position.set(x,y);
    acceleration.set(0,0);
    velocity.set(0,0);
  }
  
  void drawVehicle(){
    acceleration.limit(5);
    if(mUp)
    acceleration.add(1,1);
    if(mDown)
    acceleration.sub(1,1);
    if(mLeft)
    acceleration.add(1,1);
    if(mRight)
    acceleration.add(1,1);
    velocity.add(acceleration);
    
  }
  
  void keyPressed(){
    if(keyCode == UP)
      mUp=true;
    if(keyCode == DOWN)
      mDown=true;
    if(keyCode == LEFT)
      mLeft=true;
    if(keyCode == RIGHT)
      mRight=true;
  }
  void keyReleased(){
    if(keyCode == UP)
      mUp=false;
    if(keyCode == DOWN)
      mDown=false;
    if(keyCode == LEFT)
      mLeft=false;
    if(keyCode == RIGHT)
      mRight=false;
  }
  
}
