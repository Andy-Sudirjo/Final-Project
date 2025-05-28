int[][] track = new int[][]{{4,4,4,4,4,4,4,4,4},
                            {4,2,2,2,2,2,4,4,4},
                            {4,3,4,4,4,2,2,2,4},
                            {4,2,2,4,4,4,4,0,4},
                            {4,4,2,2,4,4,4,2,4},
                            {4,4,4,3,2,2,3,2,4},
                            };
int tileSize = 150;
int bestTime = 0;


void drawMap(){
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
    if(track[int(i)][int(j)]==3)
    type = "obstacle";
    Tile t = new Tile(i, j, tileSize, type);
    t.drawTile();
  }
 }
}
