int time = millis(); 
int wait;
int timeCounter = 0;
boolean tick;

class TimeHandler{
  
  TimeHandler(int tempWait){
    wait = tempWait;
  }
  
  void timeInit(){
    //time = millis();
  }
  
  void checkOneSec(){
    if(millis() - time >= wait) {
       timeCounter++;
       //println(timeCounter);
       time = millis();
       loseHealth = true;
       lagom = true;
     }
  }
  
  void displayTimeCounter(){
  
    String timeText = "Time: " + timeCounter;
    text(timeText, 100, height - 10);
    fill(0, 0, 255);
    
    
    /*if(timeCounter != 0 && timeCounter % 10 == 0 && lagom) {
      println("NEW LEVEL");
      enemyCubes.add(new EnemyCube(color(255, 0, 0), "More anxiety :)", 70, 50, 3, 4));
      if(timeCounter == 20 && lagom) {
        enemyCubes.add(new EnemyCube(color(0, 255, 0), "Climate crisis", 60, 50, 4, 4));
        println("LVL 20");
      }
      if(timeCounter == 25 && lagom) {
        enemyCubes.add(new EnemyCube(color(70, 255, 100), "Unpaid internship", 80, 50, 4, 4));
        println("LVL 25");
      }
      if(timeCounter == 30 && lagom) {
        enemyCubes.add(new EnemyCube(color(255, 25, 100), "Social media", 60, 50, 4, 4));
        println("LVL 30");
      }
      if(timeCounter == 35 && lagom) {
        enemyCubes.add(new EnemyCube(color(255, 25, 100), "World War 3", 60, 50, 4, 4));
        println("LVL 30");
      }
      if(timeCounter == 40 && lagom) {
        enemyCubes.add(new EnemyCube(color(0, 255, 200), "Baby Boomers", 60, 50, 4, 4));
        println("LVL 40");
      }
      if(timeCounter == 50 && lagom) {
        enemyCubes.add(new EnemyCube(color(255, 155, 10), "Trump", 60, 50, 4, 4));
        println("LVL 40");
      }
      if(timeCounter == 60 && lagom) {
        enemyCubes.add(new EnemyCube(color(0, 0, 0), "DEPRESSION", 250, 150, 1, 1));
        println("LVL 40");
      }
      
      lagom = false;
    }*/
    
  }
  
  
  void addNewEnemy(){
    if(timeCounter != 0 && lagom) {
      switch(timeCounter) {
        case 15: 
          enemyCubes.add(new EnemyCube(color(0, 255, 200), "Global warming", 90, 50, 4, 4));
          break;
        case 5:
          enemyCubes.add(new EnemyCube(color(170, 55, 100), "Unpaid internship", 80, 50, 4, 4));
          break;
        case 10:
          enemyCubes.add(new EnemyCube(color(255, 25, 100), "Loan debt", 60, 50, 4, 4));
          break;
        case 20:
          enemyCubes.add(new EnemyCube(color(255, 0, 0), "General anxiety", 70, 50, 3, 4));
          break;
        case 25:
          enemyCubes.add(new EnemyCube(color(0, 255, 200), "Social media", 60, 50, 4, 4));
          break;
        case 30:
          enemyCubes.add(new EnemyCube(color(255, 155, 10), "Trump", 80, 50, 2, 3));
          break;
        case 35:
          enemyCubes.add(new EnemyCube(color(165, 155, 90), "Housing prices", 60, 20, 2, 3));
          break;
        case 40:
          enemyCubes.add(new EnemyCube(color(155, 125, 60), "No sex", 70, 20, 2, 3));
          break;
        case 50:
          enemyCubes.add(new EnemyCube(color(0, 0, 0), "Depression :)", 250, 150, 1, 1));
          break;
      }
      
      /*
      //enemyCubes.add(new EnemyCube(color(255, 0, 0), "More anxiety :)", 70, 50, 3, 4));
      if(timeCounter == 5) {
        enemyCubes.add(new EnemyCube(color(0, 255, 200), "Climate crisis", 60, 50, 4, 4));
        println("LVL 20");
      }
      if(timeCounter == 10) {
        enemyCubes.add(new EnemyCube(color(170, 55, 100), "Unpaid internship", 80, 50, 4, 4));
        println("LVL 25");
      }
      if(timeCounter == 15 && lagom) {
        enemyCubes.add(new EnemyCube(color(255, 25, 100), "Loan debt", 60, 50, 4, 4));
        println("LVL 30");
      }
      if(timeCounter == 20 && lagom) {
        enemyCubes.add(new EnemyCube(color(255, 25, 100), "Nuclear threat", 30, 50, 4, 4));
        println("LVL 30");
      }
      if(timeCounter == 30 && lagom) {
        enemyCubes.add(new EnemyCube(color(0, 255, 200), "Baby Boomers", 60, 50, 4, 4));
        println("LVL 40");
      }
      if(timeCounter == 40 && lagom) {
        enemyCubes.add(new EnemyCube(color(255, 155, 10), "Trump", 80, 50, 2, 3));
        println("LVL 40");
      }
      if(timeCounter == 60 && lagom) {
        enemyCubes.add(new EnemyCube(color(0, 0, 0), "DEPRESSION", 250, 150, 1, 1));
        println("LVL 40");
      }
      */
      lagom = false;
    }
  }
  
}
