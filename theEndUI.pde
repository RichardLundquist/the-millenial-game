int rectX;
int rectY;
int rectSizeX;
int rectSizeY;
boolean rectOver = false;

void setupEndUI(){
  rectX = width/2;
  rectY = height/2 + 50;
  
  rectSizeX = 100;
  rectSizeY = 50;
  rectMode(RADIUS);
}

void update() {
  if(mouseX > rectX - rectSizeX && mouseX < rectX + rectSizeX &&
      mouseY > rectY - rectSizeY && mouseY < rectY + rectSizeY 
    ) {
      rectOver = true;
    }
    
    else {
      rectOver = false;
    }
}

/*
void update (int x, int y) {
  if (overRect(rectX, rectY, rectSizeX, rectSizeY)) {
    rectOver = true;
  }
  else {
    rectOver = false;
  }
};

boolean overRect(int x, int y, int width, int height) {
  if(mouseX >= x && mouseX <= x + width && 
    mouseY >= y && mouseY <= y + height) {
      return true;
    }
    else {
      return false;
    }
}
*/




void displayEndUI() {
  
  text("You burned out!", width/2, height/2);
  text("retry", rectX, rectY + 5);
  //textAlign(CENTER);
  textSize(24);
  rect(rectX, rectY, rectSizeX, rectSizeY);
  
  stroke(1);
  noFill();
  //rectMode(CENTER);
}

void mousePressed(){
  if(rectOver && !activeGame) {
    resetGame();
  }
}
