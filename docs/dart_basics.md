## Dart basics

Dart is an Open Source programming language developed by Google in 2011.
Its main goal is to be an alternative for Javascript in Web development. The main advantage is to be a flexible and structured programming language for Web development.

From 2011, Google Chrome supports Dart applications and it is offered for competitors as well.

### Classes and Objects
1. In Dart, everything is an object (extends Object)
2. Dart is strongly typed, but Dart can infer types
3. Nested functions are allowed, also static and instance functions. Same with variables.
4. If an object isn’t restricted to a single type, specify the Object or dynamic type


```
/// Create a Bike object. This object is mutable due "var" keyword
var bike = Bike(1, 2, 3);

/// a Inmmutable variable should be declared as "final"
final iBike = Bike(4, 5, 6);

/// All Dart classes has toString() method.
/// Fat arrow notation (=>) can be used for one line functions
@override
String toString() => 'Bicycle: $speed mph';

// To declare private fields, use a '_' as a prefix
int _speed = 0;

// For gettes, you can write
int get speed => _speed;

/// Dart does not support overloading constructors, this is solved as follows
Rectangle({ this.origin = const Point(0, 0), this.width = 0, this.height = 0 });

/// you can create your objcts like this
Rectangle({origin: const Point(10, 20), width: 100, height: 120})

```

### More about classes and objects
```
/// Dart includes factory keyword, which allows you create a factory constructor
abstract class Shape {
    factory Shape(String type){
        if (type == 'circle') return Circle(2);
        if (type == 'rectangle') return Rectangle(2, 4);
        throw 'Cannot create $type shape'
    }
    
    num get area;
}

/// An implementation of Shape could be
class Circle implements Shape {
    final num radius;
    Circle(this.radius);
    num get area => pi * pow(radius, 2)
}

// And factory must be used like this
Shape('circle') // It will return a Circle(2) instance
```

### Strings
```
/// You can escape your string like this
"The rectangles origins is in (${origin.x}, ${origin.y})"

```

### Interfaces?
The Dart language doesn't include an interface keyword because every class defines an interface.
This means that you can `extends` or just implement a behavior.

```
class CircleMock implements Circle {
  num area;
  num radius;
}
```