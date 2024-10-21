class Distances {
  double? meters;

  double? get meter {
    return meters;
  }

  Distances.kms(double? kms) {
    if (kms != null) {
      this.meters = kms * 1000;
    }
  }

  Distances.meters(double? meters) {
    if (meters != null) {
      this.meters = meters;
    }
  }

  Distances.cms(double? cms) {
    if (cms != null) {
      this.meters = cms / 100;
    }
  }

  @override
  String toString() {
    return 'Distances(meters: $meters)';
  }

  Distances operator +(Distances other) {
    return Distances.meters(this.meters! + other.meters!);
  }
}

void main() {
  Distances d1 = Distances.cms(1000);
  Distances d2 = Distances.kms(1);
  Distances d3 = Distances.meters(10);
  print(d1 + d2 + d3);
}
