class Distances {
  double? cms;
  double? meters;
  double? kms;
  double? get cm {
    return cms;
  }

  double? get meter {
    return meters;
    
  }

  double? get km {
    return kms;
  }

  Distances.kms(double? kms) {
    if (kms != null) {
      this.kms = kms;
      this.cms = kms * 100000;
      this.meters = kms * 1000;
    }
  }
  Distances.meters(double? meters) {
    if (meters != null) {
      this.meters = meters;
      this.cms = meters * 100;
      this.kms = meters / 1000;
    }
  }
  Distances.cms(double? cms) {
    if (cms != null) {
      this.cms = cms;
      this.meters = cms / 100;
      this.kms = cms / 10000;
    }
  }
  @override
  String toString() {
    return 'Distances(kms: $kms, meters: $meters, cms:$cms)';
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
