Drop[] drops = new Drop[1000];

void setup()
{
  size(600, 400);

  for (int i =0; i< drops.length; i++)
  {
    drops[i] = new Drop();
  }
}

class Drop
{
  float x;
  float y;
  float z;
  float len;
  float yspeed;
  float thick;
  float splash;

  /*Properties 
    1.Rain Drops starting Position
    2.Rain Drops speed
    3.Rain Drops length
    4.Rain Drops thickness
    5.Rain Drops position using z axis, how far or near
    6.Rain Drops color
    7.Rain Drops Splash size
  */
  
  

  Drop()
  {
    x = random(0, width);
    y = random(-500, 10);
    z = random(0,20);
    len = random(4, 15);
  }

  void Rainfall()
  {
    len = map(z,0,20,4,15);
    yspeed = map(z,0,20,4,10);
    y += yspeed;

    if (y > height)
    {
      fill(255, 0, 200);
      splash = map(z,0,20,5,30);
      ellipse(x,y,splash,splash);
      x = random(0, width);
      y = random(-500, 10);
      len = random(4, 15);
    }
    
  }

  void Show()
  {
    thick = map(z,0,20,1,4);
    strokeWeight(thick);
    stroke(255, 0, 200);
    line(x, y, x, y+len);
  }
  
  
}

void draw()
{
  background(255);
  for (int i =0; i < drops.length; i++)
  {
    drops[i].Rainfall();
    drops[i].Show();
  }
}