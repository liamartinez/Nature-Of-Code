//Wave wave; 
ArrayList <Wave> waves;


void setup () {
  size (720, 486); 
  smooth(); 
  noStroke(); 

  //wave = new Wave(); //make this an arraylist when everything works
  waves = new ArrayList <Wave>();
}


void draw () {
  background (100, 150, 100);

  for (Wave w: waves) {
    w.display();
  }

  if (mousePressed) {
    PVector mouse = new PVector (mouseX, mouseY);
    //for (Wave w: waves) {
      Wave w = (Wave) waves.get (waves.size()-1);  
      w.addStrokes (mouse);
    
  }
}


void mousePressed () {
    waves.add (new Wave()); 
    println ("wave number: " + waves.size()); 
}


void keyPressed () {
  if (key == ' ') {
//    wave.clear();
  }
}

