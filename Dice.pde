Die bob; 
double numGen = (Math.random()*6);
int diceColor1 = (int)(Math.random()*256);
int diceColor2 = (int)(Math.random()*256);
int diceColor3 = (int)(Math.random()*256);
void setup()
{
	size(1000,1000);
	noLoop();
	textAlign(CENTER);
}
void draw()
{
	for (int y=10;y<990;y+=70)
    {
      	for(int x=10;x<990;x+=70)
      	{
      		numGen = (Math.random()*6);
      		diceColor1 = (int)(Math.random()*256);
			diceColor2 = (int)(Math.random()*256);
			diceColor3 = (int)(Math.random()*256);
      		bob = new Die(x,y);
      		bob.roll();
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
		strokeWeight(2);
		rect(myX,myY,60,60);
		strokeWeight(10);
		fill(diceColor1,diceColor2,diceColor3);
		if (diceColor1 < 50 && diceColor2 < 50 && diceColor3 < 50)
      	{
      		stroke(255,255,255);
      	}
		else 
		{
			stroke(0,0,0);
		}
		if (dNum == 1)
		{
			point(myX+30,myY+30);
		}
		else if (dNum == 2)
		{
			point(myX+15,myY+15);
			point(myX+45,myY+45);
		}
		else if (dNum == 3)
		{
			point(myX+15,myY+15);
			point(myX+30,myY+30);
			point(myX+45,myY+45);
		}
		else if (dNum == 4)
		{
			point(myX+15,myY+15);
			point(myX+45,myY+15);
			point(myX+15,myY+45);
			point(myX+45,myY+45);
		}
		else if (dNum == 5)
		{
			point(myX+15,myY+15);
			point(myX+45,myY+15);
			point(myX+15,myY+45);
			point(myX+45,myY+45);
			point(myX+30,myY+30);
		}
		else
		{
			point(myX+15,myY+15);
			point(myX+45,myY+15);
			point(myX+15,myY+45);
			point(myX+45,myY+45);
			point(myX+15,myY+30);
			point(myX+45,myY+30);
		}
	}
}

