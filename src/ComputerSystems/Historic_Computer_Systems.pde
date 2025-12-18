// Jonah White | Aug 28 2025 | Computer Timeline

boolean textShowing = false;

void setup() {
  size(900, 400);
  background(0, 10, 10);
  size(900, 400);
  textAlign(CENTER);
}

void draw() {
  background(0, 10, 10);
  drawRef();
  histEvent(150, 200, "1946\nENIAC", true, "The Electronic Numerical Integrator and Computer (ENIAC) was developed at the University of Pennsylvania by John Presper Eckert \nand John Mauchly to calculate artillery firing tables for the U.S. Army. \nWeighing 30 tons, this was the first large-scale, general-purpose electronic digital computer. ");
  histEvent(230, 300, "1971\nThe Microprocessor", false, "Developed at Intel Corporation in Santa Clara, California, the Intel 4004 was the first commercially available\n single-chip microprocessor. This invention, led by Federico Faggin, Marcian Hoff,\n and Stanley Mazor, consolidated computing power onto a single circuit, paving the way for personal computers.");
  histEvent(310, 200, "1981\nIBM PC", true, "The IBM Personal Computer (Model 5150) was created by a team of engineers in Boca Raton, Florida, directed by Philip Don Estridge.\n Its purpose was to enter the microcomputer market with an open architecture,\n quickly making it a standard for personal computing.");
  histEvent(390, 300, "1984\nApple Macintosh", false, "The Macintosh was introduced in Cupertino, California, by a team at Apple under Steve Jobs. Its purpose was to provide \na commercially successful personal computer with a user-friendly graphical \nuser interface (GUI) and a mouse, making computing more accessible. ");
  histEvent(470, 200, "1985\nMicrosoft Windows", true, "Microsoft, based in Redmond, Washington, launched its first version of the Windows operating system. This provided a\n graphical user interface for MS-DOS, aiming to make personal computers \neasier to operate and leading to its eventual market dominance. ");
  histEvent(550, 300, "1989\nThe World Wide Web", false, "While working at CERN in Geneva, Switzerland, Tim Berners-Lee created a proposal that laid the groundwork for \nthe World Wide Web. The purpose was to enable automated information-sharing\n among scientists and researchers. ");
  histEvent(630, 200, "1990\nThe First Website", true, "Tim Berners-Lee, still working at CERN in Geneva, created the first website and server on a NeXT computer. \nIts purpose was to explain the World Wide Web project and distribute \ninformation to other researchers within the organization. ");
  histEvent(710, 300, "1998\nGoogle is Founded", false, "Founded by Larry Page and Sergey Brin in a garage in Menlo Park, California, Google's purpose was to organize the world's \ninformation and make it universally accessible. \nThey began with a new search algorithm that quickly made it the dominant search engine. ");


}

void drawRef() {
  fill(0, 250, 20);
  textSize(30);
  text("Historic Computer Systems", 450, 80);
  textSize(15);
  text("by Jonah White", 450, 100);

  // render timeline
  stroke(0, 250, 20);
  line(100, 250, 800, 250);
  line(100, 260, 100, 240);
  line(800, 260, 800, 240);
  text("1940", 90, 235);
  text("2000", 800, 230);
}

void histEvent(int x, int y, String title, boolean top, String detail) {
    if(mouseX > x-40 && mouseX < x+40 && mouseY < y+15 && mouseY > y-15) {
      if(mousePressed) { textShowing = true;}
      if(textShowing == true){
      text(detail, width/2, 350);
      }
    }else{ 
    textShowing = false;
    }
  
  if (top == true) {
    line(x, y, x+20, y+50);
  } else {
    line(x, y, x+20, y-50);
  }
  rectMode(CENTER);
  fill(0);
  stroke(0, 250, 20);
  rect(x, y, 140, 40, 7);
  fill(0, 250, 20);
  rect(x, y, 130, 30, 5);
  fill(0);
  text(title, x, y-2);
  fill(0, 250, 20);
  
}

 
