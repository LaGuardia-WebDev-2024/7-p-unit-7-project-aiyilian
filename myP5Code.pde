//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var x = 5;
var wheel = 30;
var explosion = 50;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,255);
  
  noStroke();
  
  //truck body
  fill(105, 122, 145);
  rect(x,200,100,70);
  
  //truck head
  fill(80, 103, 135);
  rect(x+90,220,50,50);
  
  //truck wheels
  fill(42, 60, 87);
  ellipse(x+30,270,wheel,wheel);
  ellipse(x+115,270,wheel,wheel);
  
  //explosion
  fill(242, 206, 138);
  ellipse(300,250,explosion,explosion);
  
   if(mousePressed){
    showXYPositions();
    
   
  }
  
  //🎯Animation Code Goes Here
 
 x += 4;
 explosion += 2;

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
