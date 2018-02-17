

float   Mercury_Angle  =   0.001; 
float Venus_Angle = 0.1;
float Earth_Angle = 0.067;
float Moon_Angle = 0.12;
float  sunX; // sets the position of the sun
float sunY; //sets the position of the sun
float   Mercury_Distance  =   50; // distance of the planet from the sun
float Venus_Distance = 100;
float Earth_Distance = 175;
float Moon_Distance = 25; //distance of the moon to the Earth
final float   Mercury_Speed   =  0.005; 
final float Venus_Speed = 0.008;
final float Earth_Speed = 0.0036;
final float Moon_Speed = 0.12;
float Mercury_X; //positions for the planetes and Moon
float Mercury_Y;
float Venus_X;
float Venus_Y;
float Earth_X;
float Earth_Y;
float Moon_X;
float Moon_Y;

float green; //colour setup
float blue ; // coloue set up for future change

void setup  () {
  size   (800, 400);  
  smooth  () ;
}


void  draw  () {  
  background (0);

  drawAxis();
  drawPlanetes();
  rotatePlanetes();
}

void drawPlanetes() { //draw planetes 
  sunX = width/2;
  sunY = height/2;

  green = random(255);
  blue = random (255);

  noStroke();
  fill(#FAFF00);
  ellipse(sunX, sunY, 50, 50); // draws a sun
  fill(#FF0000);
  ellipse  ( Mercury_X, Mercury_Y, 20, 20); //draws Mercury
  fill(#FFC400);
  ellipse (Venus_X, Venus_Y, 3*40/4, 3*40/4); // draws Venus
  fill(0, green, blue);
  ellipse (Earth_X, Earth_Y, 20, 20); ///draws Earth
  fill(#7C8486);
  ellipse (Moon_X, Moon_Y, 10, 10); //draws Moon
}

void drawAxis() { // draw axis that represent the path of the planet
  stroke(255);

  noFill();
  ellipse(sunX, sunY, 97, 97);
  ellipse(sunX, sunY, 197, 197);
  ellipse(sunX, sunY, 355, 355);
}

void rotatePlanetes() { //calculates the rotation of the planetes around the sun as well as text 
  Mercury_X  =  sunX +  cos (Mercury_Angle)  *  Mercury_Distance ; //calculation of the rotation around the sun
  Mercury_Y  =  sunY  + sin  (Mercury_Angle)  * Mercury_Distance ; 
  Mercury_Angle  +=  Mercury_Speed;
  fill(#FF0000);
  text("Mercury", Mercury_X+10, Mercury_Y-10);

  Venus_X = sunX + cos(Venus_Angle) * Venus_Distance;
  Venus_Y = sunY + sin(Venus_Angle) * Venus_Distance;
  Venus_Angle   += Venus_Speed;
  fill(#FFC400);
  text ("Venus", Venus_X+15, Venus_Y-15);

  Earth_X = sunX + cos(Earth_Angle) * Earth_Distance;
  Earth_Y = sunY + sin(Earth_Angle) * Earth_Distance;
  Earth_Angle   += Earth_Speed;
  fill(#00CAFF);
  text("Earth", Earth_X+10, Earth_Y-10);

  Moon_X = Earth_X + cos(Moon_Angle) * Moon_Distance; //calculation of the rotation around the Earth
  Moon_Y = Earth_Y + sin(Moon_Angle) * Moon_Distance;
  Moon_Angle   += Moon_Speed;
  fill(#7C8486);
  text("Moon", Earth_X+25, Earth_Y-25);
}