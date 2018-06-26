# PlaceViewController
Sample app of how to have a UIViewController without using implicit unwrap for instance variables. I am calling it the *Place* 
pattern, it gives you a place to put your instance variables. 

Advantages:

* Implicit unwraps are potentially going to crash.
* It can help with closures so you don't need to access `self`.
* Not much more effort than using `self`.

