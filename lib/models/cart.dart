import 'package:flutter/widgets.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{

  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Jordan',
      price: '10000',
      imagePath: 'lib/images/AirJordan.png', 
      description: 'The forward-thinking design of his latest Air Jordan, the XXXIII, is a nod to the future of the brand.'
    ),
    Shoe(
      name: 'Air Max',
      price: '15000',
      imagePath: 'lib/images/AirMax.png', 
      description: 'You\'ve got the hops and the speed, now all you need is a pair of basketball shoes that will keep up with you.'
    ),
    Shoe(
      name: 'Kyrie',
      price: '20000',
      imagePath: 'lib/images/Kyrie.png', 
      description: 'A secure midfoot strap and plush, responsive cushioning combine to deliver control and comfort for your game.'
    ),
    Shoe(
      name: 'Zoom Freak',
      price: '15000',
      imagePath: 'lib/images/ZoomFreak.png', 
      description: 'Bouncy cushioning and an extra-wide sole ensure a smooth, stable ride for fast breaks and big finishes.'
    ),
  
  ];

  // list of shoes in cart
  List<Shoe> userCart = [];


  // get list of shoes for sale
  List<Shoe> getShoeShop(){
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart(){
    return userCart;
  }

  // add to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  // remove from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }

}
