import gab.opencv.*;
import processing.video.*;
import java.awt.Rectangle;

OpenCV detect;
Rectangle[] faces;
Capture cam;
face cara;

int PX, PY, P=10;
int pantalla;
color C[];
//Filtros
PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
//Fondos
PImage inicio;
PImage instrucciones;
//BarraLateral
PImage barra;
//Cerrar
PImage close;

void setup(){
  size(640,480);
  cam = new Capture(this, 640, 480);
  cam.start();
  detect = new OpenCV(this, cam);
  detect.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  faces = detect.detect();
  cara = new face();
  PX = width/P;
  PY = height/P;
  C = new color[PX * PY];
  
  imagen1 = loadImage("Imagen1.png");
  imagen2 = loadImage("Imagen2.png");
  imagen3 = loadImage("Imagen3.png");
  imagen4 = loadImage("Imagen4.png");
  
  inicio = loadImage("Inicio.jpg");
  instrucciones = loadImage("Instrucciones.jpg");
  
  barra = loadImage("Barra.png");
  
  close = loadImage("Close.png");
}

void draw(){
  pantalla();
}

void captureEvent(Capture c) {
  c.read();
}
