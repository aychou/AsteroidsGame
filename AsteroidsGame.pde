Spaceship hi;
Star[] starz = new Star[200];
ArrayList<Asteroid> bye = new ArrayList<Asteroid>();
float distance;
float dist;
int later = 0;
ArrayList<Bullet> z = new ArrayList<Bullet>();
//your variable declarations here
public void setup() 
{
	size(800,800);
	for(int i =0; i<starz.length; i++)
	{
		starz[i] = new Star();
	}
	for(int c=0; c<10;c++)
	{
		bye.add(new Asteroid());
	}
	hi = new Spaceship();
	

}
public void draw() 
{
	background(0);
	later++;
	if (later%500==0)
	{
		bye.add(new Asteroid());
		//println(bye.size());

	}
	for(int i=0; i<starz.length; i++)
	{
		starz[i].show();
	}
	for(int i=0; i<z.size(); i++)
	{
		
		z.get(i).show();
		z.get(i).move();
	}	
	for (int i =0; i<bye.size();i++)
	{
		bye.get(i).show();
		bye.get(i).move();
		distance = (float)(dist((float)(bye.get(i).getCenterX()), (float)(bye.get(i).getCenterY()), (float)(hi.getCenterX()), (float)(hi.getCenterY())));
		if(distance <= 30)
		{
			bye.remove(i);
			i--;
		}
			for(int b =0; b<z.size(); b++)
			{
				dist = (float)(dist((float)(bye.get(i).getCenterX()), (float)(bye.get(i).getCenterY()), (float)(z.get(b).getCenterX()), (float)(z.get(b).getCenterY())));
				if(dist <= 30)
				{
					bye.remove(i);
					z.remove(b);
					break;
				}
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
	    }
	    if (keyCode == DOWN)
	    {
	        hi.accelerate(-.5);
	    } 
	  	if(keyCode == LEFT)
		{
			hi.turn(-8);
		}
		if(keyCode == RIGHT)
		{
		    hi.turn(8);
		}
		if(keyCode == CONTROL )
		{
			hi.setDirectionX(0);
			hi.setDirectionY(0);
		}
		if(keyCode == SHIFT)
		{
			hi.setDirectionX(0);
			hi.setDirectionY(0);
			hi.setCenterX((Math.random()*500));
			hi.setCenterY((Math.random()*500));
			hi.setPointDirection((Math.random()*360));
		}
	}
	if(key == ' ')
	{
		z.add(new Bullet(hi));
		println("pew");
	}
}

