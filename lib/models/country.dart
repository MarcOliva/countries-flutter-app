class Country {
  String _name;
  List<String> _topLevelDomain;
  String _alpha2Code;
  String _alpha3Code;
  List<String> _callingCodes;
  String _capital;
  String _region;
  String _subregion;
  int _population;
  String _demonym;
  double _area;
  double _gini;
  List<String> _timezones;
  String _nativeName;
  String _numericCode;
  List<Currencies> _currencies;
  List<Languages> _languages;
  String _flag;
  String _cioc;

  Country(
      {String name,
      List<String> topLevelDomain,
      String alpha2Code,
      String alpha3Code,
      List<String> callingCodes,
      String capital,
      String region,
      String subregion,
      int population,
      String demonym,
      double area,
      double gini,
      List<String> timezones,
      String nativeName,
      String numericCode,
      List<Currencies> currencies,
      List<Languages> languages,
      String flag,
      String cioc}) {
    this._name = name;
    this._topLevelDomain = topLevelDomain;
    this._alpha2Code = alpha2Code;
    this._alpha3Code = alpha3Code;
    this._callingCodes = callingCodes;
    this._capital = capital;
    this._region = region;
    this._subregion = subregion;
    this._population = population;
    this._demonym = demonym;
    this._area = area;
    this._gini = gini;
    this._timezones = timezones;
    this._nativeName = nativeName;
    this._numericCode = numericCode;
    this._currencies = currencies;
    this._languages = languages;
    this._flag = flag;
    this._cioc = cioc;
  }

  String get name => _name;
  set name(String name) => _name = name;
  List<String> get topLevelDomain => _topLevelDomain;
  set topLevelDomain(List<String> topLevelDomain) =>
      _topLevelDomain = topLevelDomain;
  String get alpha2Code => _alpha2Code;
  set alpha2Code(String alpha2Code) => _alpha2Code = alpha2Code;
  String get alpha3Code => _alpha3Code;
  set alpha3Code(String alpha3Code) => _alpha3Code = alpha3Code;
  List<String> get callingCodes => _callingCodes;
  set callingCodes(List<String> callingCodes) => _callingCodes = callingCodes;
  String get capital => _capital;
  set capital(String capital) => _capital = capital;
  String get region => _region;
  set region(String region) => _region = region;
  String get subregion => _subregion;
  set subregion(String subregion) => _subregion = subregion;
  int get population => _population;
  set population(int population) => _population = population;
  String get demonym => _demonym;
  set demonym(String demonym) => _demonym = demonym;
  double get area => _area;
  set area(double area) => _area = area;
  double get gini => _gini;
  set gini(double gini) => _gini = gini;
  List<String> get timezones => _timezones;
  set timezones(List<String> timezones) => _timezones = timezones;
  String get nativeName => _nativeName;
  set nativeName(String nativeName) => _nativeName = nativeName;
  String get numericCode => _numericCode;
  set numericCode(String numericCode) => _numericCode = numericCode;
  List<Currencies> get currencies => _currencies;
  set currencies(List<Currencies> currencies) => _currencies = currencies;
  List<Languages> get languages => _languages;
  set languages(List<Languages> languages) => _languages = languages;
  String get flag => _flag;
  set flag(String flag) => _flag = flag;
  String get cioc => _cioc;
  set cioc(String cioc) => _cioc = cioc;

  Country.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _topLevelDomain = json['topLevelDomain'].cast<String>();
    _alpha2Code = json['alpha2Code'];
    _alpha3Code = json['alpha3Code'];
    _callingCodes = json['callingCodes'].cast<String>();
    _capital = json['capital'];
    _region = json['region'];
    _subregion = json['subregion'];
    _population = json['population'];
    _demonym = json['demonym'];
    _area = json['area'];
    _gini = json['gini'];
    _timezones = json['timezones'].cast<String>();
    _nativeName = json['nativeName'];
    _numericCode = json['numericCode'];
    if (json['currencies'] != null) {
      _currencies = new List<Currencies>();
      json['currencies'].forEach((v) {
        _currencies.add(new Currencies.fromJson(v));
      });
    }
    if (json['languages'] != null) {
      _languages = new List<Languages>();
      json['languages'].forEach((v) {
        _languages.add(new Languages.fromJson(v));
      });
    }
    _flag = json['flag'];
    _cioc = json['cioc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['topLevelDomain'] = this._topLevelDomain;
    data['alpha2Code'] = this._alpha2Code;
    data['alpha3Code'] = this._alpha3Code;
    data['callingCodes'] = this._callingCodes;
    data['capital'] = this._capital;
    data['region'] = this._region;
    data['subregion'] = this._subregion;
    data['population'] = this._population;
    data['demonym'] = this._demonym;
    data['area'] = this._area;
    data['gini'] = this._gini;
    data['timezones'] = this._timezones;
    data['nativeName'] = this._nativeName;
    data['numericCode'] = this._numericCode;
    if (this._currencies != null) {
      data['currencies'] = this._currencies.map((v) => v.toJson()).toList();
    }
    if (this._languages != null) {
      data['languages'] = this._languages.map((v) => v.toJson()).toList();
    }
    data['flag'] = this._flag;
    data['cioc'] = this._cioc;
    return data;
  }
}

class Currencies {
  String _code;
  String _name;
  String _symbol;

  Currencies({String code, String name, String symbol}) {
    this._code = code;
    this._name = name;
    this._symbol = symbol;
  }

  String get code => _code;
  set code(String code) => _code = code;
  String get name => _name;
  set name(String name) => _name = name;
  String get symbol => _symbol;
  set symbol(String symbol) => _symbol = symbol;

  Currencies.fromJson(Map<String, dynamic> json) {
    _code = json['code'];
    _name = json['name'];
    _symbol = json['symbol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this._code;
    data['name'] = this._name;
    data['symbol'] = this._symbol;
    return data;
  }
}

class Languages {
  String _iso6391;
  String _iso6392;
  String _name;
  String _nativeName;

  Languages({String iso6391, String iso6392, String name, String nativeName}) {
    this._iso6391 = iso6391;
    this._iso6392 = iso6392;
    this._name = name;
    this._nativeName = nativeName;
  }

  String get iso6391 => _iso6391;
  set iso6391(String iso6391) => _iso6391 = iso6391;
  String get iso6392 => _iso6392;
  set iso6392(String iso6392) => _iso6392 = iso6392;
  String get name => _name;
  set name(String name) => _name = name;
  String get nativeName => _nativeName;
  set nativeName(String nativeName) => _nativeName = nativeName;

  Languages.fromJson(Map<String, dynamic> json) {
    _iso6391 = json['iso639_1'];
    _iso6392 = json['iso639_2'];
    _name = json['name'];
    _nativeName = json['nativeName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['iso639_1'] = this._iso6391;
    data['iso639_2'] = this._iso6392;
    data['name'] = this._name;
    data['nativeName'] = this._nativeName;
    return data;
  }
}
