//maps are dictionary of key/value pairs 
//think of it as an array with non-int index.

class CountryInfo{


  final String name; //once the reference is set it can't be changed.
  
  final String capital; //once the reference is
  
  String currency; //this info may change tomorrow

  double? population;  //this value may even be null


  CountryInfo(this.name, this.capital, {required this.currency, this.population});

  toString(){
    return '$name [capital=$capital,currency=$currency, population=${population==null?"N/A":"$population billion"}]';
  }

  

}

void main(){
  
  var  codes= new Map<String,CountryInfo>();

  codes['IN'] = new CountryInfo('India','New Delhi', currency:'INR', population:125);
  codes['USA'] = new CountryInfo('United States', 'Washington', currency:'USD');
  codes['JP'] = new CountryInfo('Japan', 'Tokyo', currency:'YEN');

  print(codes['IN']);
  
  print(codes['JP']);

  print(codes['FR']); //invalid key. returns null;


  //replaces the current value for the key if present
  codes['IN'] = new CountryInfo('Bharat','New Delhi', currency:'INR', population:125);


  //adds a new key value in the dictionary.
  codes['DE'] = new CountryInfo("Germany","Berlin", currency:'Euro');


  for(var entry in codes.entries)
    print('${entry.key}=>${entry.value.name}');


  for(var key in codes.keys)
    print('$key => ${codes[key]?.capital}');



}