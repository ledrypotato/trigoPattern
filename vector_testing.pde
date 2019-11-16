PVector pos, ppos;
color C;
float angle, radius;

void settings() {
  fullScreen(P3D);
}

void setup() {

  background(0);

  pos = new PVector();
  ppos = new PVector();
  
}




void draw() {
  translate(width/2, height/2, -height);
  calc1();
  pickColour(pos.x, pos.y, pos.z);
  strokeWeight(2);
  stroke(C);
  line(ppos.x, ppos.y, pos.x,pos.y);
  angle += radians(5);
  radius += 10;
  ppos = pos.copy();
  println(pos.x);
}




void calc1() {
  pos.x = radius * sin(angle + radius);
  pos.y = radius * cos(angle + radius);
  pos.z = radius * -sin(angle + radius);
}


void pickColour(float x, float y, float z) {
  C = color(
    map(x, -width / 4, width / 4, 0, 255), 
    map(y, -height / 4, height / 4, 0, 255), 
    map(z, -width / 4, width / 4, 0, 255), 
    127);
}
