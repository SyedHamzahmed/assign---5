import 'dart:io';

void main() {
  Category();
}

void Category() {
  stdout.writeln('Select one of the options given below:');
  Map options = {
    1: 'Temperature Conversion',
    2: 'Time Conversion',
    3: 'Length Conversion'
  };
  options.forEach((key, value) {
    print('$key: $value');
  });
  var input1 = stdin.readLineSync();
  if (input1 == '1') {
    tempconversion();
  } else if (input1 == '2') {
    timeconversion();
  } else if (input1 == '3') {
    lengthConversion();
  } else if (input1 == '') {
    print('Please enter a valid value');
    Category();
  } else if (input1 != '1' && input1 != '2' && input1 != '3') {
    print('Invalid value');
    Category();
  } else {
    Category();
  }
}

void tempconversion() {
  print('OK! So, In which unit you want to convert?');
  Map temp = {1: 'Fahrenheit to Celsius', 2: 'Celsius to Fahrenheit'};
  temp.forEach((key, value) {
    print('$key: $value');
  });
  var input2 = stdin.readLineSync();
  if (input2 == '1') {
    FtoC();
  } else if (input2 == '2') {
    CtoF();
  } else if (input2 == '') {
    print('Please enter a valid value');
    tempconversion();
  } else if (input2 != '1' && input2 != '2') {
    print('Invalid value');
    tempconversion();
  } else {
    tempconversion();
  }
  stayOrExit();
}

void FtoC() {
  print('Enter a value');
  double F = double.parse(stdin.readLineSync()!);
  double C = (F - 32) / 1.8;
  if (F > -300) {
    print('Temperature in C is: ${C}');
  }
}

void CtoF() {
  print('Enter a value');
  double C = double.parse(stdin.readLineSync()!);
  double F = (C * 1.8) + 32;
  if (C > -300) {
    print('Temperature in F is: ${F}');
  }
}

void timeconversion() {
  print('OK! So, In which unit you want to convert?');
  Map time = {
    1: 'Seconds to Minutes',
    2: 'Minutes to Seconds',
    3: 'Minutes to Hours',
    4: 'Seconds to Hours',
    5: 'Milliseconds to Minutes',
    6: 'Milliseconds to Hours'
  };
  time.forEach((key, value) {
    print('$key: $value');
  });
  var input3 = stdin.readLineSync();
  if (input3 == '1') {
    StoM();
  } else if (input3 == '2') {
    MtoS();
  } else if (input3 == '3') {
    MtoH();
  } else if (input3 == '4') {
    StoH();
  } else if (input3 == '5') {
    MstoM();
  } else if (input3 == '6') {
    MstoH();
  } else if (input3 == '') {
    print('Please enter a valid value');
    timeconversion();
  } else if (input3 != '1' &&
      input3 != '2' &&
      input3 != '3' &&
      input3 != '4' &&
      input3 != '5' &&
      input3 != '6') {
    print('Invalid value');
    timeconversion();
  } else {
    timeconversion();
  }
  stayOrExit();
}

void StoM() {
  print('Enter Second(s)');
  int sec = int.parse(stdin.readLineSync()!);
  double M = sec / 60;
  print('Minute(s) passed: $M');
}

void MtoS() {
  print('Enter Minute(s)');
  int min = int.parse(stdin.readLineSync()!);
  int S = min * 60;
  print('Second(s) passed: $S');
}

void MtoH() {
  print('Enter Minute(s)');
  int min = int.parse(stdin.readLineSync()!);
  double H = min / 60;
  print('Hour(s) passed: $H');
}

void StoH() {
  print('Enter Second(s)');
  int sec = int.parse(stdin.readLineSync()!);
  double H = sec / 3600;
  print('Hour(s) passed: $H');
}

void MstoM() {
  print('Enter Millisecond(s)');
  int ms = int.parse(stdin.readLineSync()!);
  double M = ms / 60000;
  print('Minute(s) passed: $M');
}

void MstoH() {
  print('Enter Millisecond(s)');
  int ms = int.parse(stdin.readLineSync()!);
  double H = ms / 3600000;
  print('Hour(s) passed: $H');
}

void lengthConversion() {
  print('OK! So, In which unit you want to convert?');
  Map length = {
    1: 'Meter to kilometers',
    2: 'Kilometer to Meters',
    3: 'feet to Inches',
    4: 'Inches to Feet',
    5: 'Centimeter to Meter',
    6: 'Meter to Centimeter'
  };
  length.forEach((key, value) {
    print('$key: $value');
  });
  var input4 = stdin.readLineSync();
  if (input4 == '1') {
    meterToKilometer();
  } else if (input4 == '2') {
    KtoM();
  } else if (input4 == '3') {
    FtoI();
  } else if (input4 == '4') {
    ItoF();
  } else if (input4 == '5') {
    CmtoM();
  } else if (input4 == '6') {
    MtoCm();
  } else if (input4 == '') {
    print('Please enter a valid value');
    lengthConversion();
  } else if (input4 != '1' &&
      input4 != '2' &&
      input4 != '3' &&
      input4 != '4' &&
      input4 != '5' &&
      input4 != '6') {
    print('Invalid value');
    lengthConversion();
  } else {
    lengthConversion();
  }
  stayOrExit();
}

void meterToKilometer() {
  print('Enter a value');
  int M = int.parse(stdin.readLineSync()!);
  double K = M * 1000;
  print('Length in Kilometer(s) is: $K');
}

void KtoM() {
  print('Enter a value');
  int Km = int.parse(stdin.readLineSync()!);
  double M = Km / 1000;
  print('Length in Meter(s) is: $M');
}

void FtoI() {
  print('Enter a value');
  int F = int.parse(stdin.readLineSync()!);
  double I = F * 12;
  print('Length in Inche(s) is: $I');
}

void ItoF() {
  print('Enter a value');
  int I = int.parse(stdin.readLineSync()!);
  double F = I / 12;
  print('Length in Feet(s) is: $F');
}

void CmtoM() {
  print('Enter a value');
  int cm = int.parse(stdin.readLineSync()!);
  double M = cm / 100;
  print('Length in Meter(s) is: $M');
}

void MtoCm() {
  print('Enter a value');
  int M = int.parse(stdin.readLineSync()!);
  double cm = M * 100;
  print('Length in Centimeter(s) is: $cm');
}

void stayOrExit() {
  print('Do you want to continue?');
  Map SorE = {1: 'Yes', 2: 'No'};
  SorE.forEach((key, value) {
    print('$key: $value');
  });
  var ask = stdin.readLineSync();
  if (ask == '1') {
    Category();
  } else if (ask == '2') {
    print('Exit');
  } else if (ask == '') {
    print('Please enter a valid value');
    stayOrExit();
  } else if (ask != '1' && ask != '2') {
    print('Invalid value');
    stayOrExit();
  } else {
    stayOrExit();
  }
}
