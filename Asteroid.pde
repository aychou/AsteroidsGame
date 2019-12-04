class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid()
	{
		corners =6;
    	int[] xs = {-11, 7, 13, 6,-11,-5};
    	int[] ys = {-8, -8, 0, 10, 8, 0};
    	xCorners= xs;
    	yCorners =ys;
    	rotSpeed=5;
    	myColor = color(255,255,255);
    	myCenterX=(int)(Math.random()*500);
    	myCenterY=(int)(Math.random()*500);
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