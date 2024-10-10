import 'package:flutter_test/flutter_test.dart';
import 'package:fragancefl_app/utils/utils.dart';

void main() {

  test('Format price', () {
    expect(formatPrice(120), '\$120');
  });
  test('Format price without decimals', () {
    expect(formatPrice(120.0), '\$120');
  });

  test('Format price with decimals', () {
    expect(formatPrice(120.50), '\$120.5');
  });

  test('Format price with trailing zero', () {
    expect(formatPrice(120.0), '\$120');
  });

  test('Format price with one decimal place', () {
    expect(formatPrice(120.5), '\$120.5');
  });
}