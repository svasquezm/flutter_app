## Dart advanced

### Core libraries
`dart.math` is one of Dart's core libraries. Other core libraries include `dart:core`, `dart:async`, `dart:convert`, and `dart:collection`.

## Dart for functional programming
In functional programming you can do things like:

- Pass functions as arguments.
- Assign a function to a variable.
- Deconstruct a function that takes multiple arguments into a sequence of functions that each take a single argument (also called currying).
- Create a nameless function that can be used as a constant value (also called a lambda expression; lambda expressions were added to Java in the JDK 8 release).

In Dart, functions are objects from `Function` class.

```

/// Define scream function
String scream(int length) => "A${'a' * length}h!";

main(){
    final values = [1, 3, 5, 7, 10];
    for (var length in values){
        print(scream(length));
    }
}

/// `for` block can be converted to
values.map(scream).forEach(print)

// A lot of methods are provided by dart:collections
values
    .skip(1)    /// skips the first one
    .take(3)    /// takes the next three elements
    .map(scream).forEach(print)
```

### Async
https://dartpad.dartlang.org/fae22cffa7b184b4d27cd96dd633a5af


### Null aware operators
```
/// If null operator
print(null ?? 'Welcome to Dart!');

/// This expression assigns a String value to x
var x = null
x ??= "New string value for x";

/// Null aware operator
x?.foo()
```


### Collections
Lists
```
var list = [1, 2, 3];
var list2 = [0, ...list]; // Append list values
assert(list2.length == 4);

// Conditional values
var nav = [
  'Home',
  'Furniture',
  'Plants',
  if (promoActive) 'Outlet'
];

// For are allowed too
var listOfStrings = [
  '#0',
  for (var i in listOfInts) '#$i'
];
```

Sets (unique items)
```
var names = <String>{};
// Set<String> names = {}; // This works, too.
// var names = {}; // Creates a map, not a set.
```

Maps
```
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

var gifts = Map();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

var nobleGases = Map();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';
```

### Others

Method cascades: the `..` syntax invokes a method but discards the result and returs the original receiver instead
```
myTokenTable
    ..add("aToken");
    ..add("anotherToken");
  
getAddress()
    ..setStreet(“Elm”, “13a”)
    ..city = “Carthage”
    ..state = “Eurasia”
    ..zip(66666, extended: 6666);
``` 

