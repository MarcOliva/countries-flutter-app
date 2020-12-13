import 'package:countries_app/helpers/http_helper.dart';
import 'package:countries_app/models/country.dart';
import 'package:countries_app/ui/details_country.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HttpHelper httpHelper;
  List<Country> countries;
  final textEditingController = TextEditingController();

  Future searchCountry (String value)async {
    if(value.isNotEmpty){
      var result = await httpHelper.getCountryByName(value);
      setState(() {
        countries = result;
      });
    }else{
      await getAllCountries();
    }

  }
  Future getAllCountries() async {
    var result = await httpHelper.getAllCountries();
    setState(() {
      countries = result;
    });
  }

  @override
  void initState() {
    countries = List();
    httpHelper = HttpHelper();
    if (mounted) {
      getAllCountries();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

      return Column(
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Search Country",
                    prefixIcon:  Icon(
                        Icons.search
                    )
                ),
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.search,
                 onChanged: (String value){
                   print(value);
                   searchCountry(value);
                },
                onFieldSubmitted: (String value){
                  searchCountry(value);
                },


                controller:textEditingController),

          ),
          ListCountries(countries)
        ],
      );

    }
  }
  Widget ListCountries (countries){
    if (countries.isEmpty) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Expanded(child:
      ListView.builder(
          itemCount: countries.length,
          itemBuilder: (BuildContext context, i) {
            return Card(
                color: Colors.white,
                elevation: 3.0,
                child: TransitionListTile(countries[i]));
          })
      );
  }

}

class TransitionListTile extends StatefulWidget {
  final country;

  TransitionListTile(this.country);

  @override
  _TransitionListTileState createState() => _TransitionListTileState(country);
}

class _TransitionListTileState extends State<TransitionListTile> {
  final country;

  _TransitionListTileState(this.country);

  ContainerTransitionType _transitionType = ContainerTransitionType.fade;

  @override
  Widget build(BuildContext context) {
    return OpenContainer<bool>(
      transitionType: _transitionType,
      openBuilder: (BuildContext _, VoidCallback openContainer) {
        return DetailsPage(country);
      },
      tappable: false,
      closedShape: const RoundedRectangleBorder(),
      closedElevation: 0.0,
      closedBuilder: (BuildContext _, VoidCallback openContainer) {
        return ListTile(
          onTap: openContainer,
          title: Text(country.name),
          subtitle: Text(country.capital),
        );
      },
    );
  }
}
