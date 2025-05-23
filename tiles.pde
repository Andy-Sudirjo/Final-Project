int tileWidth, tileHeight;
float x, y;
String type;
color c;

void drawTile(){
  beginShape();
  vertex(x,y);
  vertex(x+tileWidth/2,y-tileHeight/2);
  
}
