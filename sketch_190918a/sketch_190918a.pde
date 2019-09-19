float xPos =0;       //change in x pos
float yPos = 0;      //change in y pos
float spd = 1;       //speed factor
int topcrx = 20;     //top of car pos x
int topcry = 7;      //top of car pos y
int bodcrx = 30;     // bod of car pos x
int bodcry = 10;     //bod of car pos y
int ywhl = 10;       //wheel pos y
int lwhlx = 5;       // left wheel pos x
int rwhlx = 25;      // right wheel pos x
int ycrlin = 4;      //window line y pos
int xcrlin1= 0;      // window line 1 x pos
int xcrlin2 = 18;    // window line 2 x pos
int xwndshld = -1000;  // before clicked windshield pos x
int ywndshld = 1000;   //before clicked windowshield pos y
int xupwhl1 = -1000;   //x pos of whl 1 when up/dwn
int yupwhl1 = -1000;   // y pos of whl 1 when up/dwn
int rxupwhl1 = -1000;  //right x pos of whl 1 when up/dwn
int xupwhl2 = -1000;   //second x pos of whl 2 when up/dwn
int yupwhl2 = -1000;   //second y pos of whl 2 when up/dwn
int xtpcrbck = 0;     // x pos of car when backwards
int tpcrsz = 0; 

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
  background(0,100,100);

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
  rect(xPos+xtpcrbck, yPos-10,topcrx+tpcrsz,topcry); //top of car
  rect(xPos, yPos, bodcrx, bodcry); //body of car
  fill(0);
  ellipse(xPos+lwhlx, yPos+ywhl,10,10); //left wheel
  ellipse(xPos+rwhlx, yPos+ywhl,10,10); //rear wheel
  rect(xPos + xcrlin1+xtpcrbck,yPos-ycrlin, 2,5); //line 1
  rect(xPos+xcrlin2+xtpcrbck,yPos-ycrlin, 2,5);   //line 2
  fill(#CBE4F5);
  rect(xPos+xwndshld,yPos-ywndshld,18,5);  // windshield
  fill(0);
  ellipse(xPos+xupwhl1,yPos+yupwhl1,2,10);   //first pair of up wheels
  ellipse(xPos+rxupwhl1, yPos+yupwhl1,2,10);  
  ellipse(xPos+xupwhl1, yPos+yupwhl2,2,10);  //second pair of up wheels
  ellipse(xPos+xupwhl2,yPos+yupwhl2,2,10);
  
}

void keyPressed() {
  if (key == 'a') {       // if a is pressed, boolean left will be true, and the x coordinate will decreased
    left = true;
    xtpcrbck = 10;
  }
  if (key == 'd'){        // if d is pressed, it will move right
    right = true;
  }
  if (key == 'w') {        // if w is pressed, it will move up and the car will look different
    up = true;
    bodcrx = 20;           //when w is pressed, x length of the car body becomes 20
    bodcry = -30;          //when w is pressed, y length of the car body becomes 30
    lwhlx =  -1000;        // left wheel goes off screen
    rwhlx = -1000;          // right wheel goes off screen
    xcrlin1 = -1000;       // line 1 goes off screen
    xcrlin2= -1000;       // line 2 goes off screen
    ycrlin = -1000;
    xwndshld = 1;       // windshield x pos goes to 1
    ywndshld = 22;      //windshield y pos goes to 22
    xupwhl1 = 0;        //x wheel pos goes to 0
    yupwhl1 = -6;       // whl 1 moves to y = -6 from pos
    rxupwhl1 = 20;      // whl 1 moves to x = 20 from pos
    yupwhl2 = -23;      // wheel 2 moves up 23
    xupwhl2 = 20;       // wheel 2 moves right 20
    tpcrsz = -9;        // top of the car shrinks
  }
  if (key == 's') {       // if s is pressed, it will move down and the car will look different
    down = true;       
    bodcrx = 20;        //when s is pressed, x length of the car body becomes 20
    bodcry = -30;       //when s is pressed, y length of the car body becomes 30
    lwhlx =  -1000;     // left wheel goes off screen
    rwhlx = -1000;      // right wheel goes off screen
    xcrlin1 = -1000;    // line 1 goes off screen
    xcrlin2= -1000;     // line 2 goes off screen
    ycrlin = -1000;
    xwndshld = 1;       //windshield x pos goes to 1
    ywndshld = 11;      //windshield y pos goes to 11
    xupwhl1 = 0;
    yupwhl1 = -6;
    rxupwhl1 = 20;
    yupwhl2 = -23;
    xupwhl2 = 20;
    tpcrsz = -9;
  }
  if (key == 'p') {      // if p is pressed, it will go faster
    fast = true;
  }
  if (key == 'o') {      // if o is pressed, it will slow down
    slow = true;
  }
}

void keyReleased() {
  if (key == 'a'){       // if a is released, it will stop moving left
    left = false;
    xtpcrbck = 0;
  }
  if (key == 'd'){        // if d is released, it will stop moving right
    right = false;
  }
  if (key == 'w') {       // if w is released, it will stop moving and the car will look the same as before
    up = false;
    bodcrx = 30;
    bodcry = 10;
    lwhlx = 5;
    rwhlx = 25;
    xcrlin1 = 0;
    xcrlin2 = 18;
    ycrlin = 4;
    xwndshld = -1000;
    ywndshld = 1102;
    xupwhl1 = -1000;
    yupwhl1 = -1000;
    rxupwhl1 = -1000;
    yupwhl2 = -1003;
    xupwhl2 = -1000;
    tpcrsz = 0;
  }
  if (key == 's'){      // if s is released, it will stop moving and the car will look the same as before
    down = false;
    bodcrx = 30;
    bodcry = 10;
    lwhlx = 5;
    rwhlx = 25;
    xcrlin1 = 0;
    xcrlin2 = 18;
    ycrlin = 4;
    xwndshld = -1111;
    ywndshld = 1000;
    xupwhl1 = -1000;
    yupwhl1 = -1000;
    rxupwhl1 = -1000;
    yupwhl2 = -1003;
    xupwhl2 = -1000;
    tpcrsz = 0;
  } 
  if (key == 'p'){      //if p is released, it will stop increasing in speed
    fast = false;
  }
  if (key == 'o'){      // if o is released, it will stop decreasing in speed
    slow = false;
  }
}
