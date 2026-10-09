import 'dart:io';

void main() {
  String again = 'yes';

  while (again == 'yes') {
    print('=== Pizza Order Calculator ===');
    print('Small - USD 5');
    print('Medium - USD 7');
    print('Large - USD 10');

    print('Enter pizza size (small, medium, large):');
    String size = stdin.readLineSync()!.toLowerCase();

    print('Enter quantity:');
    int quantity = int.parse(stdin.readLineSync()!);

    int price = 0;

    switch(size) {
      case 'small':
      price = 5;
      break;

      case 'medium':
      price = 7;
      break;

      case 'large':
      price = 10;
      break;

      default:
      print('Invalid pizza size');
    }

    if (price > 0 && quantity > 0) {
      int total = price * quantity;
      print('Total payment: USD $total');
    } else if (price > 0) {
      print('Invalid quantity!');
    }

    print('Would you like to order again? (yes/no)');
    again = stdin.readLineSync()!.toLowerCase();
  }

  print('Thanks for using the Pizza Order Calculator!');

    }