class Screambro { // Screambro

   boolean isAlive;
   boolean turnAround = false;
   boolean HIT=false;
  
    float x, y;
    float w = 75;
    float h = 50;
    float countforinterview;
    float iconXposition,iconYposition;
    float countforshockjump = 0;
    float shockjump = 0;
    float shockrun=0;


Screambro(float x, float y){
    isAlive = true;
    this.x = x;
    this.y = y;
  }
  
   void update(){
    x-=speed;
  }
  
  void display(){
   
 
       if(turnAround == true){
      pushMatrix();
      translate(x+w, y);
      scale(-1, 1);
      image(Screambro, 0+shockrun, 0+shockjump);
      popMatrix();
      }else{
       image(Screambro,x+shockrun,y+shockjump);
      }

 }
 
  void checkCollision(){
    if(screambroAppear ==true){
    if(isHit(x, y, w, h, player.x, player.y, player.w, player.h)){
      HIT = true;
    }
    
   if(isAlive == true){    
     if(HIT){
           
           normalSpeed=0;
           countforinterview++;
          interviewing = true;
          iconXposition = x-20;
          iconYposition = y-100;
          
          
          
          mc = loadImage("img/mcIdle.png");

       if(countforinterview>30){
         mc = loadImage("img/mcAsk.png");
         turnAround = true;
       }
       if(countforinterview>60){
         
         image(shock,iconXposition ,iconYposition);
         countforshockjump++;
                        if(countforshockjump<10)shockjump-=3;
                        if(countforshockjump>=10)shockjump+=3;
                        if(countforshockjump>=20)shockjump=0;
         
       }
       
       if(countforinterview>150){
             Screambro = loadImage("img/Screambrorun1.png");
             shockrun+=3.5;
       }
       if(countforinterview>156){
             Screambro = loadImage("img/Screambrorun2.png");
       }
       if(countforinterview>162){
             Screambro = loadImage("img/Screambrorun1.png");
       }
       if(countforinterview>168){
             Screambro = loadImage("img/Screambrorun2.png");
       }
       if(countforinterview>174){
             Screambro = loadImage("img/Screambrorun1.png");
       }
       if(countforinterview>180){
             Screambro = loadImage("img/Screambrorun2.png");
       }
       if(countforinterview>186){
             Screambro = loadImage("img/Screambrorun1.png");
       }
       if(countforinterview>192){
             Screambro = loadImage("img/Screambrorun2.png");
       }
       if(countforinterview>198){
             Screambro = loadImage("img/Screambrorun1.png");
       }
       
       
       
      if(countforinterview>200){
        shockrun = 300;
        interviewing=false;
        countforinterview = 0;
        isAlive = false;
        if(keyPressed==true && keyCode==RIGHT){
            normalSpeed=2*faster;
        }else{
         normalSpeed=2;
        }
        meetedScreambro =true;
        screambroAppear = false;
        HIT = false;
       }
          
          
          
    }
  }
}
  
  //----------------------
  if(screambrofinalAppear ==true){
    if(isHit(x, y, w, h, player.x, player.y, player.w, player.h)){
      HIT = true;
    }
    
   if(isAlive == true){    
     if(HIT){
           
           normalSpeed=0;
           countforinterview++;
          interviewing = true;
          iconXposition = x-20;
          iconYposition = y-100;
          
          
          
          mc = loadImage("img/mcIdle.png");

       if(countforinterview>30){
         mc = loadImage("img/mcAsk.png");
         turnAround = true;
       }
       if(countforinterview>60){
         
         image(shock,iconXposition ,iconYposition);
         countforshockjump++;
                        if(countforshockjump<10)shockjump-=3;
                        if(countforshockjump>=10)shockjump+=3;
                        if(countforshockjump>=20)shockjump=0;
         
       }
       
      
       
       
       
      if(countforinterview>120){
        
        ending = screambroEnding;
        player.materialNum=3;
        interviewing=false;
        isAlive = false;        
        
        HIT = false;
       }
          
          
          
    }
  }
}
  }


}
