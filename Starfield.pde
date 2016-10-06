Particle[] one 	= new Particle[500];


void setup()
{
	size(500,500);
	for(int i=0; i<one.length; i++)
	{
		one[i]= new NormalParticle();
	}
	one[0]= new OddballParticle();
	one[1]= new OddballParticle();
	one[2]= new OddballParticle();
	one[3]= new JumboParticle();
}
void draw()
{
	background(0);
	for(int i=0; i<one.length; i++)
	{
		one[i].show();
		one[i].move();

		for(int k=0; k<3; k++)
		{
			if(((OddballParticle)one[k]).myX>510 ||((OddballParticle)one[k]).myY>510 || ((OddballParticle)one[k]).myX<0 || ((OddballParticle)one[k]).myY<0)
			{
				((OddballParticle)one[k]).myX=250;
				((OddballParticle)one[k]).myY=250;
				one[k].move();
			}
		}
		for(int j=3; j<one.length; j++)
		{
			if(((NormalParticle)one[j]).myX>510 ||((NormalParticle)one[j]).myY>510 || ((NormalParticle)one[j]).myX<0 || ((NormalParticle)one[j]).myY<0)
			{
				((NormalParticle)one[j]).myX=250;
				((NormalParticle)one[j]).myY=250;
				one[j].move();
			}
		}
		
	}
	
	
}
class NormalParticle implements Particle
{
	double myX, myY, dTheta, dSpeed;
	int clr, s;
	NormalParticle()
	{
		myX=250;
		myY=250;
		dTheta=Math.PI*2*Math.random();
		dSpeed=Math.random()*5;
		clr=color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		s=10;
	}

	public void show()
	{
		noStroke();
		fill(clr);
		ellipse((float)myX,(float)myY,s,s);
	}

	public void move()
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
class OddballParticle implements Particle
{
	double myX, myY, dTheta, dSpeed;
	int clr;
	OddballParticle()
	{
		myX=250;
		myY=250;
		dTheta=Math.PI*2*Math.random();
		dSpeed=Math.random()*3;
		clr=color(255,0,0);
	}

	public void show()
	{
		
		
		fill(clr);
		rect((float)myX,(float)myY,15,15);
		
	}

	public void move()
	{
		
		myX=myX+(Math.cos(dTheta)*dSpeed);
		myY=myY+(Math.sin(dTheta)*dSpeed);
	}}
class JumboParticle extends NormalParticle
{
	JumboParticle()
	{
		s=50;
	}
}

