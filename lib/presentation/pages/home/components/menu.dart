import 'package:flutter/material.dart';
import 'package:patterns_examples_app/config/navigation.dart';
import 'package:patterns_examples_app/presentation/pages/home/components/menu.items.dart';

class Menu extends StatelessWidget {
   
  const Menu({super.key});
  
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: MenuItems.menuElements.length,
      itemBuilder: (context, index) {
        
        var menuElement = MenuItems.menuElements[index]; 

        return ListTile(
          title: Text( menuElement.title ),
          subtitle: Text( menuElement.description ),
          onTap: (){
            if( menuElement.page == "") return;
            Navigation.goToPage(page: menuElement.page );
          },
        );
      },
    );
  }
}