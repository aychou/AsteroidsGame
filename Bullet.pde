class Bullet extends Floater
{
	Bullet(Spaceship theship)
	{
		double dRadians = myPointDirection*(Math.PI/180);
		myColor = color(255,255,255);
    	myCenterX=theship.getCenterX();
    	myCenterY=theship.getCenterY();
    	myDirectionX= theship.getDirectionX();
    	myDirectionY = theship.getDirectionY();
    	myPointDirection=theship.getPointDirection();
    	accelerate(6);
	}
	public void show()
	{
		fill(255,0,0);
		ellipse((float)(myCenterX),(float)(myCenterY),10,10);
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