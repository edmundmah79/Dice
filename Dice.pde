Die bob; 
void setup()
{
	size(300,300);
	noLoop();
	textAlign(CENTER);
}
void draw()
{
	bob = new Die(150,150);
	bob.roll();
	bob.show();

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
		if ((Math.random()*6) < 1)
		{
			dNum = 1;
		}
		else if ((Math.random()*6) < 2)
		{
			dNum = 2;
		}
		else if ((Math.random()*6) < 3)
		{
			dNum = 3;
		}
		else if ((Math.random()*6) < 4)
		{
			dNum = 4;
		}
		else if ((Math.random()*6) < 5)
		{
			dNum = 5;
		else 
		{
			dNum = 6;
		}
	}
	void show()
	{
		//your code here
		System.out.println(dNum);  
	}
}
