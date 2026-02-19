public void setup(){
  size(500,500);
  rectMode(CENTER);
  background(0);
}
public void draw(){
  myFractal(250,250,200);
}

public void myFractal(int x, int y, int size){
  if (size <= 10){
    return;
  } else {
    rect(x,y,size,size);
    rect(x,y-size/2,size/2,size/2);
    rect(x,y+size/2,size/2,size/2);
    rect(x-size/2,y,size/2,size/2);
    rect(x+size/2,y,size/2,size/2);
    myFractal(x, y, size/2);
  }
}
