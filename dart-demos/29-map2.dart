// maps are dictionary of keey/value pairs
// think of it as an array with non-int index

class CountryInfo{
  final String name; //once the reference is set it can't be changed
  final String capital;
  String currency; // this info may change tomorrow
  double? population; // this value may even be null

  CountryInfo(this.name, this.capital, {required this.currency, this.population});

  @override
  String toString() {
    // TODO: implement toString
    return '$name [Capital=$capital, currency=$currency, population=${population ==null?"NA": "$population billion"}]';
  }
}

void main(){
 var codes = {
  'IN' : new CountryInfo('India', 'New Delhi', currency: 'INR', population: 1.3),
  'US': new CountryInfo('United States', 'Washington DC', currency: 'USD'),
  'JP': new CountryInfo('Japan', 'Tokyo', currency: 'YEN'),
 };
  
  codes.remove('JP');

var testCodes = ['IN', 'FR', 'DE', 'JP', 'US'];

  for (var testCode in testCodes){
    if(codes.containsKey(testCode))
      print('$testCode: ${codes[testCode]?.name}');
    else
      print('$testCode: No informagion available');
  }

}