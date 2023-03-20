float [] x,y,vx,vy,vy1, dx, dy, d;    //속도, 위치, 거리 어레이 지정
float t=585,s=150,stage=0;    //처음 상태 지정
void setup(){
  size(600,400);
  x = new float[14];
  y = new float[14];
  vx = new float[14];
  vy = new float[14];
  vy1 = new float[6];
  dx = new float[6];
  dy = new float[6];
  d = new float[6];
  for(int i=0;i<3; i++){
    vx[i] = random(2,3);
    vx[i+3] = random(2,3);
    vy[i] = random(-3,3);
    vy[i+3] = random(-3,3);
    vy1[i] = random(-3,3);
    vy1[i+3] = random(-3,3);
    x[i] = 0;
    y[i] = height/2 - 75;
    x[i+3] = 50+50*i;
    y[i+3] = height/2 + 75;    
  }
  for(int i=6;i<10; i++){
    x[i] = 50+10*i;
    y[i] = height/2 - 30;
    x[i+4] = 50+10*i;
    y[i+4] = height/2 + 30;
  }
  for(int i=6;i<14; i++){
    vx[i] = random(-7,7);
    vy[i] = random(-7,7);
  }
  
}
int count = 0;  //시간 설정
void draw(){
  if (stage==0){
    background(255,255,0);
    for(int i=0;i<6; i++){  //적들의 움직임에 대한 코드
      x[i] += vx[i];
      if(count<30) y[i] += vy[i];
      else if (count<60) y[i] += vy1[i];
      else count = 0;
      villain(x[i],y[i]);  
      if(x[i]>width) x[i] = 0; 
      if(y[i]>height) y[i]=0;
      if(y[i]< 0) y[i]=height;
      count++;
    }
    if (count >=6000){
      stage=1;
    }
    if (keyPressed) {  //캐릭터 움직임
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
    for (int i =0; i<6; i++){  //죽는조건
      dx[i]=x[i]-t;
      dy[i]=y[i]-s;
      d[i]=sqrt(dx[i]*dx[i]+dy[i]*dy[i]);
      if (d[i] <30){
        fill(102,0,23);
        textSize(70);
        text("You DIED...", 175, 150);
        fill(255,255,255);
        delay(2000);
        stop();
      }
    }
  } else if(stage==1){
      background(255,255,0);
      t=585;
      s=150;
      for(int i=6;i<14; i++){
        villain(x[i],y[i]);
        x[i] += vx[i];
        y[i] += vy[i];
        if(x[i]>width) x[i] = 0;
        if(x[i]<0) x[i] = 600;
        if(y[i]>height) y[i] = 0;
        if(y[i]<0) y[i] = 300;
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
      for (int i =6; i<14; i++){
        dx[i] = x[i]-t;
        dy[i] = y[i]-s;
        d[i] = sqrt(dx[i]*dx[i]+dy[i]*dy[i]);
        if (d[i] <30){
          fill(102,0,23);
          textSize(70);
          text("You DIED...", 175, 150);
          delay(2000);
        }
      }
    }  
}
