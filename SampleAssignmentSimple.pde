//GOAL: make a 'traffic light' simulator. For now, just have the light 
// changing according to time. You may want to investigate the millis()
// function at processing.org/reference.
float lightChangeRedToGreen;
float lightChangeGreenToYellow;
float lightChangeYellowToRed;
int states;

void setup() {
  size(600, 600);
  lightChangeRedToGreen = 5000;
  lightChangeGreenToYellow = 10000;
  lightChangeYellowToRed=2500;
  states=1;
}
void draw() {
  background(255);
  drawOutlineOfLights();
}

void drawOutlineOfLights() {
  //box
  rectMode(CENTER);
  fill(0);
  rect(width/2, height/2, 75, 200, 10);

  //lights

  if (states == 1) {
    if (millis()>lightChangeRedToGreen) {
      fill(255, 0, 0);
      ellipse(width/2, height/2 - 65, 50, 50); //top
      fill(203, 206, 29);
      ellipse(width/2, height/2, 50, 50); //middle
      fill(0, 175, 0);
      ellipse(width/2, height/2 + 65, 50, 50);
    } //bottom
    states = 2;
  } else if (states == 2) {
    fill(175, 0, 0);
    ellipse(width/2, height/2 - 65, 50, 50); //top
    fill(203, 206, 29);
    ellipse(width/2, height/2, 50, 50); //middle
    fill(0, 255, 0);
    ellipse(width/2, height/2 + 65, 50, 50);
    states = 1;
  } //bottom
  
}