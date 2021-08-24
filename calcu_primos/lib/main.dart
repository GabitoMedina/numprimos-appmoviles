

import 'dart:async';
void main() {
    generaPrimos(100).listen((data) {
      print(data);
    });
  }

bool esPrimo(n) {
    for (int i = 1; i < n; i++) {
      if (n % i == 0 && i != 1) {
        return false;
      }
    }
    return true;
  }

  Stream<int> generaPrimos(n) async* {
    for (int i = 1; i <= n; i++) {
      if (esPrimo(i)) {
        yield i;
      }
    }
  }

  