

void setup() {
  size( 1024, 768, OPENGL );
  noCursor();
  background( 0 );
  smooth();
  
}

void draw() {
  
  int s = millis();
 
  float faderX = (float) s / (width * 6.5);
  float faderY = (float) (width * 40) / (s );
  
  float faderZ = (float) (s + 900) / s;
  
  
  int count = 2000;
  randomSeed( 300 );
  float angle = radians( 360 / (float) count );
  
  for (int i = 0; i < count; i ++ ) {
    float randomX = random( 0, width );
    float randomY = random( 0, height );
    float circleX = width/2 + cos( angle * i ) * 300;
    float circleY = height/2 + sin( angle * i ) * 300;
    
    float x = lerp( randomX, circleX, faderX );
    float y = lerp( randomY, circleY, faderX );
    
     float x2 = lerp( randomX, circleX, faderY );
    float y2 = lerp( randomY, circleY, faderY );
    
    float x3 = lerp( randomX, circleX, faderZ );
    float y3 = lerp( randomY, circleY, faderZ );
    
    
    fill( 0, 130, 150 );
    rect( x, y, 5, 5 );
    
    fill( 0, random(50, 130), 150 );
    rect( x2, y2, 7, 7 );
 
      
  }
  
}



