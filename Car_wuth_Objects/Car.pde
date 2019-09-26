class Car{
  
  //properties
  float xPos;       //change in x pos
  float yPos; 
  float spd;
  int bodcrx;     // bod of car pos x
  int bodcry;
  int ywhl;       //wheel pos y
  int lwhlx;       // left wheel pos x
  int rwhlx;      // right wheel pos x
  int ycrlin;      //window line y pos
  int xcrlin1;      // window line 1 x pos
  int xcrlin2; 
  int xwndshld;  // before clicked windshield pos x
  int ywndshld;   //before clicked windowshield pos y
  int xupwhl1;   //x pos of whl 1 when up/dwn
  int yupwhl1;   // y pos of whl 1 when up/dwn
  int rxupwhl1;  //right x pos of whl 1 when up/dwn
  int xupwhl2;   //second x pos of whl 2 when up/dwn
  int yupwhl2;   //second y pos of whl 2 when up/dwn
  int xtpcrbck;     // x pos of car when backwards
  int tpcrsz; 
  int topcrx;     //top of car pos x
  int topcry;
  boolean right;
  boolean left;
  boolean down;
  boolean up;
  boolean fast;
  boolean slow;
  
  
  
  //constructor
  Car(){
  xPos =500;       //change in x pos
  yPos = 400; 
  spd=1;
  bodcrx = 30;     // bod of car pos x
  bodcry = 10;
  ywhl = 10;       //wheel pos y
  lwhlx = 5;       // left wheel pos x
  rwhlx = 25;      // right wheel pos x
  ycrlin = 4;      //window line y pos
  xcrlin1= 0;      // window line 1 x pos
  xcrlin2 = 18; 
  xwndshld = -1000;  // before clicked windshield pos x
  ywndshld = 1000;   //before clicked windowshield pos y
  xupwhl1 = -1000;   //x pos of whl 1 when up/dwn
  yupwhl1 = -1000;   // y pos of whl 1 when up/dwn
  rxupwhl1 = -1000;  //right x pos of whl 1 when up/dwn
  xupwhl2 = -1000;   //second x pos of whl 2 when up/dwn
  yupwhl2 = -1000;   //second y pos of whl 2 when up/dwn
  xtpcrbck = 0;     // x pos of car when backwards
  tpcrsz = 0; 
  topcrx = 20;     //top of car pos x
  topcry = 7;
  right = false;
  left = false;
  down = false;
  up = false;
  fast = false;
  slow = false;
  }
  
  
  //methods
  
  void display(){
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
  
}
  
 void move(){
   
}



//Pressed Methods
void a(){
  left = true;
  xtpcrbck = 10;
}

void d(){
   right = true;
}

void w(){
  up = true;
    bodcrx = 20;         //when w is pressed, x length of the car body becomes 20
    bodcry = -30;        //when w is pressed, y length of the car body becomes 30
    lwhlx =  -1000;      // left wheel goes off screen
    rwhlx = -1000;       // right wheel goes off screen
    xcrlin1 = -1000;     // line 1 goes off screen
    xcrlin2= -1000;      // line 2 goes off screen
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

void s(){
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
    xupwhl1 = 0;        //x wheel pos goes to 0
    yupwhl1 = -6;       // whl 1 moves to y = -6 from pos
    rxupwhl1 = 20;      // whl 1 moves to x = 20 from pos
    yupwhl2 = -23;      // wheel 2 moves up 23
    xupwhl2 = 20;       // wheel 2 moves right 20
    tpcrsz = -9;        // top of the car shrinks
}

void p(){
  fast = true;
}

void o(){
   slow = true;
}



//Released Methods
void aReleased(){
   left = false;
    xtpcrbck = 0;
}
void dReleased(){
 right = false; 
}
void wReleased(){
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

void sReleased(){
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

void pReleased(){
   fast = false;
}

void oReleased(){
    slow = false;
}
}
