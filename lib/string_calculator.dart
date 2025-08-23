

class StringCalculator {
  int add(String numbers){

    if (numbers.isEmpty) {
      return 0;
    }
    // For single number string, return the number itself
    final parts = numbers.split(',');
    if (parts.length == 1) {
      return int.parse(parts[0]);
    }
    return 0;
  }
}