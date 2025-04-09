
enum PaddingSize {
  p4(4.0),
  p8(8.0),
  p12(12.0),
  p16(16.0),
  p18(18.0),
  p22(22.0),
  p24(24.0),
  p28(28.0),
  p32(32.0),
  p48(48.0),
  p56(56.0),
  p64(64.0),
  p72(72.0);

  final double myValue;
  const PaddingSize(this.myValue);
}

enum Color {
  red('#FF0000', 4.0);

  const Color(this.hexCode, this.name);

  final String hexCode;
  final double name;

  @override
  String toString() => '$name: $hexCode';
}
