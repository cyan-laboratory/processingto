  
  
  PShape HUD;

  void setup()
{
  size(800,600);
  background(10);
  fill(100,100,250);
  noLoop();
  textFont(createFont("Arial", 60));  

  HUD = loadShape("HUD.svg");
}


void draw(){  
  
  
  pushMatrix();
  scale(1, -1);
  text("Test", 220, -150);
  
    fill(250,250,250);
  text("Test2", 500, -150);
        fill(100,100,250);


  noFill();  stroke(250);
  
  strokeWeight(5); 
   ellipse(220,-150,300,300);
   ellipse(500,-150,300,300);
     shape(bot, 110, 90, 100, 100);  // Draw at coordinate (110, 90) at size 100 x 100

  popMatrix();
  println("Hello ErrorLog!");


}

