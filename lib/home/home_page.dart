import 'package:animation/home/widgets/locations_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: buildAppBar(),
        body: const LocationsWidget(),
        bottomNavigationBar: buildBottomNavigation(),
      );

  buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: const Text('INTERESTS'),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.location_pin),
          onPressed: () {},
        ),
      ],
      leading: IconButton(
        icon: const Icon(Icons.search_outlined),
        onPressed: () {},
      ),
    );
  }

  Widget buildBottomNavigation() => BottomNavigationBar(
        elevation: 0,
        unselectedItemColor: Colors.white54,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.pin_drop_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_location),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
      );
}
