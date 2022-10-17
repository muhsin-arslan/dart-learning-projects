class Complex {
  const Complex(this.re, this.im);

  const Complex.zero()
      : re = 0,
        im = 0;
  const Complex.identity()
      : re = 1,
        im = 0;
  const Complex.real()
      : re = 3,
        im = 0;
  const Complex.imaginary()
      : re = 0,
        im = 4;

  final double re;
  final double im;

  void printNumber() => print("$runtimeType: re is:$re and im is $im");
}

void main() {
  const complex = Complex(1, 2);
  complex.printNumber();

  const complexZero = Complex.zero();
  complexZero.printNumber();

  const complexIdentity = Complex.identity();
  complexIdentity.printNumber();

  const complexReal = Complex.real();
  complexReal.printNumber();

  const complexImaginary = Complex.imaginary();
  complexImaginary.printNumber();
}
