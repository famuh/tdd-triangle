// triangle_app.dart
String detectTriangle(num sideA, num sideB, num sideC) {
  // if (sideA < 1 || sideB < 1 || sideC < 1) {
  //   throw Exception();
  // }
  final sides = [sideA, sideB, sideC];
  sides.sort();

  sides.forEach((side) {
    if (side < 1) {
      throw Exception();
    }
  });

// memastikan bahwa itu segitiga berdasarkan besar sudut
  if (sides[0] + sides[1] <= sides[2]) {
    throw Exception("Inequal Triangle");
  }

  //  if (sideA == sideB && sideA == sideC && sideB == sideC) {
  //    return "segitiga sama sisi";
  //  }
  if (sides[0] == sides[1] && sides[0] == sides[2]) {
    return "Segitiga Sama Sisi";
  }

  // if (sides[0] == sides[1] || sides[0] == sides[2] || sides[1] == sides[2]) {
  //   return "Segitiga Sama Kaki";
  // }

  if (sides[0] == sides[1] || sides[1] == sides[2]) {
    return "Segitiga Sama Kaki";
  }

  // jika buka segitiga sama kaki atau sama sisi, maka
  return "Segitiga Sembarang";
}
