import 'package:flutter/material.dart';

class CommonFooterMenu{
  late BuildContext context; 
  CommonFooterMenu(this.context); 
  void goScreen(int newScreen) {
    print("going to new screen: $newScreen");
    switch(newScreen){
      case 0:
        Navigator.popAndPushNamed(context, "/pantry");
        break;
      case 1:
        Navigator.popAndPushNamed(context, "/shopping"); 
        break; 
      case 2:
        Navigator.popAndPushNamed(context, "/add");
        break;
      case 3:
        Navigator.popAndPushNamed(context, "/edit"); 
        break;
      case 4: 
        Navigator.popAndPushNamed(context, "/settings"); 
        break; 
    }
  }
  

  getFooterMenu(int index){
    var bnb = BottomNavigationBar(
      currentIndex: index, 
      selectedItemColor: Colors.blue,
      showSelectedLabels: true,
      unselectedItemColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.food_bank),
          label: 'My Pantry',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.food_bank_outlined),
          label: 'Shopping List'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.food_bank_rounded),
          label: 'Add Product',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.food_bank_sharp),
          label: 'Edit Product' 
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.food_bank_outlined),
          label: 'Settings'
        ),
      ],
      onTap: (int index){
        goScreen(index); 
      });
    var theme = Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.blue),
      child: bnb);
    return theme;
  }
  }