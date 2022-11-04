void setup(){
  size(800, 800);
  for(int i=0; i<10; i++){
    partytown[i]=new Oddball();
  }
  for(int i=10; i<partytown.length;i++){
  partytown[i]=new Particle();
}
}


Particle partytown []= new Particle[200];







void draw(){
  background(0);
  
  for(int i=0; i<partytown.length; i++){
    partytown[i].move();
    partytown[i].show();
   
  }
  
}





//particle class
class Particle{
  
  double x, y, speed, theta;
  float r, g, b;
  
  Particle(){
    x=y=400;
    r=(int)(Math.random()*256);
    g=(int)(Math.random()*256);
    b=(int)(Math.random()*256);
   
    speed=Math.random()*3+1;
    theta=Math.random()*6.28+1;
  }
  
  void move(){
    x=x+speed*cos((float)(theta));
    y=y+speed*sin((float)(theta));
     
    
  }
  
  void show(){
    r=r+dist(((float)x), ((float)y), ((float)400), ((float)400))/40;
    g=g+dist(((float)x), ((float)y), ((float)400), ((float)400))/40;
    b=b+dist(((float)x), ((float)y), ((float)400), ((float)400))/40;
    
    
    fill(r, g, b);
    ellipse((int)x, (int)y, 13, 13);
    
    
  }
  
  
  
}
//end particle class



class Oddball extends Particle{
  
  Oddball(){
  x=y=400;
    r=g=b=255;
    speed=Math.random()*3+1;
    theta=Math.random()*6.28+1;
  }
  
  
  void show(){
  r=r-dist(((float)x), ((float)y), ((float)400), ((float)400))*((float)Math.random()*7-3);
    g=g-dist(((float)x), ((float)y), ((float)400), ((float)400))*((float)Math.random()*7-3);
    b=b-dist(((float)x), ((float)y), ((float)400), ((float)400))*((float)Math.random()*7-3);
    
    
    fill(r, g, b);
    ellipse((int)x, (int)y, 20, 20);
    
  }
  
}
