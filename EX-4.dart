void main() {
  // Map of pizza prices
  double total = 0;
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  // Example order
  const order = ['margherita', 'pepperoni', 'pineapple'];
  for (var food in order) {
    total += pizzaPrices[food];
  }
  // Your code
}
