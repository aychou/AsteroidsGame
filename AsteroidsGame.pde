Spaceship hi;
Star[] starz = new Star[200];
ArrayList<Asteroid> bye = new ArrayList<Asteroid>();
float distance;
int later = 0;
//your variable declarations here
public void setup() 
{
	size(500,500);
	for(int i =0; i<starz.length; i++)
	{
		starz[i] = new Star();
	}
	for(int i=0; i<10;i++)
	{
		bye.add(new Asteroid());
	}
	hi = new Spaceship();
	
}
public void draw() 
{
	background(0);
	later++;
	if (later%600==0)
	{
		bye.add(new Asteroid());
		println(bye.size());
	}
	for(int i=0; i<starz.length; i++)
	{
		starz[i].show();
	}
	for (int i =0; i<bye.size();i++)
	{
		distance = (float)(dist((float)(bye.get(i).getCenterX()), (float)(bye.get(i).getCenterY()), (float)(hi.getCenterX()), (float)(hi.getCenterY())));
		bye.get(i).show();
		bye.get(i).move();	
		if(distance <= 10)
		{
			bye.remove(i);
			i--;
		}
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

