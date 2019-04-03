void lineF(float len, float a, float angle, int depth){
  background(0);
  stroke(255);
  translate(width/2,height/2);
  rotate(angle);
  makeline(len,a, depth - 1);
}

void makeline(float len, float a, int depth){
  if(depth == -1){
    push();
    stroke(255, 0, 0);
  }
  //
  push();
  line(0,0,0,-len);//UP
  push();
  translate(0,-len);
  push();
  linefx4(len*a, a, 0, depth-1);
  pop();
  push();
  linefx2(len*a, a, 0, depth-1);
  pop();
  push();
  translate(0,len);
  linefx1(len*a, a, len, depth-1);
  pop();
  pop();
  pop();
  //
  push();
  line(0,0,len,0);//Right
  push();
  translate(len,0);
  push();
  linefx3(len*a, a, 0, depth-1);
  pop();
  push();
  linefx1(len*a, a, 0, depth-1);
  pop();
  push();
  translate(-len,0);
  linefx2(len*a, a, len, depth -1);
  pop();
  pop();
  pop();
  //
  push();
  line(0,0,0,len);//Down
  push();
  translate(0,len);
  push();
  linefx4(len*a,a,0, depth -1);
  pop();
  push();
  linefx2(len*a,a,0, depth -1);
  pop();
  push();
  translate(0,-len);
  linefx3(len*a,a,len, depth -1);
  pop();
  pop();
  pop();
  push();
  //
  line(0,0,-len,0);//left
  push();
  translate(-len,0);
  push();
  linefx1(len*a,a,0,depth-1);
  pop();
  push();
  linefx3(len*a,a,0,depth-1);
  pop();
  push();
  translate(len,0);
  linefx4(len*a,a,len, depth - 1);
  pop();
  pop();
  pop();
  if(depth == -1)
    pop();
}

void linefx1(float len, float a, float pevlen, int depth){//up
  if(len>2&&depth>=-1){
    if(depth == -1){
      push();
      stroke(255, 0, 0);
    }
    translate(0, -pevlen);
    line(0,0,0,-len);
    push();
    translate(0, -len);
    if(depth == -1)
      pop();
    push();
    linefx2(len*a,a,0, depth -1);
    pop();
    push();
    linefx4(len*a,a,0, depth - 1);
    pop();
    pop();
    linefx1(len*a, a, len, depth - 1);
  }
}

void linefx2(float len, float a, float pevlen, int depth){//Right
  if(len>2&&depth>=-1){
    if(depth == -1){
      push();
      stroke(255, 0, 0);
    }
    translate(pevlen,0);
    line(0,0,len,0);
    push();
    translate(len,0);
    if(depth == -1)
      pop();
    push();
    linefx1(len*a,a,0, depth - 1);
    pop();
    push();
    linefx3(len*a,a,0, depth -1);
    pop();
    pop();
    linefx2(len*a, a, len, depth -1);
  }
}

void linefx3(float len, float a, float pevlen, int depth){//down
  if(len>2&&depth>=-1){
    if(depth == -1){
      push();
      stroke(255, 0, 0);
    }
    translate(0,pevlen);
    line(0,0,0,len);
    push();
    translate(0,len);
    if(depth == -1)
      pop();
    push();
    linefx4(len*a,a,0, depth -1);
    pop();
    push();
    linefx2(len*a,a,0, depth -1);
    pop();
    pop();
    linefx3(len*a, a, len, depth -1);
  }
}

void linefx4(float len, float a, float pevlen, int depth){//left
  if(len>2&&depth>=-1){
    if(depth == -1){
      push();
      stroke(255, 0, 0);
    }
    translate(-pevlen,0);
    line(0,0,-len,0);
    push();
    translate(-len,0);
    if(depth == -1)
      pop();
    push();
    linefx1(len*a,a,0, depth -1);
    pop();
    push();
    linefx3(len*a,a,0, depth -1);
    pop();
    pop();
    linefx4(len*a, a, len, depth -1);
  }
}
