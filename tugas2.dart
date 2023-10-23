List<int> sequenceGenerator(int start, int stop) {
  List<int> x = [];
  for (int i = start; i <= stop; i++) {
    x.add(i);
  }
  return x;
}

List<dynamic> fizzBuzz(int a, int b) {
  List<dynamic> x = [];
  for (int num = a; num < b; num++) {
    if (num % 3 == 0 && num % 5 == 0) {
      x.add('fizzBuzz');
    } else if (num % 3 == 0) {
      x.add('Fizz');
    } else if (num % 5 == 0) {
      x.add('Buzz');
    } else {
      x.add(num);
    }
  }
  return x;
}

List<int> twoNumber(List<int> l) {
  List<int> res = [];
  for (int i = 0; i < l.length - 1; i++) {
    res.add(l[i] + l[i + 1]);
  }
  return res;
}

List<int> sequenceGenerator_fp(int start, int stop) => List<int>.generate(stop - start + 1, (i) => i + start);


List<dynamic> fizzBuzz_fp(int a, int b) => List.generate(b - a, (num) => (num + a) % 3 == 0 && (num + a) % 5 == 0 ? 'fizzBuzz' : (num + a) % 3 == 0 ? 'Fizz' : (num + a) % 5 == 0 ? 'Buzz' : num + a);


List<int> twoNumber_fp(List<int> l) => List.generate(l.length - 1, (i) => l[i] + l[i + 1]);


void main() {
  print(sequenceGenerator(1, 10));
  print(sequenceGenerator_fp(1, 10));
  print(fizzBuzz(1, 16));
  print(fizzBuzz_fp(1, 16));
  print(twoNumber([0, 1, 2, 3, 4, 5]));
  print(twoNumber_fp([0, 1, 2, 3, 4, 5]));
}
