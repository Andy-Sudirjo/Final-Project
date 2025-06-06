boolean select = false;

void setup(){
 size(1500,1000);
}

void draw(){
 if(select){
   drawMap(1);
   drawTime();
   Vehicle v= new Vehicle(x,y);
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
