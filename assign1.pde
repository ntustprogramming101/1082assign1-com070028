

PImage bg,soil,groundHog,life,robot,soldier;

float measure=80;
int soldierY=80*floor(random(3,6));
float soldierX=0;

float robotX=random(160,560); 
int robotY=80*floor(random(3,6));

float lazorSpeed=2;
float  lazorX=robotX-25; 
int lazorY=robotY+37;

void setup() {
  size(640, 480, P2D);
  // Enter Your Setup Code Here

bg= loadImage("bg.jpg"); 
soil= loadImage("soil.png"); 
groundHog= loadImage("groundhog.png");
life= loadImage("life.png");
robot= loadImage("robot.png");
soldier= loadImage("soldier.png");



}

void draw() {
  // Enter Your Code Here

image(bg,0,0);
image(soil,0,2*measure);
//life
image(life,10,10);
image(life,80,10);
image(life,150,10);

//grass
fill(124,204,25);
noStroke();
rect(0,2*measure-15,8*measure,15);

//groundhog
image(groundHog,280,1*measure);


//soldier and its movement
image(soldier,soldierX,soldierY);
soldierX+=5;
soldierX%=640+80;

//robot
image(robot,robotX,robotY);

//robot lazor
fill(255,0,0);
rect(lazorX,lazorY,40,10);
lazorX-=2;

if(lazorX<-40){lazorX=robotX-25;

}

//sun
fill(255, 255, 0);
ellipse(590,50,130,130);

fill(253,184, 19);
ellipse(590,50,120,120);



}
