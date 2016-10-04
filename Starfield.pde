Particle[] one 	= new Particle[500];


void setup()
{
	size(500,500);
	for(int i=0; i<one.length; i++)
	{
		one[i]= new NormalParticle();
	}
}
void draw()
{
	background(0);
	for(int i=0; i<one.length; i++)
	{
		one[i].show();
		one[i].move();
		
	}
	
	
}
class NormalParticle implements Particle
{
	double myX, myY, dTheta, dSpeed;
	int clr;
	NormalParticle()
	{
		myX=250;
		myY=250;
		dTheta=Math.PI*2*Math.random();
		dSpeed=Math.random()*5;
		//clr=color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	}

	void show()
	{
		//noStroke();
		fill(255,0,0);
		ellipse((float)myX,(float)myY,5,5);
	}

	void move()
	{
		
		myX=myX+(Math.cos(dTheta)*dSpeed);
		myY=myY+(Math.sin(dTheta)*dSpeed);
	}
}
interface Particle
{
	public void move();
	public void show();

}
class OddballParticle// implements Particle
{

}
class JumboParticle //uses inheritance
{
	//your code here
}

