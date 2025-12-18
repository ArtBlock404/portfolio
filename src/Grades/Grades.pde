// Jonah White| Sept 9 2025 | IfStructure

void setup() {
 size(400,100);
 background(70,100,70);
 textAlign(CENTER);
}

void draw() {
background(70,100,70);
stroke(10,30,100);
line(0,50,400,50);

for(int i = 0; i<width; i+=50) {
  line(i,45,i,55);
  text(i,i,65);
}
text("GradeCalculator Jonah White", 200, 20);
ellipse(mouseX,50,5,5);
text(mouseX/100.0,mouseX,45);
text(calcGrade(mouseX/100.0), width/2,85);

float grade = random(0.0, 4.001);
println(grade);

}
String calcGrade(float val) {
  
  String returnVal = "";
  
  if (val >= 3.51) {
    returnVal = "Assign letter grade A.";
  } else if (val >= 3.00) {
    returnVal = "Assign letter grade A-.";
  } else if (val >= 2.84) {
    returnVal = "Assign letter grade B+.";
  } else if (val >= 2.67) {
    returnVal = "Assign letter grade B.";
  } else if (val >= 2.50) {
    returnVal = "Assign letter grade B-";
  } else if (val >= 2.34) {
    returnVal = "Assign letter grade C+.";
  } else if (val >= 2.17) {
    returnVal = "Assign letter grade C.";
  } else if (val >= 2.00) {
    returnVal = "Assign letter grade C-.";
  } else if (val >= 1.66) {
    returnVal = "Assign letter grade D+.";
  } else if (val >= 1.33) {
    returnVal = "Assign letter grade D.";
  } else if (val >= 1.00) {
    returnVal = "Assign letter grade D-.";
  } else {
    returnVal = "Assign letter grade F.";
  }
  return returnVal;
}
