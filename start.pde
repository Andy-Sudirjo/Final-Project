boolean select = false;
Vehicle v;
  boolean[] keys;
void setup(){
 size(1500,1000);
 v = new Vehicle(200,500);
 keys = new boolean[4];
    keys[0] = false;
    keys[1] = false;
    keys[2] = false;
    keys[3] = false;
}

void draw(){
 if(select){
   PVector vehiclePos = (v.position);
   pushMatrix();
   translate(width/4-vehiclePos.x-300,height/2-vehiclePos.y);
   drawMap(1);
   v.updateVehicle();
   v.drawVehicle();
   translate(-(width/4-vehiclePos.x-300),-(height/2-vehiclePos.y));
   drawTime();
   popMatrix();
 }else{
  drawMenu(); 
 }
}

void drawMenu(){
  background(71, 181, 245);
  PImage x = loadImage("track1.png");
  PImage y = loadImage("track2.png");
  
  image(x,80,500,550,380);
  image(y,880,500,550,380);
  
  //rect(1200,500,500,250);
  //rect(300,500,500,250);
}

void mousePressed(){
  select = true;
  t.start();
}

void countDown(){
  
}

  void keyPressed(){
    if(keyCode == UP)
      keys[0]=true;
    if(keyCode == DOWN)
       keys[1]=true;
    if(keyCode == LEFT)
       keys[2]=true;
    if(keyCode == RIGHT)
       keys[3]=true;
  }
  void keyReleased(){
    if(keyCode == UP)
      keys[0]=false;
    if(keyCode == DOWN)
       keys[1]=false;
    if(keyCode == LEFT)
       keys[2]=false;
    if(keyCode == RIGHT)
       keys[3]=false;
  }
