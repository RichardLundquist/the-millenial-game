/*w

FORTSÄTT: 

Text över kuber
Begränsat antal typer av kuber m namn och text

Reset-knapp 
En ny enemycube var 10e sekund



*/

int healthBar;
boolean loseHealth;
boolean lagom;
boolean activeGame = true;

ArrayList<EnemyCube> enemyCubes;

PlayerCube myCube;
TimeHandler timeHandler;

void setup() {
  size(700, 500);
  textSize(12);
  //The END UI rectangle
  setupEndUI();
  
  time = millis();
  healthBar = 10;
  loseHealth = true;
  lagom = true;
  
  enemyCubes = new ArrayList<EnemyCube>();
  
  for(int i = 0; i < enemyCubeCount; i++) {
    // COLOR, NAME, XSIZE, YSIZE, YSPEEDMIN, YSPEEDMAX
    enemyCubes.add(new EnemyCube(color(100, 40, 155), "Life", 40, 40, 1, 3));
  }
  
  myCube = new PlayerCube(color(0, 0, 255), 200, 100);
  timeHandler = new TimeHandler(1000);
  
  //println(enemyCubes);
};

void displayHealthbar() {
  String healthText = "HP: " + healthBar;
  text(healthText, 40, height - 10);
  fill(0, 0, 255);
}

void timeCtrl(){
  if(millis() - time >= wait) {
       //println("tick");
       time = millis();
     }

}

void resetGame() {
  //healthBar = 10;
  enemyCubeCount = 5;
  timeCounter = 0;
  setup();
  activeGame = true;
}

void draw() {
   background(200);
   if(activeGame) {
   
      timeHandler.checkOneSec();
      timeHandler.displayTimeCounter();
      timeHandler.addNewEnemy();
      displayHealthbar();
    
     for(int i = 0; i < enemyCubes.size(); i++) {     
       enemyCubes.get(i).display();
       enemyCubes.get(i).fallDown();
       
       if((
           (xDir > enemyCubes.get(i).xpos - 20 && xDir < enemyCubes.get(i).xpos + 20) && 
           (yDir > enemyCubes.get(i).ypos - 20 && yDir < enemyCubes.get(i).ypos + 20)) && loseHealth)
         {
           healthBar--;
           background(255, 0, 0);
           loseHealth = false;   
         }
         
         
         else if(
           (xDir > enemyCubes.get(i).xpos - 20 && xDir < enemyCubes.get(i).xpos + 20) && 
           (yDir > enemyCubes.get(i).ypos - 20 && yDir < enemyCubes.get(i).ypos +20))
      
           {
             background(255, 0, 0);
         }
     }
       
     myCube.display();
     controller();
   }
     
   if(healthBar == 5) {
     activeGame = false;
     displayEndUI();
     update();
   };
   
};
