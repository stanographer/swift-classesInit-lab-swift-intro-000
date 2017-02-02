# Classes and Properties Lab 

![Maya](http://i.imgur.com/iuZ0ntM.jpg?1)  

> Life is pure adventure, and the sooner we realize that, the quicker we will be able to treat life as art. -[Maya Angelou](https://en.wikipedia.org/wiki/Maya_Angelou)

# La La Land

![](http://i.imgur.com/5CMOHsC.jpg)

[La La Land](https://en.wikipedia.org/wiki/La_La_Land_(film)) is a 2016 American romantic musical comedy-drama film written and directed by Damien Chazelle and starring Ryan Gosling and Emma Stone as a musician and an aspiring actress who meet and fall in love in Los Angeles. The film's title refers both to the city of Los Angeles and to the idiom for being out of touch with reality.

# Instructions

## Person Class

**1.** Navigate to the `Person.swift` file. Declare a new `Person` class. This new class should have the following stored properties:
* `firstName` of type `String` which should be a constant.
* `lastName` of type `String` which should be a constant.
* `happiness` of type `Int` with a default value of `0`.

This class should also have the following computed property:
* `fullName` of type `String`. This computed property should return back a `String` value which represents the `Person`s first and last name. For example, if the `Person` has a `firstName` value of "Ryan" and a `lastName` value of "Gosling", the `fullName` computed property should return back "Ryan Gosling".

**2.** When you are declaring a new class, you need to make sure that when it is initialized that every stored property has a value. You can never have it where you create an instance of your class and one of its stored properties will not have a value. Rest assured that this is something you don't need to memorize as the compiler will always be looking out for this and warn you if it finds that this isn't the case. In our `Person`  type here, we have a default value assigned to the `happiness` stored property and `fullName` is a computed property so we don't need to worry about those two. The `firstName` and `lastName` stored properties don't have default values. So we need to create an initializer to solve this problem. When someone will look to create an instance of `Person` they will only be able to do so through an `init` function on the type. So this `init` function will make sure to assign values to both the `firstName` and `lastName` stored properties. Again, if we didn't do this the compiler would there to let us know.

Create an `init` function with the arguments being labeled as `firstName` and `lastName`, both of type `String`. In your implementation of this function, you should assign these parameters to the `firstName` and `lastName` stored properties. Note that you should use `self` here to differentiate between the stored property and the parameter name. 

**3.** Create a function, `greet(person:)` which takes in one argument labeled as `person` of type `Person`. This function should return back a `String` value. In your implementation of this function, you should look to satisfy the following constraints:
* It should increase the `happiness` property by `2` on `self`. Note that you aren't required to use `self` here as there's no ambiguity as to which `happiness` variable we're referring to.
* It should increase the `happiness` property on the `person` argument by `2`.
* It should return back the following `String`, "Hello x." - x should be replaced with the `fullName` of the `person` instance being passed in as an argument.

**4.** Create a function, `dance(with:)` which takes in one argument labeled as `person` of type `Person`. It should return back a `String` value. Note that the argument label is `with` and the parameter name is `person`. If you're unfamiliar with what this is, you should watch the following video:

[![](http://img.youtube.com/vi/rKEGciKb4sY/0.jpg)](http://www.youtube.com/watch?v=YrKEGciKb4sY "Argument Label and Parameter Names")

In your implementation of this function, you should look to satisfy the following constraints:
* It should increase the `happiness` property by 5.
* It should increase the `happiness` property on the `person` argument by `5`.
* It should return back the following `String` value: `"💃🏼John Appleseed❤️ ❤️Becky Orange💃🏼"` Note that John Appleseed represents the `fullName` on `self` and Becky Orange refers to the `fullName` on the `person` argument passed in.

## LaLaLand Class 

**1.** Navigate to the `LaLaLand.swift` file. Declare a class called `LaLaLand`. This class should have the following two stored properties:
* `sebastian` of type `Person` with a default value being an instance of a `Person`. The first name of this `Person` should be "Sebastian" and the last name should be "Wilder".
* `mia` of type `Person` with a default value being an instance of a `Person` with the first name being "Mia" and the last name being "Dolan".

**2.** Create a function, `initialMeeting()` which takes in no arguments and returns back a `String` value. This function should have `mia` greet `sebastian` and return back the `String` value which is returned as a result to a call to the `greet(person:)` function available to instances of `Person`. `mia` should be the one that calls on this `greet(person:)` function and the argument passed in to this function call should be `sebastian`.

**3.** Create a function, `dateNight()` which takes in no arguments and returns back a `String` value. In your implemenation of this function you should have `mia` dance with `sebastian`. As a result of the call to the `dance(with:)` function, you will get back a `String` value. You should then return back this `String` value. `mia` should be calling on the `dance(with:)` function and you should pass in `sebastian` as an argument.




<a href='https://learn.co/lessons/Classes-Init' data-visibility='hidden'>View this lesson on Learn.co</a>
