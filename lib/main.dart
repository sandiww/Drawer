import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Navigation Drawer",
    debugShowCheckedModeBanner: false,
    home: _HomePage(),
  ));
}

class _HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<_HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
      ),
      body: Center(
        child: Text('Flutter Navigation Drawer'),
      ),
      drawer: _buildDrawer(),
//      endDrawer: _buildDrawer(),
    );
  }

  Widget _buildDrawer() {
    return SizedBox(
      width: MediaQuery
          .of(context)
          .size
          .width / 1.2,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Sandi Suryadi"),
              accountEmail: Text("sandis.pragma@gmail.com"),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            _buildListTitle(Icons.apps, "Applications", null),
            _buildListTitle(Icons.notifications, "Notifications", null),
            _buildListTitle(Icons.subscriptions, "Subscriptions", null),
            _buildListTitle(Icons.bookmark_border, "Wishlist", null),
            Divider(
              height: 2.0,
            ),
            _buildListTitle(null, "About", null),
            _buildListTitle(null, "Logout", Icons.input),
          ],
        ),
      ),
    );
  }

  Widget _buildListTitle(IconData iconLeading,
      String title,
      IconData iconTrailing,) {
    return ListTile(
      leading: Icon(iconLeading),
      title: Text(title),
      trailing: Icon(iconTrailing),
      onTap: () {},
    );
  }
}
