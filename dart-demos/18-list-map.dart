

void main(){
    List<String> names = ['India', 'USA', 'uk', 'France'];

    print(names);

    // to convert all the names to upper case similar to map in JS

    var namesUC = names.map((name) => name.toUpperCase());

    print(namesUC.toList());

    // sort the names based on alphabetic sequence
    names.sort();
    print(names);

    names.sort((n1, n2) => n1.length - n2.length);

}