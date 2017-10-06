Particlei[] particles;
Particle[] star = new Particle[10000];
void setup()
{
size (400,400);
frameRate(30);
particles = new Particlei[10000];
for (int i = 0; i < 10000; i++ ) {
particles[i] = new Particle ((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255),(float)(Math.random()*5),(float)(Math.random()*1),2);
}

particles[0] = new JumboParticle((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255),(float)(Math.random()*5),(float)(Math.random()*1),20);

particles[1] = new OddballParticle();

}

void draw()
{
  background (0,0,0);
  for (int i = 0; i < 10000; i++ ) {

  particles[i].move();
  particles[i].show();
  }


  
}
class Particle implements Particlei
{
  float x, y;
  int colora, colorb, colorc;
  double angle;
  double speed;
  float size;
  
  Particle(int a, int b, int c, double d, double e, float f) {
  x = (float)0;
  y = (float)0;
  colora = a;
  colorb = b;
  colorc = c;
  speed = d;
  angle = e;
  size = f;
  }
  
  public void show () {
    noStroke();
    
    fill(colora,colorb,colorc);
    ellipse (x,y,size,size);
    
  }
  
  public void move() {
    rotate((float)angle);
    x += speed;
    y += speed;
    if (x > 500) {
      x = 0;
      speed =(float)(Math.random()*5);
    }
    if (y > 500) {
      y = 0;
      speed =(float)(Math.random()*5);
    }
    if (x < -500) {
      x = 0;
      speed =(float)(Math.random()*5);
    }
    if (y < -500) {
      y = 0;
      speed =(float)(Math.random()*5);
    }
  }
}
interface Particlei
{
  public void show();
  public void move();
}
class OddballParticle implements Particlei
{
  float x = 100;
  float y = 100;
  public void show() {
    fill ((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  ellipse (x,y,20,20);
  
  }
  public void move() {
  x = x + (int)(Math.random()*30-15);
  y = y + (int)(Math.random()*30-15);
    if (x > 400) {
      x = 300;
    }
    if (y > 400) {
      y = 300;
    }
    if (x < 0) {
      x = 300;
    }
    if (y < 0) {
      y = 300;
    }
  }
}
class JumboParticle implements Particlei 
{
  float x, y;
  int colora, colorb, colorc;
  double angle;
  double speed;
  float size;
  
  JumboParticle(int a, int b, int c, double d, double e, float f) {
  x = (float)0;
  y = (float)0;
  colora = a;
  colorb = b;
  colorc = c;
  speed = d;
  angle = e;
  size = f;
  }
  
  public void show () {
    noStroke();
    
    fill(colora,colorb,colorc);
    ellipse (x,y,size,size);
    
  }
  
  public void move() {
    rotate((float)angle);
    x += 2*speed;
    y += 2*speed;
    if (x > 500) {
      x = 0;
      speed =(float)(Math.random()*5+2);
    }
    if (y > 500) {
      y = 0;
      speed =(float)(Math.random()*5+2);
  }
    if (x < -500) {
      x = 0;
      speed =(float)(Math.random()*5+2);
    }
    if (y < -500) {
      y = 0;
      speed =(float)(Math.random()*5+2);
    }
  }
}