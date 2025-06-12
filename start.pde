boolean select = false, starting = false;
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
   if(starting){
    countDown();
    starting = false;
   }
   drawMap(1);
   drawTime();
   v.updateVehicle();
   v.drawVehicle();
 }else{
  drawMenu(); 
 }
}

void drawMenu(){
  background(71, 181, 245);
  rect(500,500,100,50);
  rect(100,500,100,50);
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
