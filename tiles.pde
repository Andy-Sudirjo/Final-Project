class Tile{
  float x, y;
  int size;
  boolean isCheckPoint = false, isFinish = false, isTrack = false;
  
  public Tile(float x, float y, int size, String type){
    this.x=x;
    this.y=y;
    this.size = size;
    if(type=="check")
      isCheckPoint = true;
    if(type=="finish")
      isFinish = true;
    if(type=="track")
      isTrack =true;
  }
  
  void drawTile(){
    stroke(26, 168, 13);
    fill(26, 168, 13);
    float sX = (x-y)*size/2;
    float sY = (x+y)*size/4;
    pushMatrix();
    translate(sX,sY);
    if(isFinish){
     stroke(0);
     fill(0); 
    }
    if(isTrack){
      stroke(160);
      fill(160);
    }
    beginShape();
    vertex(0,-size/4);
    vertex(size/2,0);
    vertex(0,size/4);
    vertex(-size/2,0);
    endShape(CLOSE);
    typeAddition();
    popMatrix();
  }
  
  void typeAddition(){

  }
}
