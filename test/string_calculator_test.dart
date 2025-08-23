
import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_tdd/string_calculator.dart';


void main() {
  group('StringCalculator', (){
    final calculator = StringCalculator();

  
    test('returns 0 for empty string', (){
      expect(calculator.add(''), 0);
    });

    test('returns number for single number string', (){
      expect(calculator.add('5'), 5);
      expect(calculator.add('10'), 10);
    });

  });
}