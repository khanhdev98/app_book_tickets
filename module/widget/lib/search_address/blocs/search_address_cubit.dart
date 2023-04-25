import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import '../data/address_entity.dart';

part 'search_address_state.dart';

final dio = Dio();

class SearchAddressCubit extends Cubit<SearchAddressState> {
  SearchAddressCubit() : super(const SearchAddressInitial());

  final _apiKey = 'AIzaSyAo-L1wbhoYUikDW00jXuRH_vG6zP-v8ys';

  resetData() {
    emit(const SearchAddressSuccess([]));
  }

  getAddress(String query) async {
    String url =
        'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?key=$_apiKey&input=$query&fields=formatted_address%2Cname%2Cgeometry&inputtype=textquery';
    emit(const SearchAddressFetching());
    try {
      var res = await dio.get(url);
      var results = res.data["candidates"];
      log("message $results");
      List<AddressEntity> listData = [];
      if (results != null) {
        var listJson = (results as List);
        for (var item in listJson) {
          listData.add(
            AddressEntity(
              address: item['formatted_address'],
              lat: item['geometry']["location"]["lat"],
              lng: item['geometry']["location"]["lng"],
            ),
          );
        }
        emit(SearchAddressSuccess(listData));
        return;
      }
      emit(const SearchAddressFailed());
    } catch (e) {
      emit(const SearchAddressFailed());
      throw Exception(e);
    }
  }


  Future<AddressEntity> searchLatLng({double? lat, double? lng}) async {
    String url = "https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=$_apiKey";
    try {
      var res = await dio.get(url);
      var results = res.data["results"] as List;
      log("data api $results");
      var addressEntity = AddressEntity();
      if (results.isNotEmpty) {
        var addressCompo = results.first["address_components"] as List;
        if(addressCompo.isNotEmpty){
          for (var item in addressCompo) {
            var typesList = (item["types"] as List);
            if (checkData(typesList, "country")) {
              addressEntity.county = item["long_name"];
              addressEntity.countyCode = item["short_name"];
              continue;
            }
            if (checkData(typesList, "administrative_area_level_1")) {
              addressEntity.city = item["long_name"];
              continue;
            }
            if (checkData(typesList, "administrative_area_level_2")) {
              addressEntity.district = item["long_name"];
              continue;
            }
            if (checkData(typesList, "administrative_area_level_3")) {
              addressEntity.wards = item["long_name"];
              continue;
            }
          }
        }
        addressEntity.lat = lat;
        addressEntity.lng = lng;
        if(results.first["formatted_address"] != null){
          addressEntity.address = results.first["formatted_address"];
        }
      }
      return addressEntity;

    } catch (e){
      log("lỗi call api $e");
      throw Exception(e);
    }
  }


  bool checkData(List<dynamic>list, String value){
    if(list.contains(value)){
      return true;
    }
    return false;
  }


}
