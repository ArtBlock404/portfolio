// Jonah White | Making cars\
Car car1, car2;

Car[] cars = new Car[100];

void setup() {
  size(600, 600);
  car1 = new Car();
  car2 = new Car();
  for (int i = 0; i < cars.length; i = i + 1) {
    cars[i] = new Car();
  }
}

void draw() {
  background(255);
  car1.display();
  car1.move();
  car2.display();
  car2.move();
  for (int i = 0; i < cars.length; i = i + 1) {
    cars[i].display();
    cars[i].move();
  }
}
