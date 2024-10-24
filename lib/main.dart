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
      'judul'   : 'Price List Epic - Legend',
      'gambar'  : 'gr.jpeg',
      'rating'  : '4.9',
      'waktu'   : '1 second',
      'review'  : '4,999 rb',
    },
    {
      'judul'   : 'Price List Epic - Legend',
      'gambar'  : 'gs.jpeg',
      'rating'  : '4.9',
      'waktu'   : '1 second',
      'review'  : '4,999 rb',
    },
    {
      'judul'   : 'Price List Epic - Legend',
      'gambar'  : 'nolan.jpeg',
      'rating'  : '4.9',
      'waktu'   : '1 second',
      'review'  : '4,999 rb',
    },
    {
      'judul'   : 'Price List Epic - Legend',
      'gambar'  : 'linglung.jpeg',
      'rating'  : '4.9',
      'waktu'   : '1 second',
      'review'  : '4,999 rb',
    }
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: ButtonBar(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.chevron_left))
          ],
        ),
        title: Text('Price List Epic - Legend'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.5,
          ),
          itemCount: menuItems.length,
          itemBuilder: (context,index) {
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
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(1000),
                  child: Image.asset(
                    'lom ada',
                    width: 20,
                    height: 20,
                  ),
                ),
                SizedBox(width: 5,),
                Text(
                  'lom ada',
                  textAlign: TextAlign.center,
                  style:
                  TextStyle(
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
            )
          ),
        ),
      ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
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
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 16
                ),
                SizedBox(width: 5),
                Text(
                  item['rating']!,
                  style: TextStyle(
                    fontSize: 14
                  )
                ),
                Spacer(),
                Icon(
                  Icons.timer,
                  size: 16,
                  color: Colors.grey
                ),
                SizedBox(width: 5),
                Text(
                  item['waktu']!,
                  style: TextStyle(
                    fontSize: 14
                  )
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(
                  Icons.visibility,
                  size: 16,
                  color: Colors.grey
                ),
                SizedBox(width: 5),
                Text(
                  item['review']!,
                  style: TextStyle(
                    fontSize: 14
                  )
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(1000),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4
                      )
                    ]
                  ),
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.bookmark_border,
                      size: 20,
                    )
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      ],
    ),
  );
}
}

