class Point {
  final int x;
  final int y;

  const Point({required this.x, required this.y});

  @override
  String toString() {
    return "Point(x= $x, y=$y)";
  }

  Point translate({required int deltaX, required int deltaY}) {
    return Point(x: x + deltaX, y: y + deltaY);
  }
}

class Rectangle {
  late final Point topLeft;
  late final Point bottomRight;

  Rectangle(Point a, Point b) {
    int left = a.x;
    int right = b.x;
    int top = a.y;
    int bottom = b.y;

    if (a.x > b.x) {
      left = b.x;
      right = a.x;
    }
    if (a.y > b.y) {
      top = b.y;
      bottom = a.y;
    }

    topLeft = Point(x: left, y: top);
    bottomRight = Point(x: right, y: bottom);
  }

  int get width => bottomRight.x - topLeft.x;
  int get height => bottomRight.y - topLeft.y;
  int get area => width * height;
}

void main() {
  // test Point
  Point p1 = Point(x: 10, y: 20);
  print(p1);

  Point p2 = p1.translate(deltaX: 100, deltaY: 200);
  print(p1);
  print(p2);

  Rectangle r = Rectangle(Point(x: 10, y: 5), Point(x: 0, y: 0));

  print("Top left:     ${r.topLeft}");
  print("Bottom right: ${r.bottomRight}");
  print("Width:        ${r.width}");
  print("Height:       ${r.height}");
  print("Area:         ${r.area}");
  print("Whole shape:  $r");
}

