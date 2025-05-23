int tileWidth, tileHeight;
float x, y;
color c;
boolean isCheckPoint = false, isFinish = false;

public void tiles(float x, float y, int w, int h, String type){
  this.x=x; tileWidth = w;
  this.y=y; tileHeight = h;
  if(type=="check")
    isCheckPoint = true;
  if(type=="finish")
    isFinish = true;
}

void drawTile(){
  fill(c);
  beginShape();
  vertex(x,y);
  vertex(x+tileWidth/2,y-tileHeight/2);
  vertex(x, y+tileHeight);
  vertex(x-tileWidth/2,y+tileHeight/2);
  endShape();
  typeAddition();
}

void typeAddition(){
  if(isCheckPoint){

  }
  if(isFinish){

  }
}
