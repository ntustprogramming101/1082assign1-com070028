

PImage bg,soil,groundHog,life,robot,soldier;

final int offsetHeight = 37;
final int offsetWidth = 25;

int measure=80;
int soldierY=80*floor(random(2,6));
int soldierX=-80;

float robotX=floor(random(160,560)); 
float robotY=80*floor(random(2,6));

float lazorSpeed=2;
float  lazorX1; //left X
float  lazorX2; //right X
float lazorY;

void setup() {
  size(640, 480, P2D);
  // Enter Your Setup Code Here

bg= loadImage("img/bg.jpg"); 
soil= loadImage("img/soil.png"); 
groundHog= loadImage("img/groundhog.png");
life= loadImage("img/life.png");
robot= loadImage("img/robot.png");
soldier= loadImage("img/soldier.png");

  lazorX1 = robotX+offsetWidth;
  lazorX2 = lazorX1;
  lazorY = robotY+offsetHeight;


}

void draw() {

//bg initial
image(bg,0,0);
image(soil,0,2*measure);
//life
image(life,10,10);
image(life,80,10);
image(life,150,10);

//sun
noStroke();
fill(255, 255, 0);
ellipse(590,50,130,130);
noStroke();
fill(253,184, 19);
ellipse(590,50,120,120);

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

  //robot lazor initial
stroke(255,0,0);
strokeWeight(10);
line(lazorX1,lazorY,lazorX2,lazorY);

    //robot laser
      //laser's offset
      line(lazorX1, lazorY, lazorX2, lazorY);
    
      ////robot lazor moving
      if(lazorX2 > robotX-measure*2){
        
        if(lazorX1-lazorX2>=40){  // the lazor width
        lazorX2-= 2;  
        lazorX1 -= 2;
        }else{
          lazorX2 -= 2;
        }
        
      }else{
        //reset the laser
        lazorX1 = robotX+offsetWidth;
        lazorX2 = lazorX1;
      }



  
}
