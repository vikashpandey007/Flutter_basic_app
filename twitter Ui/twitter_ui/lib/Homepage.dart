import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.white,
          floating: true,
          // centerTitle: true,
          title: Text(
            "Home",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          leading: Icon(
            Icons.account_circle,
            color: Colors.black,
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(
                Icons.star_border,
                color: Colors.black,
              ),
            )
          ],
        ),
        SliverList(
            delegate: SliverChildListDelegate(
          List.generate(10, (idx) {
            return Card(
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://free4kwallpapers.com/uploads/originals/2015/08/29/blue-rose-flower-images-hd-wallpaper.jpg"),
                    ),
                    title: GestureDetector(
                        child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 4),
                              child: Text(
                                "Vikash",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 4),
                              child: Text(
                                "pndyvikash",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 4),
                              child: Text(
                                "1 month ago",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 4),
                              child: Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.grey,
                                size: 16,
                              ),
                            )
                          ],
                        ),
                        Text(
                            "“I would advise people that if they are new to social media to start with twitter, and not a blog. It’s much easier and quicker to get into. Blogging well can take time and for many businesses out there can be difficult to come up with relevant blog articles, and put aside the time to frequently write well written articles”."),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18)),
                              child: new ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: ('' == null)
                                      ? CircularProgressIndicator()
                                      : Image(
                                          image: NetworkImage(
                                              "https://pbs.twimg.com/card_img/1218829005060739073/uBuF5Mcw?format=jpg&name=600x314"),
                                        ))),
                        ),
                      ],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 34),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        IconButton(
                          icon:
                              Icon(Icons.comment, size: 17, color: Colors.grey),
                          onPressed: () {},
                        ),
                        Text("22"),
                        IconButton(
                          icon:
                              Icon(Icons.repeat, size: 17, color: Colors.grey),
                          onPressed: () {},
                        ),
                        Text("22"),
                        IconButton(
                          icon: Icon(Icons.favorite_border,
                              size: 17, color: Colors.grey),
                          onPressed: () {},
                        ),
                        Text("22"),
                        IconButton(
                          icon: Icon(Icons.share, size: 17, color: Colors.grey),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
        )),
      ]),
    );
  }
}
