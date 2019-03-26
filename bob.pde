
void setup(){
  
  size(500,500);
  background(255, 255,255 );
  
}
void draw(){
  makeMagical();
      for(int i = 0 ; i < 300 ; i++){
  ellipse( getWormX((int)random(width)) ,getWormY((int)random(height)), 10,10  );
fill(0,255 ,40 );

}
 
}
float frequency = .009;
float noiseInterval = PI;

void makeMagical() {
     fill( 0, 0, 0, 10 );
     rect(0, 0, width, height);
     noStroke();
}

float getWormX(int i) {
     return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}

float getWormY(int i) {
     return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}
