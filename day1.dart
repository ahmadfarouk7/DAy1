//dev: ahmad farouk
class Book {
  String title;
  String author;
  int numberOfPages;

  Book(this.title, this.author, this.numberOfPages);

  void DisplayInfo() {
    print('Title: $title');
    print('Author: $author');
    print('Number of Pages: $numberOfPages');
  }
}

class Novel extends Book {
  String genre;

  Novel(String title, String author, int numberOfPages, this.genre)
      : super(title, author, numberOfPages);

  @override
  void DisplayInfo() {
    super.DisplayInfo();
    print('Genre: $genre');
  }
}

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() => 3.14 * radius * radius;
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() => width * height;
}

void printArea(Shape shape) {
  print('Area: ${shape.area()}');
}

abstract class Serializable {
  String toJson();
}

class User implements Serializable {
  String name;
  int age;

  User(this.name, this.age);

  @override
  String toJson() {
    return '{"name": "$name", "age": $age}';
  }
}

class Product implements Serializable {
  String productName;
  double price;

  Product(this.productName, this.price);

  @override
  String toJson() {
    return '{"productName": "$productName", "price": $price}';
  }
}

class InsufficientFundsException implements Exception {
  String errMsg() => 'Insufficient funds for withdrawal';
}

class BankAccount {
  double balance;

  BankAccount(this.balance);

  void deposit(double amount) {
    balance += amount;
    print('Deposited: \$${amount}');
    print('New Balance: \$${balance}');
  }

  void withdraw(double amount) {
    if (amount > balance) {
      throw InsufficientFundsException();
    } else {
      balance -= amount;
      print('Withdrew: \$${amount}');
      print('New Balance: \$${balance}');
    }
  }
}

void main() {
  //first one
  var book = Book('15602', 'AhmedFarouk', 156);
  book.DisplayInfo();

  //the second
  var novel = Novel('15602', 'AhmedFarouk', 156, 'drama');
  novel.DisplayInfo();

  //third point
  var circle = Circle(5);
  var rectangle = Rectangle(4, 6);

  printArea(circle);
  printArea(rectangle);

  var user = User('ro2a', 30);
  var product = Product('Laptop', 100000);

  print(user.toJson());
  print(product.toJson());

  var account = BankAccount(100.0);

  account.deposit(50.0);

  try {
    account.withdraw(200.0);
  } catch (e) {
    print('there is an error');
  }

  account.withdraw(50.0);
}
