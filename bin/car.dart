class Car {
  String brand;
  String model;
  int year;
  double milesDriven;
  static int numberOfCars = 0;
  Car(this.brand, this.model, this.year, [this.milesDriven = 0.0]) {
    numberOfCars++;
  }
  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    return DateTime.now().year - year;
  }
}

void main() {
  Car car1 = Car("Toyota", "Camry", 2020);
  Car car2 = Car("Honda", "Civic", 2018, 10000.0);
  Car car3 = Car("Ford", "Mustang", 2022);
  car1.drive(15000.0);
  car2.drive(5000.0);
  car3.drive(20000.0);
  print("Car 1: Brand - ${car1.getBrand()}, Model - ${car1.getModel()}, Year - ${car1.getYear()}, Miles Driven - ${car1.getMilesDriven().toStringAsFixed(2)}");
  print("Car 2: Brand - ${car2.getBrand()}, Model - ${car2.getModel()}, Year - ${car2.getYear()}, Miles Driven - ${car2.getMilesDriven().toStringAsFixed(2)}");
  print("Car 3: Brand - ${car3.getBrand()}, Model - ${car3.getModel()}, Year - ${car3.getYear()}, Miles Driven - ${car3.getMilesDriven().toStringAsFixed(2)}");
  print("Car 1 Age: ${car1.getAge()} years");
  print("Car 2 Age: ${car2.getAge()} years");
  print("Car 3 Age: ${car3.getAge()} years");
  print("Total number of Car objects created: ${Car.numberOfCars}");
}
