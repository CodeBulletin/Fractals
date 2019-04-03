void CircleF(float a, float len, float angle, int depth){
  background(0);
  stroke(255);
  fill(0);
  float b = 1/(a+0.2)-0.925;
  translate(width/2,height/2);
  rotate(angle);
  if(depth == 0)
  {
    push();
    fill(255, 0, 0);
  }
  circle(0,0,len);
  if(depth == 0)
    pop();
  if(depth > 0)
    recCircle(len*a, len, a, b, depth - 1);
}
void recCircle(float len,float pevlen, float a, float b, int depth){
    push();
    circlee1(len, pevlen, a, b, depth);
    pop();
    push();
    circlee2(len, pevlen, a, b, depth);
    pop();
    push();
    circlee3(len, pevlen, a, b, depth);
    pop();
    push();
    circlee4(len, pevlen, a, b, depth);
    pop();
}
void circlee1(float len, float pevlen, float a, float b, int depth){
  if(len>2 && depth >= 0){
    translate(pevlen-len*b,0);
    if(depth == 0){
      push();
      fill(255, 0, 0);
    }
    circle(0,0,len);
    if(depth == 0)
      pop();
    push();
    circlee3(len*a,len, a, b, depth - 1);
    pop();
    push();
    circlee4(len*a,len, a, b, depth - 1);
    pop();
    circlee1(len*a, len, a, b, depth - 1);
  }
}
void circlee2(float len, float pevlen, float a, float b, int depth){
  if(len>2 && depth >= 0){
    translate(-(pevlen-len*b),0);
    if(depth == 0){
      push();
      fill(255, 0, 0);
    }
    circle(0,0,len);
    if(depth == 0)
      pop();
    push();
    circlee3(len*a,len, a, b, depth - 1);
    pop();
    push();
    circlee4(len*a,len, a, b, depth - 1);
    pop();
    circlee2(len*a, len, a, b, depth - 1);
  }
}
void circlee3(float len, float pevlen, float a, float b, int depth){
  if(len>2 && depth >= 0){
    translate(0,(pevlen-len*b));
    if(depth == 0){
      push();
      fill(255, 0, 0);
    }
    circle(0,0,len);
    if(depth == 0)
      pop();
    push();
    circlee1(len*a,len, a, b, depth - 1);
    pop();
    push();
    circlee2(len*a,len, a, b, depth - 1);
    pop();
    circlee3(len*a, len, a, b, depth - 1);
  }
}
void circlee4(float len, float pevlen, float a, float b, int depth){
  if(len>2 && depth >= 0){
    translate(0,-(pevlen-len*b));
    if(depth == 0){
      push();
      fill(255, 0, 0);
    }
    circle(0,0,len);
    if(depth == 0)
      pop();
    push();
    circlee1(len*a,len, a, b, depth - 1);
    pop();
    push();
    circlee2(len*a,len, a, b, depth - 1);
    pop();
    circlee4(len*a, len, a, b, depth - 1);
  }
}
