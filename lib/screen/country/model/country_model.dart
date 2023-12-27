class CountryModel {
  CountryNameModel? countryNameModel;

  CountryModel({
    this.countryNameModel,
  });

  factory CountryModel.mapToModel(Map m1) {
    return CountryModel(
      countryNameModel: CountryNameModel.mapToModel(m1['name']),
    );
  }
}

class CountryNameModel {
  String? common, official;

  NativeNameModel? nativeNameModel;

  CountryNameModel({
    this.common,
    this.official,
    this.nativeNameModel,
  });

  factory CountryNameModel.mapToModel(Map m1) {
    return CountryNameModel(
      common: m1['common'],
      official: m1['official'],
      nativeNameModel: NativeNameModel.mapToModel(m1['nativeName'])
    );
  }
}

class NativeNameModel {
  EngModel? engModel;

  NativeNameModel({
    this.engModel,
  });

  factory NativeNameModel.mapToModel(Map m1) {
    return NativeNameModel(
      engModel: EngModel.mapToModel(m1['common']),
    );
  }
}

class EngModel {
  String? common, official;

  EngModel({
    this.common,
    this.official,
  });

  factory EngModel.mapToModel(Map m1) {
    return EngModel(
      common: m1['common'],
      official: m1['official'],
    );
  }
}
