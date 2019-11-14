class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myColor;
  public Star()
  {
  		myColor=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  		myX= (int)(Math.random()*500);
  		myY= (int)(Math.random()*500);
  }
  public void show()
  {
  	fill(myColor);
  	ellipse(myX, myY, (int)(Math.random()*2)+1,(int)(Math.random()*2)+1);
  }
}
