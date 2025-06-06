class Vehicle{
  PVector acceleration, velocity, position;
  float angle;
  boolean mUp=false, mDown=false, mLeft=false, mRight=false;
  int lap = 0;
  int checks = 0;
  
  public Vehicle(float x, float y){
    position.set(x,y);
    acceleration.set(0,0);
    velocity.set(0,0);
  }
  
  void updateVehicle(){
    camera();
    acceleration.limit(5);
    if(mUp)
    acceleration = PVector.fromAngle(angle).mult(0.3);
    if(mDown)
    acceleration = PVector.fromAngle(angle).mult(-0.2);
    if(mLeft)
    angle -= 0.5;
    if(mRight)
    angle += 0.5;
    velocity.add(acceleration);
    PVector z = PVector.add(position,velocity);
    if(onTrack(position.x,position.y)){
      position = z;
    }else{
     velocity.mult(0.3); 
    }
  }
  void drawVehicle(){
    
  }
  
  void interact(float x, float y){
    int row = int(x/tileSize);
    int col = int(y/tileSize);
    if(track[row][col]==0&& maxChecks==checks){
      lap+=1;
      checks=0;
    }
    if(track[row][col]==1){
      checks+=1;
      track[row][col]+=.1;
    }
    if(track[row][col]==3){
      angle += random(-1,1);
    }
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
