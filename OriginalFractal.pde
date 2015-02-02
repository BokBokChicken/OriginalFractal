public void setup()
{
  size(950,950);
  background(0);
}
public void draw()
{
  origFractal(250,250,400);
  origFractal(250,700,400);
  origFractal(700,250,400);
  origFractal(700,700,400);
}
public void origFractal(int x, int y, int siz)
{
  ellipse(x, y, siz, siz);
  int newSiz = siz/2;
  if(siz > 10)
  {
  	origFractal(x + newSiz/2, y, newSiz);
  	origFractal(x - newSiz/2, y, newSiz);
  	origFractal(x, y + newSiz/2, newSiz);
  	origFractal(x, y - newSiz/2, newSiz);
  }
}
