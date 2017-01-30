public void setup(){
	size(600, 600);
}
public void draw(){
	background(0, 0, 0);
	Fractal(300, 300, 100);
}
public void Fractal(int x, int y, int size){
	fill(255, 255, 255);
	ellipse(x, y, size/2, size/2)

}