class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myColor;
  public Star()
  {
  		myColor=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  		myX= (int)(Math.random()*800);
  		myY= (int)(Math.random()*800);
  }
  public void show()
  {
  	fill(myColor);
  	ellipse(myX, myY, (int)(Math.random()*2)+1,(int)(Math.random()*2)+1);
  }
}
