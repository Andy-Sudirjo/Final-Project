class Tile{
  float x, y;
  int size;
  color c = 150;
  boolean isCheckPoint = false, isFinish = false;
  
  public Tile(float x, float y, int size, color c, String type){
    this.x=x;
    this.y=y;
    this.size = size;
    if(type=="check")
      isCheckPoint = true;
    if(type=="finish")
      isFinish = true;
  }
  
  void drawTile(){
    fill(c);
    stroke(c);
    float sX = (x-y)*size/2;
    float sY = (x+y)*size/4;
    pushMatrix();
    translate(sX,sY);

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
    if(isFinish){
      fill(0);
      beginShape();
      vertex(0,-size/8);
      vertex(size/4,0);
      vertex(0,size/8);
      vertex(-size/4,0);
      endShape(CLOSE);
      
      translate(0.5,0);
      fill(255);
      beginShape();
      vertex(0,-size/8);
      vertex(size/4,0);
      vertex(0,size/8);
      vertex(-size/4,0);
      endShape(CLOSE);
      
      translate(0,0.5);
      fill(255);
      beginShape();
      vertex(0,-size/8);
      vertex(size/4,0);
      vertex(0,size/8);
      vertex(-size/4,0);
      endShape(CLOSE);
      
      translate(0.5,0.5);
      fill(0);
      beginShape();
      vertex(0,-size/8);
      vertex(size/4,0);
      vertex(0,size/8);
      vertex(-size/4,0);
      endShape(CLOSE);
    }
  }
}
