import 'package:unilever_app/presentation/presentation_export.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({ Key? key }) : super(key: key);

  static const String routeName = '/navigation';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const NavigationScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {

  int CurrentTab = 0;
  final List<Widget> screens = 
  [
    WelcomeScreen(),
    CategoryScreen(),
    SearchScreen(),
    ShoppingScreen()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen =  WelcomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
       floatingActionButton: const FloatingShoppingWidgets(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
         child:  Container(
          height: 80,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 18, right: 10, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                        minWidth: 30,
                        onPressed: () {
                           setState(() {
                             currentScreen = WelcomeScreen();
                             CurrentTab = 0;
                           });
                        },
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.home_outlined,
                                color: CurrentTab == 0 ? principal : Colors.grey[400],
                                size: 38,
                              ),
                              Text("Home",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: CurrentTab == 0 ? principal : Colors.grey[600]))
                            ])),
                    MaterialButton(
                        minWidth: 30,
                        onPressed: () {
                           setState(() {
                             currentScreen = CategoryScreen();
                             CurrentTab = 1;
                           });
                        },
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.grid_view_outlined,
                                color: CurrentTab == 1 ? principal : Colors.grey[400],
                                size: 38,
                              ),
                              Text("Category",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: CurrentTab == 1 ? principal : Colors.grey[600]))
                            ])),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                        minWidth: 30,
                        onPressed: () {
                          setState(() {
                             currentScreen = SearchScreen();
                             CurrentTab = 2;
                           });
                        },
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.search,
                                color: CurrentTab == 2 ? principal : Colors.grey[400],
                                size: 38,
                              ),
                              Text("Search",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: CurrentTab == 2 ? principal : Colors.grey[600]))
                            ])),
                    MaterialButton(
                        minWidth: 30,
                        onPressed: () {
                        },
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.menu,
                                color: CurrentTab == 3 ? principal : Colors.grey[400],
                                size: 38,
                              ),
                              Text("Menu",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: CurrentTab == 3 ? principal : Colors.grey[600]))
                            ])),
                  ],
                ),
              ],
            ),
          )),
      ),
    );
  }
}