Die bob; 
double numGen = (Math.random()*6);
void setup()
{
	size(300,300);
	noLoop();
	textAlign(CENTER);
}
void draw()
{
	numGen = (Math.random()*6);
	for (int y=10;y<=100;y+=30)
    {
      	for(int x=10;x<=100;x+=30)
      	{
      		bob.roll();
      		bob = new Die(x,y);
      		bob.show();
      	}
    }

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int dNum;
	int myX, myY; 
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}
	void roll()
	{
		if (numGen <= 1)
		{
			dNum = 1;
		}
		else if (numGen <= 2)
		{
			dNum = 2;
		}
		else if (numGen <= 3)
		{
			dNum = 3;
		}
		else if (numGen <= 4)
		{
			dNum = 4;
		}
		else if (numGen <= 5)
		{
			dNum = 5;
		}
		else 
		{
			dNum = 6;
		}
	}
	void show()
	{
		//your code here
		rect(myX,myY,20,20);
		
	}
}

