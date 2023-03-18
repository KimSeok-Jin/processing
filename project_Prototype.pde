float [] x,y,vx, dx, dy, d;
float t=585,s=150;
void setup(){
  size(600,300);
  x = new float[6];
  y = new float[6];
  vx = new float[6];
  dx = new float[6];
  dy = new float[6];
  d = new float[6];
  for(int i=0;i<3; i++){
    vx[i] = random(2,4);
    vx[i+3] = random(2,4);
    x[i] = 0;
    y[i] = height/2 - 75;
    x[i+3] = 50+50*i;
    y[i+3] = height/2 + 75;    
  }
  
}
void draw(){
  background(255,255,0);
  for(int i=0;i<6; i++){
    x[i] += vx[i];
    y[i] += random(-4,4);
    villain(x[i],y[i]);  
    if(x[i]>width) x[i] = 0; 
    if(y[i]>height) y[i]=0;
    if(y[i]< 0) y[i]=height;
    }
  if (keyPressed) {
    if (t<=width && t>=0) {
      if (keyCode == LEFT) {
        t -=5;  
      } else if (keyCode == RIGHT) {
        t += 5;  
      }
    }if( t>width){
      if (keyCode == LEFT){
        t-=5;
      }
    }if (t <0){
      if (keyCode == RIGHT){
        t+=5;
      }
    }
    if(s <=height && s>=0){ 
      if (keyCode == UP) {
        s -= 5; 
      } else if (keyCode == DOWN) { 
        s += 5;
      }
    }if (s > height){
      if (keyCode == UP){
        s-=5;
      }
    }if (s <0){
      if (keyCode == DOWN){
        s+=5;
      }
    }
  }
  circle(t,s,30);
    for (int i =0; i<6; i++){
    dx[i]=x[i]-t;
    dy[i]=y[i]-s;
    d[i]=sqrt(dx[i]*dx[i]+dy[i]*dy[i]);
    if (d[i] <30){
      fill(102,0,23);
      textSize(70);
      text("You DIED...", 175, 150);
      delay(1000);
      stop();
    }
  }

}
void villain(float a, float b){
  circle(a,b,40);
  fill(0,0,0);
  circle(a-10,b-10,10);
  circle(a+10,b-10,10);
  fill(255,255,255);
}


  
