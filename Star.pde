class Star
{
  float x;
  float y;
  float z;
  float pz;

  Star()
  {
    x=random(-width, width);
    y=random(-height, height);
    z=random(width);
    pz=z;
  }

  void Update()
  {
    float speed = map(mouseX, 0, width, 1, 50);
    z = z-speed;

    if (z<1)
    {
      z=width;
      x=random(-width, width);
      y=random(-height, height);
      pz=z;
    }
  }

  void Show()
  {
    fill(255);
    noStroke();
    float sx = map(x/z, 0, 1, 0, width);
    float sy = map(y/z, 0, 1, 0, height);
    float r = map(z, 0, width, 10, 1);

    //ellipse(sx, sy, r, r);

    float px = map(x/pz, 0, 1, 0, width);
    float py = map(y/pz, 0, 1, 0, height);

    pz =z;
    stroke(255);
    float thick = map(z, 0, width, 5, 1);
    strokeWeight(thick);
    //line(px, py, sx, sy);
    line(sx,sy,px,py);
  }
}