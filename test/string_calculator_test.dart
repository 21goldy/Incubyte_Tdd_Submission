
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

    test('returns sum for two numbers', (){
      expect(calculator.add('1,2'), 3);
      expect(calculator.add('10,20'), 30);
    });

    test('returns sum for multiple numbers', (){
      expect(calculator.add('1,2,3,4'), 10);
      expect(calculator.add('5,5,5,5,5'), 25);
    });
    test('supports custom delimiter', (){
      expect(calculator.add('//;\n1;2;3'), 6);
      expect(calculator.add('//;\n'), 0);
    });

    test('throws exception for negative numbers', (){
      expect(() => calculator.add('1,-2,3'), throwsA(predicate((e) => e is Exception && e.toString() == 'Exception: Negatives not allowed: -2')));
      expect(() => calculator.add('-1,-2,-3'), throwsA(predicate((e) => e is Exception && e.toString() == 'Exception: Negatives not allowed: -1, -2, -3')));
    });

  });
}