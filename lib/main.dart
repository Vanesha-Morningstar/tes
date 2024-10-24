import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MenuPage extends StatelessWidget {
  final List<Map<String, String>> menuItems = [
    {
      'judul': 'Granger Exorcist',
      'gambar': 'assets/gr.jpeg',
      'rating': '4.9',
      'waktu': '1 second',
      'review': '4,999 rb',
    },
    {
      'judul': 'Gusion 11.11',
      'gambar': 'assets/gs.jpeg',
      'rating': '4.9',
      'waktu': '1 second',
      'review': '4,999 rb',
    },
    {
      'judul': 'Leomord Ducati',
      'gambar': 'assets/leo.jpeg',
      'rating': '4.9',
      'waktu': '1 second',
      'review': '4,999 rb',
    },
    {
      'judul': 'Ling Collector',
      'gambar': 'assets/linglung.jpeg',
      'rating': '4.9',
      'waktu': '1 second',
      'review': '4,999 rb',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Price List Gift Skin MLBB'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple, 
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/glarr.jpeg'), 
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Jasa Joki Mobile Legends',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Fast, Trusted, Affordable',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
              },
            ),
            ListTile(
              leading: Icon(Icons.military_tech),
              title: Text('Rank Boosting'),
              onTap: () {
              },
            ),
            ListTile(
              leading: Icon(Icons.speed),
              title: Text('Fast Win Service'),
              onTap: () {
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text('Contact Us'),
              onTap: () {
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.6,
          ),
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            return buildMenuItem(menuItems[index]);
          },
        ),
      ),
    );
  }

  Widget buildMenuItem(Map<String, String> item) {
    var width = 20;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5), topRight: Radius.circular(5)),
            ),
            child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(1000),
                      child: Image.asset(
                        'assets/glarr.jpeg',
                        width: 35,
                        height: 35,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Glarr Store',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(width: 5),
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      radius: 7,
                      child: Icon(
                        Icons.check,
                        size: 10,
                      ),
                    )
                  ],
                )),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              item['gambar']!,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['judul']!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 16),
                    SizedBox(width: 5),
                    Text(item['rating']!, style: TextStyle(fontSize: 14)),
                    Spacer(),
                    Icon(Icons.timer, size: 16, color: Colors.grey),
                    SizedBox(width: 5),
                    Text(item['waktu']!, style: TextStyle(fontSize: 14)),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.visibility, size: 16, color: Colors.grey),
                    SizedBox(width: 5),
                    Text(item['review']!, style: TextStyle(fontSize: 14)),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(1000),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 4)
                          ]),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.bookmark_border,
                            size: 20,
                          )),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  child: Row(
                    // Gunakan Column agar Icon dan Text tersusun secara vertikal
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(
                      //   Icons.shopping_cart, // Ganti dengan ikon yang diinginkan
                      //   size: 14,             // Ukuran ikon
                      //   color: Colors.black, // Warna ikon
                      // ),
                      Text(
                        'Order',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
