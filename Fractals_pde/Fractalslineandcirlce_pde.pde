void cirline(float len, float a,float angle, int depth){
  background(0);
  stroke(255);
  fill(0);
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
    mainCline(len,a, depth - 1);
  mainCline(len, a, depth - 1);
}
void mainCline(float len, float a, int depth){
  if(depth >= 0){
    if(depth == 0){
      push();
      stroke(255, 0, 0);
    }
    push();
    translate(0,-len/2);
    line(0,0,0, -len);
    cirlc1(len*a, a, len, depth - 1);
    pop();
    push();
    translate(len/2,0);
    rotate(PI/2);
    line(0,0,0, -len);
    rotate(-PI/2);
    cirlc2(len*a, a, len, depth - 1);
    pop();
    push();
    translate(0,len/2);
    rotate(PI);
    line(0,0,0, -len);
    rotate(-PI);
    cirlc3(len*a,a,len, depth - 1);
    pop();
    push();
    translate(-len/2,0);
    rotate(3*PI/2);
    line(0,0,0, -len);
    rotate(-3*PI/2);
    cirlc4(len*a,a,len, depth - 1);
    pop();
    if(depth == 0)
      pop();
  }
}
void cirlc1(float len, float a, float pevlen, int depth){
  if(len>2 && depth >= 0){
    if(depth == 0){
      push();
      fill(255, 0, 0);
    }
    translate(0,-pevlen);
    circle(0,0,-len);
    push();
    linee1(len, a, len, depth - 1);
    pop();
    push();
    linee2(len, a, len, depth - 1);
    pop();
    push();
    linee4(len, a, len, depth - 1);
    pop();
    if(depth == 0)
      pop();
  }
}
void cirlc2(float len, float a, float pevlen, int depth){
  if(len>2 && depth >= 0){
    if(depth == 0){
      push();
      fill(255, 0, 0);
    }
    translate(pevlen,0);
    circle(0,0,-len);
    push();
    linee2(len, a, len, depth - 1);
    pop();
    push();
    linee3(len, a, len, depth - 1);
    pop();
    push();
    linee1(len, a, len, depth - 1);
    pop();
    if(depth == 0)
      pop();
  }
}
void cirlc3(float len, float a, float pevlen, int depth){
  if(len>2 && depth >= 0){
    if(depth == 0){
      push();
      fill(255, 0, 0);
    }
    translate(0,pevlen);
    circle(0,0,-len);
    push();
    linee3(len, a, len, depth - 1);
    pop();
    push();
    linee4(len, a, len, depth - 1);
    pop();
    push();
    linee2(len, a, len, depth - 1);
    pop();
    if(depth == 0)
      pop();
  }
}
void cirlc4(float len, float a, float pevlen, int depth){
  if(len>2 && depth >= 0){
    if(depth == 0){
      push();
      fill(255, 0, 0);
    }
    translate(-pevlen,a);
    circle(0,0,-len);
    push();
    linee4(len, a, len, depth - 1);
    pop();
    push();
    linee1(len, a, len, depth - 1);
    pop();
    push();
    linee3(len, a, len, depth - 1);
    pop();
    if(depth == 0)
      pop();
  }
}
void linee1(float len, float a, float pevlen, int depth){
  if(len>4&&depth>=0){
    if(depth == 0){
      push();
      stroke(255, 0, 0);
    }
    translate(0,-pevlen/2);
    line(0,0,0,-len);
    if(depth == 0)
      pop();
    cirlc1(len*a, a, len, depth - 1);
  }
}
void linee2(float len, float a, float pevlen, int depth){
  if(len>4&&depth>=0){
    if(depth == 0){
      push();
      stroke(255, 0, 0);
    }
    translate(pevlen/2, 0);
    rotate(PI/2);
    line(0,0,0,-len);
    rotate(-PI/2);
    if(depth == 0)
      pop();
    cirlc2(len*a, a, len, depth - 1);
  }
}
void linee3(float len, float a, float pevlen, int depth){
  if(len>4&&depth>=0){
    if(depth == 0){
      push();
      stroke(255, 0, 0);
    }
    translate(0,pevlen/2);
    rotate(PI);
    line(0,0,0,-len);
    rotate(-PI);
    if(depth == 0)
      pop();
    cirlc3(len*a, a, len, depth - 1);
  }
}
void linee4(float len, float a, float pevlen, int depth){
  if(len>4&&depth>=0){
    if(depth == 0){
      push();
      stroke(255, 0, 0);
    }
    translate(-pevlen/2,0);
    rotate(3*PI/2);
    line(0,0,0,-len);
    rotate(-3*PI/2);
    if(depth == 0)
      pop();
    cirlc4(len*a, a, len, depth - 1);
  }
}
