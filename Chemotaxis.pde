Ant[] bob;
float s=.8;
void setup(){
  frameRate(10);
  size(500,500);
  bob= new Ant[30];
  for(int i=0;i<bob.length;i++){
    bob[i]=new Ant();
  }
}
void draw(){
  background(255);
  for(int i=0;i<bob.length;i++){
    bob[i].move();
    bob[i].show();
  }
}



class Ant{ 
 int myX, myY, myColor;
 
 Ant(){ //
  myX = (int)(Math.random()*400)+2; 
  myY = (int)(Math.random()*400)+2;
  myColor=color(
  (int)(Math.random()*100),
  (int)(Math.random()*100),
  (int)(Math.random()*100)
  );
 }
 void move(){
  int stepX = (int)(Math.random()*5)-3; //
  int stepY= (int)(Math.random()*5)-3; //
  if(myX<mouseX){
    myX+=5+stepX;
  }
  else myX-=5-stepX;
  if(myY<mouseY){
    myY+=5+stepY;
  }
  else myY-=5-stepX;
  if(myX==mouseX&&myY==mouseY&&s>=.00001){
    s-=.1;
   }
 }
  void show(){
    stroke(0);
    strokeWeight(2);
    line(myX, myY - 15, myX - 8, myY - 28); 
    line(myX, myY - 15, myX + 8, myY - 28);  
    fill(myColor); 
    ellipse(myX, myY, 40, 40); 
    fill(255); 
    ellipse(myX - 8, myY - 5, 6, 6); 
    ellipse(myX + 8, myY - 5, 6, 6);  
    fill(210, 140, 70);
    fill(210, 140, 70);
    arc(mouseX,mouseY-40*s,200*s,120*s,PI,TWO_PI);
    fill(60, 180, 70);
    rect(mouseX - 110 * s, mouseY - 35 * s, 220 * s, 15 * s, 5 * s);
    fill(255, 210, 0);
    quad(mouseX - 100 * s, mouseY - 15 * s, mouseX + 100 * s, mouseY - 15 * s, mouseX + 80 * s, mouseY + 5 * s, mouseX - 80 * s, mouseY + 5 * s);
    fill(100, 60, 30);
    rect(mouseX - 105 * s, mouseY + 5 * s, 210 * s, 35 * s, 15 * s);
    fill(210, 140, 70);
    rect(mouseX - 100 * s, mouseY + 45 * s, 200 * s, 40 * s, 0, 0, 15 * s, 15 * s);
  }
}
