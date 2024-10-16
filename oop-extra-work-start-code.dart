class Tree {
  String type;
  double height;

  Tree(this.type, this.height);
}

class Color {
  String color;
  Color(this.color);
}

class Window {
  String side;
  int floor;
  String color;

  Window(this.side, this.floor, this.color);

  @override
  String toString() {
    return 'Window: $side, Floor: $floor, Color: $color';
  }
}

class Door {
  String position;
  String color;

  Door(this.position, this.color);

  @override
  String toString() {
    return 'Door: $position, Color: $color';
  }
}

class Roof {
  String type;

  Roof(this.type);

  @override
  String toString() {
    return 'Roof: $type';
  }
}

class Chimney {
  String chimney;

  Chimney(this.chimney);

  @override
  String toString() {
    return 'Chimney: $chimney';
  }
}

class House {
  final String address;
  List<Tree> trees = [];
  List<Window> windows = [];
  Door door;
  Roof roof;
  Chimney chimney;

  House(this.address, this.roof, this.chimney, this.door, this.windows);

  void addTree(Tree newTree) {
    this.trees.add(newTree);
  }

  void addWindow(Window newWindow) {
    this.windows.add(newWindow);
  }

  @override
  String toString() {
    return 'House at $address with $roof, $door, $chimney, Windows: $windows, Trees: ${trees.length}';
  }
}

void main() {
  Tree mangoTree = Tree('KesarMango', 10);
  Tree orangeTree = Tree('Orange', 15);

  Window pinkWindowLeft = Window('Left', 2, 'Pink');
  Window pinkWindowRight = Window('Right', 2, 'Pink');

  Door frontDoor = Door('center', 'pink');
  Roof redRoof = Roof('Red');
  Chimney chimney = Chimney('Yes');

  House myHouse = House('556, 6A Street', redRoof, chimney, frontDoor, []);

  myHouse.addTree(mangoTree);

  myHouse.addWindow(pinkWindowLeft);

  print(myHouse);
}
