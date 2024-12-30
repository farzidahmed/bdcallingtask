import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  final int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 0.8,
        child: Row(
          children: [
            IconButton(onPressed: (){},
                icon: Icon(Icons.home,color: selectedIndex==0?Colors.blueGrey:Colors.grey,)),
            IconButton(onPressed: (){},
                icon: Icon(Icons.monitor,color: selectedIndex==0?Colors.blueGrey:Colors.grey,)),
            IconButton(onPressed: (){},
                icon: Icon(Icons.arrow_downward_rounded,color: selectedIndex==0?Colors.blueGrey:Colors.grey,)),
            IconButton(onPressed: (){},
                icon: Icon(Icons.person,color: selectedIndex==0?Colors.blueGrey:Colors.grey,)),
          ],
        ),
      ),
    );
  }
}
