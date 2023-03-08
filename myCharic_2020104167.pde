float xh, yh, r, len;
void setup(){
  size(600, 600);
  len=100;
  xh=300;
  yh=250;
  r=400;
  background(0,255,255);
  ears();
  body();
  head();
  tail();
  mouse();
}  

void tail(){
  float xt, yt;
  xt=300;
  yt=520;
  fill(102,51,0);
  curve(xt,yt, xt+1.4*len,yt+0.8*len, xt+2*len,yt-1.2*len, xt+3*len,yt+0.8*len);
  curve(xt-len,yt, xt+1.4*len,yt+0.8*len, xt+2*len,yt-1.2*len, xt,yt+0.8*len);
}

void body(){
  float xb, yb;
  xb=200;
  yb=350;
  fill(102,51,0);
  quad(xb,yb, xb-0.5*len,yb+2.5*len, xb+2.5*len,yb+2.5*len, xb+2*len,yb);
  fill(225,205,125);
  quad(xb+0.3*len,yb, xb-0.2*len,yb+2.5*len, xb+2.2*len,yb+2.5*len, xb+1.7*len,yb);
}

void ears(){
  fill(102,51,0);
  circle(xh-0.9*len,yh-1.9*len , r*0.16);
  circle(xh+0.9*len,yh-1.9*len , r*0.16);
  fill(225,205,125);
  circle(xh-0.9*len,yh-1.9*len , r*0.12);
  circle(xh+0.9*len,yh-1.9*len , r*0.12);
}

void head(){
  fill(102,51,0);
  circle(xh, yh, r);
  fill(225,205,125);
  circle(xh, yh, r*0.9);
  fill(0,0,0);
  ellipse(xh,yh+0.15*len, 50, r*0.10);
  fill(255,255,255);
  circle(xh+80,yh-30,r*0.10);
  circle(xh-80,yh-30,r*0.10);
  fill(0,0,0);
  circle(xh+0.8*len,yh-0.3*len,r*0.074);
  circle(xh-0.8*len,yh-0.3*len,r*0.074);
  arc(xh+0.8*len,yh-0.7*len, 50,10, PI, 2*PI);
  arc(xh-0.8*len,yh-0.7*len, 50,10, PI, 2*PI);
}

void mouse(){
  fill(255,0,0);
  arc(xh, yh+70, 100,60, 0, PI);
  fill(255,255,255);
  quad(xh,yh+0.7*len, xh,yh+0.9*len, xh+0.2*len,yh+0.9*len, xh+0.2*len, yh+0.7*len);
  quad(xh,yh+0.7*len, xh,yh+0.9*len, xh-0.2*len,yh+0.9*len, xh-0.2*len, yh+0.7*len);
  fill(0,0,0);
  line(xh+50, yh+70, xh-50, yh+70);
}


  
