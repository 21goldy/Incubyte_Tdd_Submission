class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    String delimiter = ',';
    String body = numbers;

    if (numbers.startsWith('//')) {
      final delimiterEnd = numbers.indexOf('\n');
      delimiter = numbers.substring(2, delimiterEnd);
      body = numbers.substring(delimiterEnd + 1);
    }

    final normalizedBody = body.replaceAll('\n', delimiter);
    final parts = normalizedBody.split(delimiter);

    final nums = parts
        .where((p) => p.isNotEmpty)
        .map(int.parse)
        .toList();

    final negatives = parts
        .where((p) => p.isNotEmpty)
        .map(int.parse)
        .where((n) => n < 0)
        .toList();

    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed: ${negatives.join(', ')}');
    }

    return nums.fold(0, (a, b) => a + b);
  }
}
