class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid()
	{
		corners =6;
    	int[] xs = {-11, -11, -5, 0,11,7};
    	int[] ys = {-10, 2,15, 10, 9, -6};
    	xCorners= xs;
    	yCorners =ys;
    	rotSpeed=(int)(Math.random()*5-(int)(Math.random()*10));
    	myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    	myCenterX=(int)(Math.random()*800);
    	myCenterY=(int)(Math.random()*800);
    	myDirectionX=(int)(Math.random()*5);
    	myDirectionY =(int)(Math.random()*5);
    	myPointDirection=(int)(Math.random()*5);
	}
	public void move()
	{
		turn(rotSpeed);
		super.move();
	}
	public float getDirectionX(){
    	return (float)(myDirectionX);
    }
    public float getDirectionY(){
    	return (float)myDirectionY;
    }
    public float getCenterX(){
    	return (float)myCenterX;
    }
    public float getCenterY(){
    	return (float)myCenterY;
    }
    public float getPointDirection(){
    	return (float)myPointDirection;
    }
}