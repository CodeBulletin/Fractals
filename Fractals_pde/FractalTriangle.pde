void TF(float len, float a, int depth) {
  background(0);
  stroke(255);
  fill(0);
  translate(width/2-len/2,height/2 - len/2);
  triangleSier(0, len, len/2, 0, len, len, len, a, depth);
}

void triangleSier(float x1, float y1, float x2, float y2, float x3, float y3, float len, float a, int depth) {
  if ( len > 2 && depth >= 0) {
    if(depth == 0){
      push();
      fill(255,0,0);
    }
    triangle(x1, y1, x2, y2, x3, y3);
    if(depth == 0)
      pop();
    float h1 = (x1+x2)/2.0;
    float w1 = (y1+y2)/2.0;
    float h2 = (x2+x3)/2.0;
    float w2 = (y2+y3)/2.0;
    float h3 = (x3+x1)/2.0;
    float w3 = (y3+y1)/2.0;
    len = len*a;
    triangleSier(x1, y1, h1, w1, h3, w3, len, a, depth - 1);
    triangleSier(h1, w1, x2, y2, h2, w2, len, a, depth - 1);
    triangleSier(h3, w3, h2, w2, x3, y3, len, a, depth - 1);
  }
}
