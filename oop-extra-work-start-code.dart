class Tree {
  String type;
  double height;

  Tree(this.type, this.height);

  @override
  String toString() {
    return 'Tree: $type, Height: $height';
  }
}

class Window {
  String side;
  int floor;
  String color;

  Window(this.side, this.floor, this.color);

  @override
  String toString() {
    return '\nWindow: $side, Floor: $floor, Color: $color\n';
  }
}

class Door {
  String position;
  String color;

  Door(this.position, this.color);

  @override
  String toString() {
    return '\nDoor: $position, Color: $color\n';
  }
}

class Roof {
  String type;
  String color;

  Roof(this.type, this.color);

  @override
  String toString() {
    return 'Roof: $type, Color: $color\n';
  }
}

class Chimney {
  String chimney;

  Chimney(this.chimney);

  @override
  String toString() {
    return 'Chimney: $chimney\n';
  }
}

class House {
  final String _address;
  List<Tree> trees = [];
  List<Window> windows = [];
  Door door;
  Roof roof;
  Chimney chimney;

  House(this._address, this.roof, this.chimney, this.door, this.windows);

  void addTree(Tree newTree) {
    this.trees.add(newTree);
  }

  void addWindow(Window newWindow) {
    this.windows.add(newWindow);
  }

  @override
  String toString() {
    return 'House at $_address with $roof, $door, $chimney, Windows: $windows, Trees: $trees';
  }
}

void main() {
  Tree mangoTree = Tree('KesarMango', 10);
  Tree orangeTree = Tree('Orange', 15);

  Window pinkWindowLeft = Window('Left', 2, 'Pink');
  Window pinkWindowRight = Window('Right', 2, 'Pink');
  
  Door frontDoor = Door('center', 'pink');
  Roof roofofhouse = Roof('Triangle', 'Red');
  Chimney chimney = Chimney('Yes');

  // Pass an empty list for windows initially
  House myHouse = House('556, 6A Street', roofofhouse, chimney, frontDoor, []);

  myHouse.addTree(mangoTree);
  myHouse.addTree(orangeTree);
  myHouse.addWindow(pinkWindowLeft);
  myHouse.addWindow(pinkWindowRight);

  print(myHouse);
}
