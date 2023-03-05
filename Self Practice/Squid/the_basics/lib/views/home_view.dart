import 'package:flutter/material.dart';
import 'package:the_basics/pages/favorites_page.dart';
import 'package:the_basics/pages/main_page.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    Widget showingPage;
    switch (selectedIndex) {
      case 0:
        showingPage = MainPage();
        break;
      case 1:
        showingPage = FavoritesPage();
        break;
      case 2:
        showingPage = Scaffold();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Center(
            child: Row(
              children: [
                SafeArea(
                  child: NavigationRail(
                    extended: constraints.maxWidth >= 1000,
                    destinations: [
                      NavigationRailDestination(
                        icon: Icon(Icons.home),
                        label: Text('Home'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.favorite),
                        label: Text('Favorites'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.person),
                        label: Text('User'),
                      ),
                    ],
                    selectedIndex: selectedIndex,
                    onDestinationSelected: (value) {
                      setState(() {
                        selectedIndex = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    child: showingPage,
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}