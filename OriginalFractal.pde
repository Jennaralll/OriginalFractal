int myX = 0; 
int myY = 0;
int mySiz = 0;
public void setup(){
	size(600, 600);
}
// void keyPressed(){
// 	if(value == 's')
// 	}
// }

public void mousePressed(){
	fill((int)(Math.random()*0), (int)(Math.random()*50), (int)(Math.random()*150));
}
public void draw(){
	background(0, 0, 0);
	second(300, 300, 300);
	Fractal(300, 300, 600);
	if(mySiz <= 1600){
		Fractal(myX + 300, myY + 300, mySiz + 10);
		mySiz += 100;
	}
	else if(mySiz > 1600){
		mySiz = 0;
	}

}
public void Fractal(int x, int y, int siz){
	// fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	ellipse(x, y, siz/2, siz/2);
	// ellipse(x ,  y + 200, siz/2, siz/2);
	if(siz > 10){
		Fractal(x + (siz/2), y, siz/2);
		Fractal(x - (siz/2), y, siz/2);
	}
}
public void second(int x, int y, int siz){
	triangle(x, y, x, y, siz/2 , siz/2);
	if(siz > 9){
		second(x, y, siz/2);
		second(x + (siz/2), y, siz/2);
		second(x+(siz/4), y - (siz/2), siz/2);
	}
}