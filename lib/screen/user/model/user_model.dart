class UserModel {
  int? userId, id;
  String? userName;

 AddressModel?  addressmodel;
 CompanyModel? companyModel;

  UserModel({
    this.userId,
    this.id,
    this.userName,
    this.addressmodel,
    this.companyModel,
  });

  factory UserModel.mapToModel(Map m1) {
    return UserModel(
      userId: m1['userId'],
      id: m1['id'],
      userName: m1['username'],
      addressmodel: AddressModel.mapToModel(m1['address']),
      companyModel: CompanyModel.mapToModel(m1['company']),
    );
  }

}

class CompanyModel{

  String? name,catchPhrase,bs;

  CompanyModel({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  factory CompanyModel.mapToModel(Map m1) {
    return CompanyModel(
      name: m1['name'],
      catchPhrase: m1['catchPhrase'],
      bs: m1['bs'],
    );
  }

}

class AddressModel{

  String? street,suite,city,zipcode;

  GeoModel?  geomodel;

  AddressModel({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geomodel,
  });

  factory AddressModel.mapToModel(Map m1) {
    return AddressModel(
      street: m1['street'],
      suite: m1['suite'],
      city: m1['city'],
      zipcode: m1['zipcode'],
      geomodel :GeoModel.mapToModel(m1['geo']),
    );
  }
}

class GeoModel{
  String? lat,lng;

  GeoModel({
    this.lat,this.lng
});
  factory GeoModel.mapToModel(Map m1) {
    return GeoModel(
      lat: m1['lat'],
      lng: m1['lng'],
    );
  }

}