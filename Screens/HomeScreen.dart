import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:realestate/Material/responsive.dart';
import 'package:realestate/widget/Constant.dart';
import 'package:realestate/widget/menu/sideMenuSection.dart';
import 'MainSection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)?null:AppBar(
        backgroundColor: keyBgColor,
        leading: Builder(
          builder: (context)=>IconButton(onPressed: () {Scaffold.of(context).openDrawer();},icon: Icon(Icons.menu_outlined),),
        ),
      ),
      drawer: SideMenuSection(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width ),
            child: Row(
              children: [
                if(Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: Container(
                    child: SideMenuSection(),

                  ),
                ),
                Expanded(flex: 7, child: MainSection(),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
