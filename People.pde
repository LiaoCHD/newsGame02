class People {
  boolean isAlive;
  boolean turnAround=false;
  
  float x, y;
  float w = 75;
  float h = 50;
  float countforinterview;
  float iconXposition,iconYposition,smalliconW=40,smalliconH=47;
  float completeTimer;
  float talkX=480;
  boolean HIT=false;
  
  void displayback(){}
  void display(){}
  void update(){
    x-=speed;
  }
  
  void checkCollision(){}
  
  void displayMaterial(){
    //killer
    if(player.material[0]==1) image(killer, 79, 16,smalliconW,smalliconH);
    if(player.material[1]==1) image(killer, 79+59, 16,smalliconW,smalliconH);
    if(player.material[2]==1) image(killer, 79+59*2, 16,smalliconW,smalliconH);
    //drug
    if(player.material[0]==2) image(drug, 79, 16,smalliconW,smalliconH);
    if(player.material[1]==2) image(drug, 79+59, 16,smalliconW,smalliconH);
    if(player.material[2]==2) image(drug, 79+59*2, 16,smalliconW,smalliconH);
    //ghost
    if(player.material[0]==3) image(ghost, 79, 16,smalliconW,smalliconH);
    if(player.material[1]==3) image(ghost, 79+59, 16,smalliconW,smalliconH);
    if(player.material[2]==3) image(ghost, 79+59*2, 16,smalliconW,smalliconH);
     //bird
    if(player.material[0]==4) image(bird, 79, 16,smalliconW,smalliconH);
    if(player.material[1]==4) image(bird, 79+59, 16,smalliconW,smalliconH);
    if(player.material[2]==4) image(bird, 79+59*2, 16,smalliconW,smalliconH);
    
    //switch game state
    if(player.materialNum==3){
      normalSpeed = 0;
      completeTimer++;
       textSize(100);
      fill(255);
      rect(270,240,410,100);
      noFill();
      stroke(#6c5a4a);
      strokeWeight(5);
      rect(270,240,410,100);
      fill(#6c5a4a);
      textAlign(LEFT);
       text("COMPLETE",280,320);
      
      if(completeTimer>180){
      player.materialNum=0;
      gameState = GAME_REPORT;
      }
    }
  }


  People(float x, float y){
    isAlive = true;
    this.x = x;
    this.y = y;
  }
  
 }
