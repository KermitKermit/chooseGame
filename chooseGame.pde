//it will have 2-4 choices every turn in the labrynth part of the game which is where you actually move and use items
//the combat menu where you can fight, run, defend, and use items
//you will also be able to use items in the labrynth as well
//progressing through the game will be based on random chance and your current score
//you will also have stats that will be determined by your base stats and any potions, armor or weapons you use
//you will be able to exit after you reach a certain score
//Room data
int roomCount = 4;
String [] description = new String[roomCount];
String [] description =
  {
    "Ye find yeself in a dungeon. Ye see a gate and a hole in the wall.",
    "You are in the LEFT CHAMBER. Go left to return to start, go right to see the dog statue.",
    "You went right",
    "The dog statue is so cool."
  };

//Player's data
int currentRoom = 0;
void setup()
  size(900,600);
  textAlign(CENTER);
  textSize(40);

  description[0] = "Ye find yeself in a dungeon. Ye see a gate and a hole in the wall.";
  description[1] = "You are in the LEFT CHAMBER. Go left to return to start, go right to see the dog statue.";
  description[2] = "You went right";
  description[3] = "The dog statue is so cool.";
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
  if( mouseX > width-100 ) //<>//
    choice = 2;
  if( mouseX < 100 )
    choice = 1;
    
  currentRoom = changeRoom();
  choice = -1;
}
