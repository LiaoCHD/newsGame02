class Player {
  
  float x, y;
  float w = 75, h = 50;
  final float PLAYER_INIT_X = 40;
  final float PLAYER_INIT_Y = 358;
  float runTimer;

  int [] material;
  int materialNum = 0;
  final int PLAYER_MAX_MATERIAL = 3;

  void display(){
     image(mc, x, y);
     if(runTimer==10)mc = loadImage("img/mc-02.png");
    if(runTimer==20)mc = loadImage("img/mc-03.png");
    if(runTimer==30)mc = loadImage("img/mc-04.png");
    if(runTimer==40)mc = loadImage("img/mc-05.png");
    if(runTimer==50)mc = loadImage("img/mc-06.png");
    if(runTimer==60)mc = loadImage("img/mc-07.png");
    if(runTimer==70)mc = loadImage("img/mc-08.png");
    if(runTimer>=80){
      mc = loadImage("img/mc-01.png");
      runTimer=0;
      
    }
      runTimer+=speed/2;
  }

  void update(){
     //maincharacter control
      if(y==upLine){
        if(downState== true && interviewing == false)y=middleLine;downState= false;
      }
      if(y==middleLine){
        if(upState== true&& interviewing == false)y=upLine;upState = false;
        if(downState== true&& interviewing == false)y=downLine;downState = false;
      }
      if(y==downLine){
        if(upState== true&& interviewing == false)y=middleLine;upState= false;
      }
    
  }



  Player(){
    materialNum = 0;
    material = new int [3];
    for(int i=0;i<=2;i++){
      material[i] = 0; 
    }
    x = PLAYER_INIT_X;
    y = middleLine;

  }
}
