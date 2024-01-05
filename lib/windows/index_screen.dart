import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/constants.dart';
import 'dashboard/Home/Story/Story.dart';
import 'dashboard/Home/new_and_popular/new_and_popular.dart';
import 'dashboard/Profile/Profile.dart';
import 'dashboard/Search/Search.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  int currentIndex = 0;
  late PageController pageController;
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  List<dynamic> frames = [
    {
      'screen': NewAndPopular(),
      "label": "Accueil",
      "icon": CupertinoIcons.house,
      "isActive": false,
    },
    {
      'screen': const Search(),
      "label": "Chercher",
      "icon": Icons.search,
      "isActive": false,
    },
    {
      'screen': const Profile(),
      "label": "Ajouter",
      "icon": CupertinoIcons.add,
      "isActive": false,
    },
     {
       'screen': const Story(),
       "label": "Message",
       "icon": CupertinoIcons.envelope,
       "isActive": false,
     },
    // {
    //   'screen': const ProfileScreen(),
    //   "label": "Profil",
    //   "icon": CupertinoIcons.profile_circled,
    //   "isActive": false,
    // },
  ];

  @override
  void initState() {
    pageController = PageController(initialPage: currentIndex, keepPage: false);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _drawerKey,
      // drawer: currentIndex == 0 ? const DrawerApp() : null,
      bottomNavigationBar: Container(
        height: size.height * .09,
        alignment: Alignment.center,
        child: Material(
          color: Colors.white,
          elevation: 20,
          shadowColor: Colors.black45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ...frames
                  .asMap()
                  .entries
                  .map(
                    (el) => _buildItemBottomBar(
                  label: el.value['label'],
                  icon: el.value['icon'],
                  onPress: () {
                    updateIndexPage(el.key);
                  },
                  context: context,
                  isActive: el.key == currentIndex,
                ),
              )
                  .toList(),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: PageView(
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (page) {
                updateIndexPage(page);
              },
              controller: pageController,
              children: frames.map((e) => e["screen"] as Widget).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItemBottomBar({
    required String label,
    required IconData icon,
    required Function() onPress,
    required BuildContext context,
    required bool isActive,
  }) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onPress,
      child: Container(
        width: size.width / frames.length,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: isActive ? primaryColor : Colors.transparent,
              style: BorderStyle.solid,
              width: 2,
            ),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(color: isActive ? primaryColor : Colors.black, size: 25, icon),
            const SizedBox(height: 4),
            Text(
              label,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                color: isActive ? primaryColor : Colors.black,
                fontSize: 15 / 1.2,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
  //
  // GestureDetector buildLeading(BuildContext context) {
  //   return GestureDetector(
  //     onTap: () {
  //       Navigator.pushNamedAndRemoveUntil(
  //         context,
  //         RouterGenerator.introRoute,
  //             (route) => false,
  //       );
  //     },
  //     child: HeroLogo(),
  //   );
  // }

  void updateIndexPage(int index) {
    setState(() {
      currentIndex = index;
      pageController.jumpToPage(index);
    });
  }
}
