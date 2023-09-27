import 'package:flutter/material.dart';
import 'Fragment/FriendsFragment.dart';
import 'Fragment/HomeFragment.dart';
import 'Fragment/MarketFragment.dart';
import 'Fragment/MenuFragment.dart';
import 'Fragment/NotificationFragment.dart';
import 'Fragment/RecentsFragment.dart';
import 'Fragment/SavedFragment.dart';
import 'Fragment/VideosFragment.dart';

void main(){
  runApp(TabBarTabViewApp());
}
class TabBarTabViewApp extends StatelessWidget {
  const TabBarTabViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Facebook"),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.home),text: "Home",),
                Tab(icon: Icon(Icons.people),text: "Friends",),
                Tab(icon: Icon(Icons.ondemand_video_sharp),text: "Videos",),
                Tab(icon: Icon(Icons.home_work_rounded),text: "Marketplace",),
                Tab(icon: Icon(Icons.notifications_none_rounded),text: "Notifications",),
                Tab(icon: Icon(Icons.widgets_rounded),text: "Menu",),
                Tab(icon: Icon(Icons.post_add),text: "Recents",),
                Tab(icon: Icon(Icons.save_alt_rounded),text: "Saved",),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomeFragment(),
              FriendsFragment(),
              VideosFragment(),
              MarketFragment(),
              NotificationFragment(),
              MenuFragment(),
              RecentsFragment(),
              SavedFragment(),
            ],
          ),
        )
    );
  }

}