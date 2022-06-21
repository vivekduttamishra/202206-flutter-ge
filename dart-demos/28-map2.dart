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
  
    var  codes={

    'IN' : new CountryInfo('India','New Delhi', currency:'INR', population:125),
    "USA": new CountryInfo('United States', 'Washington', currency:'USD'),
    "JP" : new CountryInfo('Japan', 'Tokyo', currency:'YEN'),

    };

    var testCodes=['IN','FR','DE','JP','USA'];

    for(var testCode in testCodes){

      if(codes.containsKey(testCode))
        print("$testCode: ${codes[testCode]?.name}");
      else
        print("$testCode: No information available ");

    }

    

}