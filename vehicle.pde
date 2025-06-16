class Vehicle{
  PVector velocity, position;
  float acceleration = 5;
  float angle;
  PImage img;
  int lap = 0;
  int checks = 0;
  
  public Vehicle(float x, float y){
    position = new PVector(x,y);
    velocity = new PVector(0,0);
    angle = 0;
    img = loadImage("car.png");
  }
  
  void updateVehicle(){
    if(keys[0])//up
    velocity.add(PVector.fromAngle(angle).mult(acceleration));
    if(keys[1])//down
    velocity.sub(PVector.fromAngle(angle).mult(acceleration/2));
    if(keys[2])//left
    angle -= .1;
    if(keys[3])//right
    angle += .1;
    velocity.mult(0.9);
    println("pos:"+position);
    interact(position);
  }
  void drawVehicle(){
    PVector x = position;
    pushMatrix();
    translate(x.x,x.y);
    rotate(angle);
    fill(0);
    rectMode(CENTER);
    rect(0,0,20,50);
    //imageMode(CENTER);
    // if(abs(angle%360)>45)
    //img = loadImage("car.png");
    //else
    //img = loadImage("carright.png");
    //image(img,0,0,75,75);
    popMatrix();
  }
  
  void interact(PVector p){
    int row = round((p.x/(300/2) + p.y/(300/4))/2);
    int col = round((p.y/(300/4) - p.x/(300/2))/2);
    println("row " + row + " col " + col);
    println(track[row][col]);
    println(angle);
    if(track[row][col]==0&& checks ==1){
      lap+=1;
      checks=0;
    }
    countLap();
    if(track[row][col]==1){
      checks=1;
    }
    if(track[row][col]==3){
      angle += random(-0.1,0.1);
    }
    if(track[row][col]==4){
      velocity.mult(-1);
      position.add(velocity);
    }
    if(track[row][col] != 4){
      position.add(velocity);
    }
  }
  
  void countLap(){
    if(lap == 3){
      lap = 0;
      raceComplete();
    }
  }

  
}
