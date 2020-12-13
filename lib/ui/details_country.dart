import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsPage extends StatelessWidget {
  final country;
   DetailsPage(this.country);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(country.name),
      ),
      body: ListView(
        children: <Widget>[
          Container(

            height: 250,
            child: Container(
                margin: EdgeInsets.all(20.0),
                child: SvgPicture.network(
                    country.flag,
                placeholderBuilder: (BuildContext context)=>Center(
                  child: const CircularProgressIndicator(),

                ),)),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  country.name,
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.black54,
                        fontSize: 30.0,
                      ),
                ),
                const SizedBox(height: 10),
                Text('Capital : '+
                    country.capital,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                    color: Colors.black54,
                    height: 1.5,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 10),
                Text('Native Name : '+
                    country.nativeName,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                    color: Colors.black54,
                    height: 1.5,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 10),
                Text('Region : '+
                  country.region,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        color: Colors.black54,
                        height: 1.5,
                        fontSize: 16.0,
                      ),
                ),
                const SizedBox(height: 10),
                Text('SubRegion : '+
                    country.subregion,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                    color: Colors.black54,
                    height: 1.5,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 10),
                Text('Population : '+
                    country.population.toString(),
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                    color: Colors.black54,
                    height: 1.5,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 10),
                Text('Currencies Name : '+
                    country.currencies[0].name,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                    color: Colors.black54,
                    height: 1.5,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 10),
                Text('Currencies Symbol : '+
                    country.currencies[0].symbol,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                    color: Colors.black54,
                    height: 1.5,
                    fontSize: 16.0,
                  ),
                ),




              ],
            ),
          ),
        ],
      ),
    );
  }
}
