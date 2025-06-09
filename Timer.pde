sclass Timer{
 int sTime = 0, eTime = 0;
 boolean running = false;
 
 void start(){
  sTime = millis();
  running = true;
 }
 void stop(){
  eTime = millis();
  running = false;
 }
 
 int getTime(){
   int time;
   if(running){
     time = millis()-sTime;
   }else{
    time = eTime-sTime;
   }
   return time;
 }
  int seconds(){
    return (getTime() / 1000) % 60;
  }
  int minutes(){
    return (getTime() / (1000*60)) % 60;
  }

}
