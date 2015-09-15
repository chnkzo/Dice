
Die charles;
int total;
String rTotal;
void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	total = 0;
	background(50);
	for(int r = 0;r <=400;r=r+100)
	{
		for(int c = 0;c <=300;c=c+100)
		{
			charles = new Die(r,c);
			charles.show();
			total += charles.rNum;
			rTotal = "" + total;
		}
	}
	textSize(25);
	textAlign(CENTER,BASELINE);
	text("Total: " + rTotal,50,450);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX,myY,rNum;
	Die(int x, int y) 
	{
		myX = x;
		myY = y;
		roll();
	}
	void roll()
	{
	rNum = (int)(Math.random()*6)+ 1;
	}
	void show()
	{
		fill(255);
		rect(myX,myY, 100, 100);
		fill(0);
		if(rNum == 1)
		{
			ellipse(myX + 50,myY + 50,20,20);
		}
		if(rNum == 2)
		{
			ellipse(myX +25,myY +25,20,20);
			ellipse(myX +75,myY +75,20,20);
		}
		if(rNum == 3)
		{
			ellipse(myX +25,myY +25,20,20);
			ellipse(myX +50,myY +50,20,20);
			ellipse(myX +75,myY +75,20,20);
		}
		if(rNum == 4)
		{
			ellipse(myX +25,myY +25,20,20);
			ellipse(myX +75,myY +75,20,20);
			ellipse(myX +75,myY +25,20,20);
			ellipse(myX +25,myY +75,20,20);
		}
		if(rNum == 5)
		{
			ellipse(myX +25,myY +25,20,20);
			ellipse(myX +75,myY +75,20,20);
			ellipse(myX +75,myY +25,20,20);
			ellipse(myX +25,myY +75,20,20);
			ellipse(myX + 50 ,myY + 50,20,20);
		}
		if(rNum == 6)
		{
			ellipse(myX +25,myY +25,20,20);
			ellipse(myX +75,myY +75,20,20);
			ellipse(myX +75,myY +25,20,20);
			ellipse(myX +25,myY +75,20,20);
			ellipse(myX +25,myY +50,20,20);
			ellipse(myX +75,myY +50,20,20);
		}

	}
}
