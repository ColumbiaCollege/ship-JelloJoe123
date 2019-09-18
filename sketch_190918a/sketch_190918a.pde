float xPos =0;
float yPos = 0;
float spd = 1;
int topcrx = 20;
int topcry = 7;
int bodcrx = 30;
int bodcry = 10;
int ywhl = 10;
int lwhlx = 5;
int rwhlx = 25;
int ycrlin = 4;
int xcrlin1= 0;
int xcrlin2 = 18;


float rid = 0;
float chng = 2;

//Booleans for movement
boolean right = false;
boolean left = false;
boolean down = false;
boolean up = false;
boolean fast = false;
boolean slow = false;

void setup() {
  //window modifications
  size(1000, 800);
  background(255);

  //initial position
  xPos = 500;
  yPos = 400;

  //shape properties
  noStroke();
  fill(0, 0, 255);
}

void draw() {
  //wipe
  background(255);

  //update position
  if (left) {
    xPos = xPos - spd;
  }
  
  if (right) {
    xPos = xPos + spd;
  }
  
  if (down) {
    yPos = yPos + spd;
  }
  
  if (up) {
    yPos = yPos - spd;
  }
  
  if (fast){
    spd = spd*1.1;
  }
  if (slow){
    spd = spd/1.1;
  }
  
  
  //draw shape
  fill(200,10,0);
  rect(xPos, yPos-10,topcrx,topcry); //top of car
  rect(xPos, yPos, bodcrx, bodcry); //body of car
  fill(0);
  ellipse(xPos+lwhlx, yPos+ywhl,10,10); //left wheel
  ellipse(xPos+rwhlx, yPos+ywhl,10,10); //rear wheel
  rect(xPos + xcrlin1,yPos-ycrlin, 2,5); //line 1
  rect(xPos+xcrlin2,yPos-ycrlin, 2,5);   //line 2
  
  
}

void keyPressed() {
  if (key == 'a') {
    left = true;
  }
  if (key == 'd'){
    right = true;
  }
  if (key == 'w') {
    up = true;
    bodcrx = 20;
    bodcry = -30;
    lwhlx =  -1000;
    rwhlx = -1000;
    xcrlin1 = -1000;
    xcrlin2= -1000;
    ycrlin = -1000;
  }
  if (key == 's') {
    down = true;
    bodcrx = 20;
    bodcry = -30;
    lwhlx =  -1000;
    rwhlx = -1000;
    xcrlin1 = -1000;
    xcrlin2= -1000;
    ycrlin = -1000;
  }
  if (key == 'p') {
    fast = true;
  }
  if (key == 'o') {
    slow = true;
  }
}

void keyReleased() {
  if (key == 'a'){
    left = false;
  }
  if (key == 'd'){
    right = false;
  }
  if (key == 'w') {
    up = false;
    bodcrx = 30;
    bodcry = 10;
    lwhlx = 5;
    rwhlx = 25;
    xcrlin1 = 0;
    xcrlin2 = 18;
    ycrlin = 4;
  }
  if (key == 's'){
    down = false;
    bodcrx = 30;
    bodcry = 10;
    lwhlx = 5;
    rwhlx = 25;
    xcrlin1 = 0;
    xcrlin2 = 18;
    ycrlin = 4;
  } 
  if (key == 'p'){
    fast = false;
  }
  if (key == 'o'){
    slow = false;
  }
}
