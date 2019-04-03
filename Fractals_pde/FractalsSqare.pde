void CF(float s, int depth){
  int cpt = 0;
  background(0);
  rectMode(CENTER);
  stroke(255);
  translate(width/2, height/2);
  fill(0);
  square(s, cpt, depth - 1);
}
void square(float side, int cpt, int depth){
  side=side/3;
  if (side>=1&&depth>=0){
    if(depth == 0)
    {
      push();
      stroke(255,0,0);
      fill(255, 0, 0);
    }
    cpt++;
    pushMatrix();
    rect(0, 0, side, side);
    translate(-side, -side);
    square(side, cpt, depth-1);
    popMatrix();
    pushMatrix();
    rect(0, 0, side, side);
    translate(0, -side);
    square(side, cpt, depth-1);
    popMatrix();
    pushMatrix();
    rect(0, 0, side, side);
    translate(side, -side);
    square(side, cpt, depth-1);
    popMatrix();
    pushMatrix();
    rect(0, 0, side, side, depth-1);
    translate(side, 0);
    square(side, cpt, depth -1);
    popMatrix();
    pushMatrix();
    rect(0, 0, side, side);
    translate(side, side);
    square(side, cpt, depth -1);
    popMatrix();
    pushMatrix();
    rect(0, 0, side, side);
    translate(0, side);
    square(side, cpt, depth -1);
    popMatrix();
    pushMatrix();
    rect(0, 0, side, side);
    translate(-side, side);
    square(side, cpt, depth -1);
    popMatrix();
    pushMatrix();
    rect(0, 0, side, side);
    translate(-side, 0);
    square(side, cpt, depth -1);
    popMatrix();
    if(depth == 0)
      pop();
  }
}
