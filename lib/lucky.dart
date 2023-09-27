import 'dart:io';
import 'dart:math';

class Lucky {
  int randy = 0;

  Lucky() {
    String? minEnvValue = Platform.environment['MIN'];
    int min = int.tryParse(minEnvValue ?? '0') ?? 0;
    String? maxEnvValue = Platform.environment['MAX'];
    int max = int.tryParse(maxEnvValue ?? '100') ?? 0;
    int range = max - min;
    randy = Random().nextInt(range) + min;
  }

  int get luckyNumber => randy;
}
