part of 'search_address_cubit.dart';

abstract class SearchAddressState extends Equatable {
  const SearchAddressState();
  @override
  List<Object> get props => [];
}

class SearchAddressInitial extends SearchAddressState {
  const SearchAddressInitial();
  @override
  List<Object> get props => [];
}

class SearchAddressFetching extends SearchAddressState {
  const SearchAddressFetching();
  @override
  List<Object> get props => [];
}
class SearchAddressSuccess extends SearchAddressState {
  final List<AddressEntity> address;
  const SearchAddressSuccess(this.address);
  @override
  List<Object> get props => [address];
}

class SearchAddressFailed extends SearchAddressState {
  const SearchAddressFailed();
  @override
  List<Object> get props => [];
}
