int dimension=6;
int circSize=3;
float hx;
float hy;
float inc;
int maxheight=30;

void setup() {
  size(600, 600, P3D);
  colorMode(HSB);
  
  ellipseMode(CENTER);
  hx=0;
  hy=0;
  inc=0;
  noStroke();
}

void draw() {
  inc+=.08;
 background(0);
  fill(255);
    translate(0,0,-100);
  for (int x=0; x<width/dimension; x++) {
    //pushMatrix();
    if(x==0){
    hx=inc;
    }else{
      hx+=.2;
    }
   
    //float xheight=map(sin(hx),-1,1,-maxheight,maxheight);
    
    //translate(0,0,xheight);
    //popMatrix();
    
    for (int y=0; y<height/dimension; y++) {
          pushMatrix();
      if(y==0){
      hy=hx;
      }else{
       hy+=.2;
      }
  
      float yheight=map(sin(hy),-1,1,-maxheight,maxheight);
      translate(0,0,yheight);
      float c=map(yheight,-maxheight,maxheight,75,120);
      //hy+=.01;
      //translate(0,0,sin(hy)*5);
      fill(c,255,255);
      ellipse(x*dimension,y*dimension,circSize,circSize);
      //println(yheight);
      popMatrix();
    }
  }
  
saveFrame();
}
