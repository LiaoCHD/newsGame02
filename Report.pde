class Report {
    
  float reportTimer,reportTimerS=0,reportTimerSE = 0;
  float reportTimer01,reportTimer02,reportTimer03,reportTimer04,reportTimer05;
  float reporterController,reporterMovecount;
  String reportTopic,reportContext1,reportContext2,reportContext3,reportContext4,reportContext5,reportContextScream;
  int reportCX1,reportCX2,reportCX3,reportCX4,reportCXC,reportCXE,reportCXS;
  boolean counted=false;
  int k ;
  
  int KILLER_REPORT_PLUSPOINT=800,DRUG_REPORT_PLUSPOINT=1200,GHOST_REPORT_PLUSPOINT=600,BIRD_REPORT_PLUSPOINT=500;
  
  
  int plus1,plus2,plus3;
 
  
  int levelPlus1,levelPlus2,levelPlus3,levelPlus4,levelPlus5;
  int levelPast1=0,levelPast2=0,levelPast3=0,levelPast4=0,levelPast5=0;
  
  int viewPointDisplay=0;
  
  int endingstringY = 495;
  int endingtopicY = 270;
  
  
  boolean greatMonkiscoming = false;
    boolean fansiscoming = false;
  boolean moreInfo = false;
  
  Report(){
    rightState=false;
    counted=false;
    reportTimer=0;
    reportTimer01=0;
    reportTimer02=0;
    reportTimer03=0;
    reportTimer04=0;
    reportTimer05=0;
    reporterController=1;
    reportCX1=620;
    reportCX2=620;
    reportCX3=620;
    reportCX4=620;
    reportCXC=620;
    reportCXE=620;
    reportCXS=620;
    k=0;
  }
  
  void display(){
    tint(255);
    
    imageMode(CORNER);
    reportTimer++;
   reporterMovecount+=reporterController;
   
   image(report1,0,0,width,height);
   if(reporterMovecount>=25)image(report2,0,0,width,height);
   if(reporterMovecount>=50)reporterMovecount=0;
         //Topic
   textAlign(CENTER);
   textSize(55);
   fill(255);
   text(reportTopic,557,530);
         //Context
   
   if(reportTimer>=100){
      textSize(25);
      fill(15);
      text(reportContextScream,reportCXS,350);
   }
      if(reportTimer>=220){
         reportCXS=-1100;
          text("叫聲大概是這樣",reportCXC,350);
      }
      if(reportTimer>=300){
         reporterController=0;
     
   }
   if(reportTimer>=300&& reportTimer<301){
  //scream.trigger();
   }
     if(reportTimer>=480){
       reporterController=1;
       reportCXC=-1100;
       reportTimer01++;
       
     }
     //01
     if(reportTimer01>0){
       if(player.material[0]==1 ||player.material[1]==1 || player.material[2]==1 || ending!=0 || firstReport==false){
       
           text(reportContext1,reportCX1,350);
             if(reportTimer01>210){
                   reportTimer02++;
             }
           
       }else{
       reportTimer02++;
       }
     }
     //02
          if(reportTimer02>0){
       if(player.material[0]==2 || player.material[1]==2 || player.material[2]==2|| ending!=0 || firstReport==false){
           reportCX1=-1100;
           text(reportContext2,reportCX2,350);
             if(reportTimer02>210){
                   reportTimer03++;
             }
           
       }else{
       reportTimer03++;
       }
     }
     //03
     if(reportTimer03>0){
       if(player.material[0]==3|| player.material[1]==3 || player.material[2]==3|| ending!=0){
              reportCX1=-1100;
              reportCX2=-1100;
           text(reportContext3,reportCX3,350);
             if(reportTimer03>210){
                   reportTimer04++;
             }
           
       }else{
       reportTimer04++;
       }
     }
     //04
     if(reportTimer04>0){
       if(moreInfo == true){
             reportCX1=-1100;
             reportCX2=-1100;  
             reportCX3=-1100;
           text(reportContext4,reportCX4,350);
             if(reportTimer04>210){
                   reportTimer05++;
             }
           
       }else{
       reportTimer05++;
       }
     }
     
     
     
     
     
     

     
       if(reportTimer05>0){
         moreInfo = false;
         reportCX1=-1100;
         reportCX2=-1100;  
         reportCX3=-1100;
         reportCX4=-1100;
       text("以上就是本臺獨家整理報導",reportCXE,350);
       if(reportTimer05>210) {
        
         if(ending==0 && firstReport==true){
         score();
         }else if(ending == truthEnding){
           score();
         }else if(firstReport==false){
           plus.plusTimer=501;
           firstReport=true;
           gameState = GAME_CROWD;
         }else{
           initGame();
     gameState = GAME_RUN;
         
         
         }
         
         
       }
     }

  }
  
   void update(){

     
     
     reportTopic = "郊區廢屋驚傳尖叫聲  人心惶惶";
     if(day>1){
       reportContextScream= "今天在廢棄的屋子又傳出尖叫聲";
     }else{
       reportContextScream= "今天在廢棄的屋子傳出尖叫聲";
     }
    
     
     //----------------------------
     
     if(player.material[0]==1 ||player.material[1]==1 || player.material[2]==1){
     // There is killer material today
         //Check the LV now and print today's report
         if(killerLV==1)reportContext1 = "疑似有精神病患者在裏頭尖叫";
         if(killerLV==2)reportContext1 = "可能是當地的精神病患者「叫叫哥」在裡面尖叫";
         if(killerLV==3)reportContext1 = "可能是當地常跟路人起衝突的「叫叫哥」在裡面";
         if(killerLV==4)reportContext1 = "據傳，可能是常常攻擊小朋友的「叫叫哥」在裡面";
         if(killerLV==5)reportContext1 = "事件嫌疑人「叫叫哥」聽説有攻擊市長孫子的前科";
         if(killerLV==6)reportContext1 = "最近又發生了小學生失蹤事件，有人説都是「叫叫哥」所為";
         if(killerLV==7)reportContext1 = "民衆表示可能是「叫叫哥」在裏頭囚禁了失蹤的小孩";
         if(killerLV==8)reportContext1 = "事件嫌疑人「叫叫哥」被目擊在附近徘徊，請民衆小心";
         if(killerLV==9)reportContext1 = "最新消息指出，該尖叫聲可能是被「叫叫哥」囚禁的小孩";
         if(killerLV==10)reportContext1 = "嫌疑人「叫叫哥」常穿著粉衣藍褲，綁馬尾，請大家小心";
         if(killerLV==11)reportContext1 = "有人説每天的尖叫聲皆來自被「叫叫哥」囚禁的小孩";
         if(killerLV==12)reportContext1 = "「叫叫哥」的惡劣行徑，讓當地民衆相當憤怒";
         if(killerLV==13)reportContext1 = "已經有一群人在附近尋找「叫叫哥」，想要執行正義";
         if(killerLV>=14)reportContext1 = "若有人看見嫌疑人「叫叫哥」，可以通報附近民衆";
     }
     //---------------------------
      if(player.material[0]==2 ||player.material[1]==2 || player.material[2]==2){
     // There is drug material today
         //Check the LV now and print today's report
         if(drugLV==1)reportContext2 = "也有民衆表示，該地里長認真負責，治安應該很好";
         if(drugLV==2)reportContext2 = "陳里長要大家不需擔心，是小事一件";
         if(drugLV==3)reportContext2 = "有的民衆表示，那不是什麼治安漏洞，只是誤會";
         if(drugLV==4)reportContext2 = "有人表示，那是陳里長推廣的新型「尖叫療法」";
         if(drugLV==5)reportContext2 = "而熱情粉絲堅稱那是陳里長推廣的「尖叫療法」，十分有效";
         if(drugLV==6)reportContext2 = "而當地也聚集了許多陳里長的粉絲，支持這「尖叫療法」";
         if(drugLV==7)reportContext2 = "里民説，「陳里長」氣色紅潤，就是因為這「尖叫療法」";
         if(drugLV==8)reportContext2 = "里民説，「陳里長」口若懸河，就是因為這「尖叫療法」";
         if(drugLV==9)reportContext2 = "里民説，陳里長也因為這「尖叫療法」，處理事情更有效率";
         if(drugLV==10)reportContext2 = "里民説，陳里長也因為這「尖叫療法」，身體更加硬朗";
         if(drugLV==11)reportContext2 = "當地民衆也熱情讚揚陳里長提供大家免費的「尖叫療法」，";
         if(drugLV==12)reportContext2 = "里民表示，「尖叫療法」讓他排便順暢，心情很好";
         if(drugLV>=13)reportContext2 = "里民表示，「尖叫療法」真的很棒，大家都應該來試試看";

     }
      //---------------------------
      if(player.material[0]==3 ||player.material[1]==3 || player.material[2]==3){
     // There is ghost material today
         //Check the LV now and print today's report
         if(ghostLV==1)reportContext3 = "專業師傅説，那叫聲必定是厲鬼作祟";
         if(ghostLV==2)reportContext3 = "專業師傅説，這屋子風水很糟，附近住戶要小心";
         if(ghostLV==3)reportContext3 = "專業師傅表示，該屋子有厚重的陰氣！";
         if(ghostLV==4)reportContext3 = "師傅説，尖叫聲和天氣異變很有關係";
         if(ghostLV==5)reportContext3 = "師傅表示，叫聲代表著對政府怠惰的警示";
         if(ghostLV==6)reportContext3 = "師傅受訪時表示，屋子上方的雲呈現邪神形狀，才是主因";
         if(ghostLV==7)reportContext3 = "師傅也提供了我們許多有關大屋的靈異照片，實在恐怖";
         if(ghostLV==8)reportContext3 = "師傅表示，可以攜帶「靈氣石」來驅趕裏頭的惡靈";
         if(ghostLV==9)reportContext3 = "師傅表示願意提供大家半價的「靈氣石」來趨吉避凶";
         if(ghostLV==10)reportContext3 = "神明託夢告訴師傅，尖叫聲代表國家即將遇到大劫難";
         if(ghostLV==11)reportContext3 = "師傅已經召集相關人士，在他的領導下，驅逐這些惡靈";
         if(ghostLV>=12)reportContext3 = "神明已經託夢給師傅，他會拯救這個國家的人民的";

     }
           //---------------------------
    /*  if(player.material[0]==4 ||player.material[1]==4 || player.material[2]==4){
     // There is ghost material today
         //Check the LV now and print today's report
         if(birdLV==1)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==2)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==3)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==4)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==5)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==6)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==7)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==8)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==9)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==10)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==11)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==12)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==13)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==14)reportContext4 = "有人説那只是夜鶯";
         if(birdLV==15)reportContext4 = "有人説那只是夜鶯";
     }*/
     
     
     
     if(drugLV>=5 && fansiscoming== false){
     reportContext4 =  "熱情的陳里長粉絲也來到了跑跑新聞門口，宣傳「尖叫療法」";
     moreInfo = true;
     greatMonkiscoming = true;
     }
     
     
     if(ghostLV>=6 && greatMonkiscoming == false){
     reportContext4 =  "也因為這起事件，各地有名的師傅都蜂擁而至，準備大展身手";
     moreInfo = true;
     greatMonkiscoming = true;
     }

     
       if(ending == fansEnding){
           reportContext1 = "這樣的「尖叫療法」深獲好評";
           reportContext2 = "陳里長甫上任就做出驚人的政績";
           reportContext3 = "歡迎全國民衆前來響應";
     
     }
     
            if(ending ==monkEnding){
           reportContext1 = "師傅接受神明託夢，他即將驅逐裏頭的邪靈";
           reportContext2 = "他召集各方人士，前來一同做法";
           reportContext3 = "希望他們可以展現神蹟，拯救國家";
     
     }
     
     
     if(ending == screambroEnding){
           reportContext1 = "今天記者找到了這位「叫叫哥」";
           reportContext2 = "「叫叫哥」對記者的問題無法回應";
           reportContext3 = "不知道是不是做賊心虛";
     
     }
     
          if(ending == truthEnding){
           reportContext1 = "記者進入大屋之後";
           reportContext2 = "發現原來只是一臺收音機，在播報前一天的新聞";
           reportContext3 = "一切都只是虛驚一場";
     
     }
     
     
     if(firstReport== false){
           reportContext1 = "究竟是什麼聲音呢？";
           reportContext2 = "記者將在未來幾天為你深入追蹤";
     }
   
     


   }


    void score(){
      
      
      fill(20);
      rect(0,0,width*2,height*2);
      reportTimerS++;
      
      textSize(30);
      fill(255);
      
      
      if(ending == truthEnding){
      text("觀看數改變了",endingtopicY,100);
      }else{
      text("觀看數上升了",270,100);
      }
      
      
      textSize(16);
      
      if(reportTimerS>150)text("你今天報導了",270,150);
     
       if(ending == truthEnding){
          if(reportTimerS>210)image(truthImg,450,170);
          
          if(reportTimerS>290)text("並不是那麼精彩的新聞，所以觀看數下降了",endingstringY,300);
          
          //---------------第一次算分---------------
           textSize(50);
      fill(255);
      
     if(reportTimerS>370) {
                      if( k== 0 ){
                      viewPointDisplay = viewPoint;
                      viewPoint = 900;
                      k++;
                      }
        textAlign(LEFT);               
       text("View："+ viewPointDisplay,200,400);

     }
      if(reportTimerS>470 && counted==false){
      if(viewPointDisplay>viewPoint){
       viewPointDisplay-=10;
       reportTimerS=471;
      }
      }
      
      if(reportTimerS>530){
        counted=true;
        textSize(30);
        textAlign(RIGHT);    
       text("按下→繼續",950,520);
       if(keyPressed==true && keyCode == RIGHT && reportTimerSE==0){
                      reportTimerSE = 2;
       }  
       }
       //---------------第二次算分---------------
       if(reportTimerSE>1){
         reportTimerSE++;
         endingstringY = -1100;
          endingtopicY = -1100;
          textSize(30);
          textAlign(CENTER);
          text("觀看數上升了",270,100);
       }
        if(reportTimerSE>51){
        textSize(16);
          text("然而因為你報導了事實，觀看數還是少量上升了",495,300);
        }
         if(reportTimerSE>100){
           if(viewPointDisplay==900)viewPointDisplay = 90;
           if(viewPointDisplay==800)viewPointDisplay = 80;
           if(viewPointDisplay==700)viewPointDisplay = 70;
           if(viewPointDisplay==600)viewPointDisplay = 60;
           if(viewPointDisplay==500)viewPointDisplay = 50;
           if(viewPointDisplay==400)viewPointDisplay = 40;
           if(viewPointDisplay==300)viewPointDisplay = 30;
           if(viewPointDisplay==200)viewPointDisplay = 20;
           if(viewPointDisplay==100)viewPointDisplay = 10;
         }
         if(reportTimerSE>120){
           fill(#00e3e3);
           textSize(50);
           textAlign(LEFT);       
         text("       1",222,400);
         }
         if(reportTimerSE>=120 && reportTimerSE<121)//up.trigger();
         if(reportTimerSE>180){
           textSize(30);
           fill(255);
        textAlign(RIGHT);    
       text("按下→繼續",950,520);
       if(keyPressed==true && keyCode == RIGHT){
         viewPoint = viewPointDisplay;
         gameState = GAME_CROWD;
       } 
         }
      
       
       }else{
          //01
      if(reportTimerS>210){
      if(player.material[0]==1){
        image(killer,330,170);
        plus1 = KILLER_REPORT_PLUSPOINT;
    }
      if(player.material[0]==2){
        image(drug,330,170);
        plus1 = DRUG_REPORT_PLUSPOINT;
    }
      if(player.material[0]==3){
        image(ghost,330,170);
        plus1=GHOST_REPORT_PLUSPOINT;
    }
      if(player.material[0]==4){
        image(bird,330,170);
        plus1 = BIRD_REPORT_PLUSPOINT;
    }
      }
      //02
       if(reportTimerS>240){
            if(player.material[1]==1){
        image(killer,450,170);
        plus2 = KILLER_REPORT_PLUSPOINT;
    }
      if(player.material[1]==2){
        image(drug,450,170);
        plus2 = DRUG_REPORT_PLUSPOINT;
    }
      if(player.material[1]==3){
        image(ghost,450,170);
        plus2= GHOST_REPORT_PLUSPOINT;
    }
      if(player.material[1]==4){
        image(bird,450,170);
        plus2 = BIRD_REPORT_PLUSPOINT;
    }
       }
      //03     
       if(reportTimerS>270){
      if(player.material[2]==1){
        image(killer,570,170);
        plus3 = KILLER_REPORT_PLUSPOINT;
      }
      if(player.material[2]==2){
        image(drug,570,170);
        plus3 = DRUG_REPORT_PLUSPOINT;
    }
      if(player.material[2]==3){
        image(ghost,570,170);
        plus3= GHOST_REPORT_PLUSPOINT;
    }
      if(player.material[2]==4){
        image(bird,570,170);
        plus3 = BIRD_REPORT_PLUSPOINT;
    }
       }
  
      
      
      
       if(reportTimerS>350)text("+"+plus1,375,300);
      if(reportTimerS>380)text("+"+plus2,495,300);
      if(reportTimerS>410){text("+"+plus3,615,300);}
      
           
      
      
      
      
      textSize(50);
      fill(255);
      
     if(reportTimerS>490) {
                      if( k== 0 ){
                      viewPointDisplay = viewPoint;
                      viewPoint = viewPoint+plus1+plus2+plus3;
                      k++;
                      }
        textAlign(LEFT);               
       text("View："+ viewPointDisplay,200,400);

     }
      if(reportTimerS>550 && counted==false){
      if(viewPointDisplay<viewPoint){
       viewPointDisplay+=10;
       reportTimerS=551;
      // if( viewPointDisplay%40==0)up.trigger();
      }
      }
      
      if(reportTimerS>610){
        counted=true;
        textSize(30);
        textAlign(RIGHT);    
       text("按下→繼續",950,520);
       if(keyPressed==true && keyCode == RIGHT){
           
           for(int i=0;i<=2;i++){
           DNMN[day][i] = player.material[i];
           }
           day++;
           gameState = GAME_CROWD;
           
       }
        
      }
      }
    
    }


  
 }
