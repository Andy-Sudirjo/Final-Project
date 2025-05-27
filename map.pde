int[][] track = new int[][]{{2,2,2,2,2,2,2,2,2,2},
                            {2,2,2,2,2,2,2,2,2,2},
                            {2,2,2,2,2,2,2,2,2,2},
                            {2,2,2,2,2,2,2,2,2,2},
                            {2,2,2,2,2,2,3,3,2,2},
                            {2,2,2,2,2,2,3,3,2,2},
                            };
int tileSize = 100;

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
    type = "finish";
    if(track[int(i)][int(j)]==1)
    type = "check";
    if(track[int(i)][int(j)]==2)
    type = "track";
    Tile t = new Tile(i, j, tileSize, type);
    t.drawTile();
  }
 }
}
