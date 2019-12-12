class Spaceship extends Floater
{   
    public Spaceship()
    {
    	corners =4;
    	int[] xs = {-8, 16, -8, -2};
    	int[] ys = {-8, 0, 8, 0};
    	xCorners= xs;
    	yCorners =ys;
    	myColor = color(255,255,0);
    	myCenterX=400;
    	myCenterY=400;
    	myDirectionX=0;
    	myDirectionY =0;
    	myPointDirection=0;
    }
    public void setDirectionX(double x){
    	myDirectionX=x;
    }
    public void setDirectionY(double y){
    	myDirectionY=y;
    }
    public void setCenterX(double x){
    	myCenterX=x;
    }
    public void setCenterY(double y){
    	myCenterY=y;
    }
    public void setPointDirection(double n){
    	myPointDirection=n;
    }
    public float getCenterX(){
        return (float)myCenterX;
    }
    public float getCenterY(){
        return (float)myCenterY;
    }
    public float getDirectionX(){
        return (float)myDirectionX;
    }
    public float getDirectionY(){
        return (float)myDirectionY;
    }
    public float getPointDirection(){
        return (float)myPointDirection;
    }
    
}
