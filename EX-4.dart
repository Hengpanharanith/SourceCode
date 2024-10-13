void main() {
  // Initialize total to 0
  double total = 0;

  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  const order = ['margherita', 'pepperoni', 'pineapple'];

  for (var food in order) {
    if (pizzaPrices.containsKey(food)) {
      total += pizzaPrices[food]!;
    } else {
      print('$food is not available.');
    }
  }
}
