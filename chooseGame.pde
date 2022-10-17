//it will have 2-4 choices every turn in the labyrinth part of the game which is where you actually move and use items
//the combat menu where you can fight, run, defend, and use items
//you will also be able to use items in the labyrinth as well
//progressing through the game will be based on random chance and your current score
//you will also have stats that will be determined by your base stats and any potions, armor or weapons you use
//you will be able to exit after you reach a certain score
//Room data
String [] description =
  {
    "You are in a constantly shifting labyrinth, try to escape",
    "You went left",
    "You went right",
    "You encountered a goblin",
    "You are in an empty chamber",
    "You found an health potion",
    "You found better armor",
    "You found a better weapon"
  };

//Player's data
int currentRoom = 0;
int choice = 0;

void setup()
{
  size(900,600);
  textAlign(CENTER);
  textSize(40);
}

int changeRoom()
{
  if( choice == 1 )
    switch( currentRoom )
    {
      case 0:
        return 1;
      default:
        return 0;
    }
  else
    switch( currentRoom )
    {
      case 0:
        return 2;
      case 1:
        return 3;
      default:
        return 0;
    }
}

//********************************************//

void draw()
{
  background(0);
  
  drawButtons();
  
  //Draws the text in the middle of the screen
  fill(255);
  text(description[currentRoom],width/2-250,height/2,500,400);
}

void drawButtons()
{
  stroke(100);
  strokeWeight(4);
  
  //First Button
  fill(160);
  if(mousePressed && mouseX < 100)
  {
    fill(120);
  }
  rect(0,0,100,height);
  
  //Second Button
  fill(160);
  if(mousePressed && mouseX > width-100)
  {
    fill(120);
  }
  rect(width,0,-100,height);
}

void mouseReleased()
{
    choice = -1;
  if( mouseX > width-100)
    choice = 2;
  if( mouseX < 100)
    choice = 1;
    
  if(mouseX > width-100 || mouseX < 100)
  currentRoom = changeRoom();
  choice = -1;
} //<>//
