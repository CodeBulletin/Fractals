void TreeF(float a, float len, float angle, int depth){
  background(0);
  stroke(255);
  translate(width/2, height);if(depth == 0)
  {
    push();
    fill(255, 0, 0);
  }
  if(depth == -1)
    pop();
  if(depth >= 0)
    branch(len, angle, a, depth - 1);
}
void branch(float len, float angle, float a, int depth){
  if(depth == -1){
      push();
      stroke(255,0,0);
  }
  line(0,0,0,-len);
  if(depth == -1)
    pop();
  translate(0, -len);
  if(len>2 && depth>=0){
    push();
    rotate(angle);
    branch(len*a, angle, a, depth-1);
    pop();
    push();
    rotate(-angle);
    branch(len*a, angle, a, depth-1);
    pop();
  }
}
