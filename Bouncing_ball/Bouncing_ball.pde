
float rectX = 0;
float rectY = 600;
int cirkelXpos = 300, cirkelYpos = 300, cirkelRadius = 10, cirkelXspeed = 2, cirkelYspeed = 1;
//Her laver vi nogle variabler vi skal bruge senere


void setup() {
  size(600, 600);
}


void draw() {
  background(0);

  noFill();
  stroke(255);
  strokeWeight(3);
  rect(rectX, rectX, rectY, rectY);
  //Her tegner vi den firkant der skrumper mod midten

  rectY -= 0.4; 
  rectX += 0.2;
  // Her får vi firkanten til skrumpe

  
  fill(255);
  noStroke();
  ellipseMode(CENTER);
  ellipse(cirkelXpos, cirkelYpos, cirkelRadius, cirkelRadius);
  // Her tegner vi cirklen, det gør vi i centrum for at den er inde i firkanten

  cirkelXpos = cirkelXpos+ cirkelXspeed; 
  cirkelYpos = cirkelYpos+ cirkelYspeed;
  // Og her sender vi den så i en retning


  if (cirkelXpos > rectX+rectY - cirkelRadius) {
    cirkelXspeed = -2;
  } else if (cirkelXpos < rectX + cirkelRadius) {
    cirkelXspeed = +2;
  } else if (cirkelYpos > rectX + rectY - cirkelRadius) {
    cirkelYspeed = -2;
  } else if (cirkelYpos < rectX + cirkelRadius) {
    cirkelYspeed = +2;
  }
  // Her bruger vi så flowcontrol statements der kan tjekke om cirklen er gået ud over firkantens kanter

}
