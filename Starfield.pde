//your code here
void setup()
{
	size(500,500);
}
void draw()
{
	NormalParticle one 	= new NormalParticle();

	one.show();
	one.move();
}
class NormalParticle
{
	double x, y, dTheta, dSpeed;
	int clr;
	NormalParticle()
	{
		x=0;
		y=0;
		dTheta=Math.PI*2*Math.random();
		dSpeed=Math.random()*10;
		clr=color(0);
	}

	void show()
	{
		ellipse((float)x,(float)y,2,2);
	}

	void move()
	{
		x=x+(Math.cos(dTheta)*dSpeed);
		y=y+(Math.sin(dTheta)*dSpeed);
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

