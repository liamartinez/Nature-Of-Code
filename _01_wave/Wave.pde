class Wave {

  ArrayList <PVector> strokes; 

  Wave () {    
    strokes = new ArrayList<PVector>();
  }

  void clear () {
    strokes.clear();
  }

  void addStrokes (PVector newStroke) {
    strokes.add(newStroke);
    println ("strokes count: " + strokes.size()); 
  }

  void display () {
    stroke (255); 
    strokeWeight (5); 
    fill (255, 127); 
    
    
    for (int i = 1; i < strokes.size(); i++) {
      PVector p = (PVector) strokes.get(i); 
      PVector pl = (PVector) strokes.get (i-1);       
      
      line (p.x, p.y, pl.x, pl.y); 
    }
    
    
  }
}

