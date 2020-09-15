int enemyCubeCount = 5;

class EnemyCube {
  color c; 
  int xpos = int(random(0, width));
  float ypos;
  int xSize;
  int ySize = 30;
  float ySpeed;
  float ySpeedMin;
  float ySpeedMax;
  int textPosX;
  float textPosY;
  String enemyCubeName; 
  
  EnemyCube(color tempC, String tempEnemyCubeName, int temp_xSize, int temp_ySize, float temp_ySpeedMin, float temp_ySpeedMax) {
    c = tempC;
    enemyCubeName = tempEnemyCubeName;
    xSize = temp_xSize;
    ySize = temp_ySize;
    ySpeedMin = temp_ySpeedMin;
    ySpeedMax = temp_ySpeedMax;
    ySpeed = random(ySpeedMin, ySpeedMax);
    //xpos = tempXpos;
    //ypos = tempYpos;
  }
  
  void display() {
    noStroke();
    rectMode(CENTER);
    fill(c);
    rect(xpos, ypos, xSize, ySize);
    text(enemyCubeName, textPosX, textPosY);
    textAlign(CENTER);
    // PRÖVA: height/2 - rectSize/2;
  }
  
  void enemyCube_resetPos(){
        ypos = 0;
        xpos = int(random(0, width));
        //ySpeed = random(ySpeedMin, ySpeedMax);
      }
  
  void fallDown() {
    ypos = ypos + ySpeed;
    textPosY = ypos - ySize * 0.6;
    textPosX = xpos;
    
    
    if(ypos > height) {
      
      enemyCube_resetPos();
      ySpeedMin += .1;
      ySpeedMax += .1;
      ySpeed = random(ySpeedMin, ySpeedMax);
     
     // println("SPPED: " + ySpeed);
    }
  }  
  
  void oneMoreCube() {
    //enemyCubes.add(new EnemyCube(color(255, 0, 255), "hehe"));
  }
  
}
