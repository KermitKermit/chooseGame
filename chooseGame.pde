//it will have 2-4 choices every turn in the labyrinth part of the game which is where you actually move and use items
//the combat menu where you can fight, run, defend, and use items
//you will also be able to use items in the labyrinth as well
//progressing through the game will be based on random chance and your current score
//you will also have stats that will be determined by your base stats and any potions, armor or weapons you use
//you will be able to exit after you reach a certain score
//might not make the inventory thing yet
//Room data
String [] description =
  {
    "You are in a constantly shifting labyrinth, try to escape",
    "You encountered a goblin",
    "You found an health potion",
    "You found better armor",
    "You found a better weapon",
    "You are in an empty chamber",
    "You escaped the labyrinth!",
    "You encountered a dragon",
    "You seduced it and settled down",
    "You killed it",
    "You died trying to kill it",
    "Game over, you didn't escape the labyrinth",
    "You died from a brain aneurysm",
    "You found a chest",
    "The chest was a mimic and killed you"
  };

//Player's data
int currentRoom = 0;
float chance = 0;
float health = 10;
float attack = 1;
float defend = 0;

void setup()
{
  size(900,600);
  textAlign(CENTER);
  textSize(40);
}

/*
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

*/

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
  fill(160,60,60);
  if(mousePressed && mouseX < 100)
  {
    fill(220,60,60);
  }
  rect(0,0,100,height);
  
  //Second Button
  fill(60,160,60);
  if(mousePressed && mouseX > width-100)
  {
    fill(60,220,60);
  }
  rect(width,0,-100,height);
}

void mouseReleased()
{
  if(mouseX > width-100 || mouseX < 100)
  chance = random(0,100);
  if(chance > 0 && chance <= 7)
    currentRoom = 1;
  else if(chance <= 11)
    currentRoom = 2;
  else if(chance <= 15)
    currentRoom = 3;
  else if(chance <= 19)
    currentRoom = 4;
  else if(chance <= 99.75)
    currentRoom = 5;
  else
    currentRoom = 6;
}
