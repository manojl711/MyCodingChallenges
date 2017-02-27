//Star[] stars = new Star[1000];

Star[] stars;

/*
  1.Stars should be created from Centre of the screen to outwards
  2.Stars should have speed, that increase exponentially
  3.Stars thickeness (far and near)
*/

void setup()
{
  stars = new Star[1000];
  size(800, 800);
  for (int i=0; i<stars.length; i++)
  {
    stars[i] = new Star();
  }
}



void draw()
{
  background(0);
  translate(width/2,height/2);
  for(int i=0;i<stars.length;i++)
  {
    stars[i].Update();
    stars[i].Show();
  }
  
}