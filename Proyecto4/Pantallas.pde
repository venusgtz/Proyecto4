void inicio(){
  image(inicio,0,0,width,height);
}

void instruccion(){
  image(instrucciones,0,0,width,height);
}

class face{
  float r;
  face(){
  }
  
  void marco(){
    detect.loadImage(cam);
    image(cam, 0, 0);
    detect.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
    faces = detect.detect();
    pushMatrix();
    noFill();
    stroke(255);
    strokeWeight(5);
    rectMode(CENTER);
    rect(width/2,height/2,width,height);
    fill(255,50);
    stroke(255);
    strokeWeight(5);
    rect(25,height/2,50,height);
    image(barra,5,5,40,470);
    image(close, 530,440,100,25);
    popMatrix();
  }
  
  void filtro(){
    switch(key){
      case 'q':
      for (int i = 0; i < faces.length; i++) {
      if(faces[i].x < width && faces[i].y < height){
          cam.read();
          cam.loadPixels();
          pushMatrix();
          scale(0.8);
          image(imagen1,faces[i].x, faces[i].y,350,350);
          popMatrix();
        }
      }
      break;
      
      case 'w':
      for (int i = 0; i < faces.length; i++) {
      if(faces[i].x < width && faces[i].y < height){
          cam.read();
          cam.loadPixels();
          pushMatrix();
          scale(0.8);
          image(imagen2,faces[i].x, faces[i].y,350,350);
          popMatrix();
        }
      }
      break;
      
      case 'e':
      for (int i = 0; i < faces.length; i++) {
      if(faces[i].x < width && faces[i].y < height){
          cam.read();
          cam.loadPixels();
          pushMatrix();
          scale(0.8);
          image(imagen3,faces[i].x, faces[i].y,350,350);
          popMatrix();
        }
      }
      break;
      
      case 'r':
      for (int i = 0; i < faces.length; i++) {
      if(faces[i].x < width && faces[i].y < height){
          cam.read();
          cam.loadPixels();
          pushMatrix();
          scale(0.8);
          image(imagen4,faces[i].x, faces[i].y,350,350);
          popMatrix();
        }
      }
      break;
      
      case 't':
      r = random(1,5);
      if(r >= 1 && r < 2){
        for (int i = 0; i < faces.length; i++) {
          if(faces[i].x < width && faces[i].y < height){
            cam.read();
            cam.loadPixels();
            pushMatrix();
            scale(0.8);
            image(imagen1,faces[i].x, faces[i].y,350,350);
            popMatrix();
          }
        }
      }
      if(r >= 2 && r < 2){
        for (int i = 0; i < faces.length; i++) {
          if(faces[i].x < width && faces[i].y < height){
            cam.read();
            cam.loadPixels();
            pushMatrix();
            scale(0.8);
            image(imagen2,faces[i].x, faces[i].y,350,350);
            popMatrix();
          }
        }
      }
      if(r >= 3 && r < 4){
        for (int i = 0; i < faces.length; i++) {
          if(faces[i].x < width && faces[i].y < height){
            cam.read();
            cam.loadPixels();
            pushMatrix();
            scale(0.8);
            image(imagen3,faces[i].x, faces[i].y,350,350);
            popMatrix();
          }
        }
      }
      if(r >= 4 && r < 5){
        for (int i = 0; i < faces.length; i++) {
          if(faces[i].x < width && faces[i].y < height){
            cam.read();
            cam.loadPixels();
            pushMatrix();
            scale(0.8);
            image(imagen4,faces[i].x, faces[i].y,350,350);
            popMatrix();
          }
        }
      }
      break;
      
      case 'y':
      break;
    }
  }
  
}
