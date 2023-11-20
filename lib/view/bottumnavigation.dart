import 'package:flutter/material.dart';
import 'package:thiran_technologies/view/home_screen_one.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentTab = 0;
  List<Widget> bottomScreens = [
    HomeScreenOne(),
  ];
  PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeScreenOne();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 131, 126, 228),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = HomeScreenOne();
                        currentTab = 0;
                      });
                    },
                    child: Icon(
                      Icons.home,
                      color: currentTab == 0
                          ? const Color.fromARGB(255, 84, 138, 182)
                          : Colors.grey,
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = HomeScreenOne();
                        currentTab = 1;
                      });
                    },
                    child: Icon(
                      Icons.edit_document,
                      color: currentTab == 1
                          ? const Color.fromARGB(255, 84, 138, 182)
                          : Colors.grey,
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = HomeScreenOne();
                        currentTab = 2;
                      });
                    },
                    child: Icon(
                      Icons.inbox_rounded,
                      color: currentTab == 2
                          ? const Color.fromARGB(255, 84, 138, 182)
                          : Colors.grey,
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = HomeScreenOne();
                        currentTab = 0;
                      });
                    },
                    child: Icon(
                      Icons.settings,
                      color: currentTab == 0
                          ? const Color.fromARGB(255, 84, 138, 182)
                          : Colors.grey,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
