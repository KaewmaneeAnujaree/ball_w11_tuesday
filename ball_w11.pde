color bg = color(250,250,169);
public class BallClass {
  String move , b = "";
  int circleX , circleY , Y;
  public void ball(int circleX1,int circleY1,int Y1){
     circleX = circleX1;
     circleY = circleY1;
     Y = Y1;
    }
    
  public void drawball(){
     ellipse(circleX,circleY,Y,Y);      
    }
  public void moveball(){
      //delay(50);
      if(move=="w"){
        circleY = circleY - 3;
        drawball();
      }
      else if(move=="s"){
        circleY = circleY +3;
        drawball();
      }
      else if(move=="a"){
        circleX = circleX - 3;
        drawball();
      }
      else if(move=="d"){
        circleX = circleX +3;
        drawball();
      }
  }
  public void button(){
    if(keyPressed){
       if(key=='w'&& b==""){
         move = "w";
         moveball();
       }
       if(key=='s'&& b==""){
         move = "s";
         moveball();
       }
       if(key=='a'&& b==""){
         move = "a";
         moveball();
       }
       if(key=='d'&& b==""){
         move = "d";
         moveball();
       }
    }
  } 
}

BallClass Ball = new BallClass();
void setup(){
  size(500,500);
  Ball.ball(150,80,150);
}
  
void draw(){
  background(bg);
  Ball.drawball();
  Ball.button(); 
}
  
