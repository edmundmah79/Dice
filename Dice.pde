Die bob; 
double numGen = (Math.random()*6);
int diceColor1 = (int)(Math.random()*256);
int diceColor2 = (int)(Math.random()*256);
int diceColor3 = (int)(Math.random()*256);
int myNum = 0;
void setup()
{
	size(1000,1000);
	noLoop();
	textAlign(CENTER);
}
void draw()
{
	background(125);
	for (int y=65;y<975;y+=70)
    {
      	for(int x=45;x<955;x+=70)
      	{
      		numGen = (Math.random()*6);
      		diceColor1 = (int)(Math.random()*256)+50;
			diceColor2 = (int)(Math.random()*256)+50;
			diceColor3 = (int)(Math.random()*256)+50;
      		bob = new Die(x,y);
      		bob.roll();
      		myNum = myNum + bob.dNum;
      		bob.show();
      	}
    text("Number Rolled:" +  myNum, 500, 20);
    }
}
void mousePressed()
{
	
	myNum = 0;
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
		stroke(0);
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

