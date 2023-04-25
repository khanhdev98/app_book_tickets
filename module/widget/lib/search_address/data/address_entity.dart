

class AddressEntity {

  String? county, city,district, wards, address, countyCode;
  double? lat, lng;

  AddressEntity({this.county, this.city, this.district, this.wards, this.address,
    this.lat, this.lng,this.countyCode});

  Map<String, dynamic> toJson(){

    Map<String,dynamic> map ={};
    if(county != null){
      map["county"]= county;
    }

    if(city != null){
      map["city"]= city;
    }
    if(district != null){
      map["district"]= district;
    }
    if(wards != null){
      map["wards"]= wards;
    }
    if(address != null){
      map["address"]= address;
    }
    if(lat != null){
      map["lat"]= lat;
    }
    if(lng != null){
      map["lng"]= lng;
    }
    if(countyCode != null){
      map["countyCode"]= countyCode;
    }
    return map;
  }


}