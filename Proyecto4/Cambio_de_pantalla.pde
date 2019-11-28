int p;

void pantalla(){
  switch(p){
    case 0:
    inicio();
    if(mousePressed){
      p = 1;
    }
    break;
    
    case 1:
    instruccion();
    if(key == ENTER){
      p = 2;
    }
    break;
    
    case 2:
    cara.marco();
    cara.filtro();
    if(key == ' '){
      exit();
    }
    break;
  }
}
