int[][] track1 = new int[][]{{4,4,4,4,4,4,4,4,4,4,4},
                             {4,2,2,2,2,2,4,2,2,2,4},
                             {4,3,4,4,4,2,2,2,4,2,4},
                             {4,2,2,4,4,4,4,4,4,0,4},
                             {4,4,2,2,4,4,4,4,4,2,4},
                             {4,4,4,3,2,2,3,2,4,2,4},
                             {4,4,4,4,4,4,4,2,2,2,4},
                             {4,4,4,4,4,4,4,4,4,4,4}};
                             
int[][] track2 = new int[][]{{4,4,4,4,4,4,4,4,4},
                             {4,2,2,2,2,2,4,4,4},
                             {4,3,4,4,4,2,2,2,4},
                             {4,2,2,4,4,4,4,0,4},
                             {4,4,2,2,4,4,4,2,4},
                             {4,4,4,3,2,2,3,2,4},
                             };
int[][] track;
int tileSize = 300;
int x,y;
int bestTime = 0;
int maxChecks;
Timer t = new Timer();

void drawMap(int x){
 background(255);
 translate(width/2,100);
 if(x==1)
 track = track1;
 else
 track = track2;
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

void drawTime(){
 fill(0);
 textSize(64);
 int a = t.minutes();
 int b = t.seconds();
 text(a+ " : " + b,550,50);
}

boolean onTrack(float x, float y){
    int row = int(x/tileSize);
    int col = int(y/tileSize);
    return track[row][col] != 4;
}

void raceComplete(){
  t.stop();
  if(bestTime == 0)
  bestTime = t.getTime();
  if(bestTime>t.getTime())
  bestTime = t.getTime();
  select = false;
}
