
public void setup(){
	size(600, 600);
}
public void mouseDragged(){
	
}
public void mousePressed(){
	fill((int)(Math.random()*100), (int)(Math.random()*100), (int)(Math.random()*100));
}
public void draw(){
	background(0, 0, 0);
	second(300, 300, 300);
	Fractal(300, 300, 600);
}
public void Fractal(int x, int y, int siz){
	// fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	ellipse(x, y, siz/2, siz/2);
	if(siz > 0){
		Fractal(x + siz/2 , y, siz/2);
		Fractal(x - siz/2, y, siz/2);
	}
}
public void second(int x, int y, int siz){
	if(siz > 20){
		triangle(x, y, x, y, x , y);
	}
	else{
		second(x, y, siz/2);
		second(x + (siz/2), y, siz/2);
		second(x+(siz/4), y - (siz/2), siz/2);
	}
}