PImage chil;
PImage bigChil;
public void setup()
{
size(700, 700);
int l=600;
chil = loadImage("chilluminati.png");
bigChil = loadImage("bigChillen.png");
}

public void draw()
{
image(bigChil,0,0);
sierpinski(50,650,600);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len>=100)
	{
		sierpinski(x, y, len/2);
		sierpinski(x+(len/2),y,len/2);
		sierpinski(x+(len/4),y-(len/2),len/2);
		image(chil,x+19, y-37.5);
		image(chil,x+(len/2)+19,y-37.5);
		image(chil,x+(len/4)+19,y-(len/2)-37.5);
	}
	else {
triangle(x, y, x+len/2, y-len, x+len, y);
	}
}