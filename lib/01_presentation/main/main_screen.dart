import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../02_application/category/category_bloc.dart';
import '../home/home_screen.dart';
import '../../05_core/utils/themes.dart';

class MainScreen extends StatefulWidget {
  final int? passedIndex;
  const MainScreen({super.key, this.passedIndex});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _list = <Widget>[
    const HomeScreen(),
    Container(),
  ];

  @override
  void initState() {
    // Initialise blocs
    context.read<CategoryBloc>().add(const CategoryEvent.initialEvent());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.passedIndex != null) {
      _selectedIndex = widget.passedIndex!;
      // widget.passedIndex = null;
    }
    return Scaffold(
      body: _list[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        backgroundColor: cBackgroundColor,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        selectedItemColor: cPrimaryColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'Products',
          ),
        ],
      ),
    );
  }
}
