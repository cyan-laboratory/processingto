Enter file contents here// Global variables
float radius = 50.0;
int X, Y;
int nX, nY;
int delay = 16;
float max_distance;
// Setup the Processing Canvas
void setup(){
  size( 400, 400 );
  strokeWeight( 10 );
  frameRate( 15 );
  X = width / 2;
  Y = height / 2;
  nX = X;
  nY = Y;    max_distance = dist(0, 0, width, height);
}

// Main draw loop
void draw(){
  
  radius = radius + sin( frameCount / 4 );
  
  // Track circle to new destination
  X+=(nX-X)/delay;
  Y+=(nY-Y)/delay;
  
  // Fill canvas grey
  background( 0 );
  
  // Set fill-color to blue
  fill( 0, 121, 184 );
  
  // Set stroke-color white
  stroke(255); 
  
  // Draw circle
  ellipse( X, Y, radius, radius );      
  ellipse( X+100, Y, radius, radius );  
    if(mousePressed)  ellipse(mouseX, mouseY, 20,20);
  
}


// Set circle's next destination
void mouseMoved(){
  nX = mouseX;
  nY = mouseY;  
}
