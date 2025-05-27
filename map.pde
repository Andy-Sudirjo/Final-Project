int[][] track = new int[][]{{1,1,1,1,1,1,1,1},
                            {1,1,1,0,0,1,1,1},
                            {1,1,1,1,1,1,1,1},
                            {1,1,1,1,1,1}};
int tileSize = 100;
color c;

void setup(){
 size(1000,1000);
 noLoop();
}

void draw(){
 background(255);
 translate(width/2,100);
 for(float i = 0;i<track.length;i++){
  for(float j = 0;j<track[int(i)].length;j++){
    String type = "normal";
    if(track[int(i)][int(j)]==0)
    type = "isFinish";
    Tile t = new Tile(i, j, tileSize, c, type);
    t.drawTile();
  }
 }
}
