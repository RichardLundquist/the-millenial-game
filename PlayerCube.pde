int xDir;
int yDir;

class PlayerCube {
  color c;
  //int xDir; 
  //int yDir;
  
  PlayerCube(color tempC, int tempXdir, int tempYdir) {
    c = tempC;
    xDir = tempXdir;
    yDir = tempYdir;
  }
  
  void display() {
    noStroke();
    rectMode(CENTER);
    fill(c);
    rect(xDir, yDir, 20, 20, 5);
  }
}

// CONTROLES 

boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;

void controller() {

  if(keyPressed) {
      if(upPressed) {
        yDir -= 1;
      }
      
      if(downPressed) {
        yDir += 1;
      }
      
      if(leftPressed) {
        xDir -= 1;
      }
      
      if(rightPressed) {
        xDir += 1;
      }
    }
  
  if(xDir > width) {
    xDir = 0;
  }
  
  else if(xDir < 0) {
    xDir = width;
  }
  
  if(yDir > height) {
    yDir = 0;
  }
  
  else if(yDir < 0) {
    yDir = height;
  }
}

void keyPressed() {
    if (key == 'w') {
      upPressed = true;
    }
    else if(key == 's') {
      downPressed = true;
    }
    else if(key == 'a') {
      leftPressed = true;
    }
    else if(key == 'd') {
      rightPressed = true;
    }

}

void keyReleased() {
    if (key == 'w') {
      upPressed = false;
    }
    else if(key == 's') {
      downPressed = false;
    }
    else if(key == 'a') {
      leftPressed = false;
    }
    else if(key == 'd') {
      rightPressed = false;
    }
};
