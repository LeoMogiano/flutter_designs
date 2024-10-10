String formatPrice(double price) {
  return '\$${price % 1 == 0 ? price.toInt() : price.toStringAsFixed(1)}';
}