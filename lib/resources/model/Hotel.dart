class Hotel {
  String _name, _location, _imgURL;
  int _active, _price;

  Hotel(this._name, this._location, this._price, this._active, this._imgURL);

  String get name => this._name;
  String get location => this._location;
  String get imgURL => this._imgURL;
  int get active => this._active;
  int get price => this._price;
}
