Spaceship hi;
Star[] starz = new Star[200];
//your variable declarations here
public void setup() 
{
	size(500,500);
	for(int i =0; i<starz.length; i++)
	{
		starz[i] = new Star();
	}
	hi = new Spaceship();
}
public void draw() 
{
	background(0);
	for(int i =0; i<starz.length; i++)
	{
		starz[i].show();
	}
	hi.show();
	hi.move();
}
public void keyPressed(){
	if (key == CODED)
	{
	    if (keyCode == UP)
	    {
	      hi.accelerate(.5);
	    }else if (keyCode == DOWN)
	    {
	        hi.accelerate(-.5);
	    } 
	  	else if(keyCode == LEFT)
		{
			hi.turn(-8);
		}else if(keyCode == RIGHT)
		{
		    hi.turn(8);
		}
		else if(keyCode == CONTROL )
		{
			hi.setDirectionX(0);
			hi.setDirectionY(0);
		}
		else if(keyCode == SHIFT)
		{
			hi.setDirectionX(0);
			hi.setDirectionY(0);
			hi.setCenterX((Math.random()*500));
			hi.setCenterY((Math.random()*500));
			hi.setPointDirection((Math.random()*360));
		}
	}
}

