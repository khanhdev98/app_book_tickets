import 'dart:async';

import 'package:confict/bootstrap/di/injectable/app_injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/search_address_cubit.dart';

class SearchAddressScreen extends StatefulWidget {
  const SearchAddressScreen({Key? key}) : super(key: key);

  @override
  State<SearchAddressScreen> createState() => _SearchAddressScreenState();
}

class _SearchAddressScreenState extends State<SearchAddressScreen> {
  var searchController = TextEditingController();
  final searchStreamController = StreamController();

  final searchBloc = AppInjector.I.get<SearchAddressCubit>();
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined)),
        title: Text('address'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                height: 50,
                child: StreamBuilder(
                    stream: searchStreamController.stream,
                    builder: (context, snapshot) {
                      return TextFormField(
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            _searchAddress(value.trim());
                          }
                        },
                        maxLines: 1,
                        controller: searchController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          // prefixIcon: ShareWidgetAssets.icons.icSearch.image(),
                          suffixIcon: IconButton(
                              onPressed: () {
                                searchController.text = "";
                                searchStreamController.sink.add("");
                                searchBloc.resetData();
                              },
                            icon: const Icon(Icons.close),
                          ),//icon: ShareWidgetAssets.icons.icClose.image()),
                          //,hintText: ShareWidget.of(context).address,
                          hintStyle: theme.textTheme.bodyMedium?.copyWith(
                              color:
                                  theme.colorScheme.onSurface.withOpacity(0.6)),
                          enabledBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(50),
                                right: Radius.circular(50),
                              ),
                              borderSide: BorderSide(color: Color(0xFF24A8D8))),
                          focusedBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(50),
                                right: Radius.circular(50),
                              ),
                              borderSide: BorderSide(color: Color(0xFF24A8D8))),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(50),
                              right: Radius.circular(50),
                            ),
                            borderSide: BorderSide(color: Color(0xFF707070)),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: BlocProvider<SearchAddressCubit>.value(
                value: searchBloc,
                child: BlocBuilder<SearchAddressCubit, SearchAddressState>(
                  builder: (context, state) {
                    if (state is SearchAddressInitial ||
                        state is SearchAddressFailed) {
                      return const SizedBox.shrink();
                    }
                    if (state is SearchAddressFetching) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    var data = (state as SearchAddressSuccess).address;
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () async {
                            var addressEntity = await searchBloc.searchLatLng(
                                lat: data[index].lat, lng: data[index].lng);
                            Navigator.pop(context, addressEntity.toJson());
                          },
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 16),
                         // leading: ShareWidgetAssets.icons.imgMap.image(),
                          title: Text(data[index].address ?? "",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyLarge),
                        );
                      },
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _searchAddress(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      searchBloc.getAddress(query);
    });
  }
}
