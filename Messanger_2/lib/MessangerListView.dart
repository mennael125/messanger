import 'package:flutter/material.dart';

class MessangerListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 20,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4PLzWhh3TAejhBT_PUjTisXUXQ2KEMzolgA&usqp=CAU'),
              radius: 25,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "chats ",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.camera_alt),
                color: Colors.white,
                iconSize: 16,
              )),
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 16.0,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(
                  5.0,
                ),
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Search "),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Stories(),
                    separatorBuilder: (context, index) =>
                        SizedBox(
                          width: 20,
                        ),
                    itemCount: 10),
              ),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,

                  itemBuilder: (context, index) => Chats(),
                  separatorBuilder: (context, index) =>
                      SizedBox(
                        height: 20,
                      ),
                  itemCount: 25),


            ],
          ),)
        ,
      )
      ,
    );
  }

  Widget Stories() =>
      Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4PLzWhh3TAejhBT_PUjTisXUXQ2KEMzolgA&usqp=CAU'),
                radius: 30,
              ),

              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 9,
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 8,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Menna Elsobky ",
            style: TextStyle(
              fontWeight: FontWeight.w200,
              color: Colors.black,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      );

  Widget Chats() =>
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4PLzWhh3TAejhBT_PUjTisXUXQ2KEMzolgA&usqp=CAU'),
                radius: 30,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 9,
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 8,
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Menna ELsobky",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text("Hello my name is Menna  Elsobky ",
                      style: TextStyle(
                        fontSize: 12,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("11 : 05 pm",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w500)),
                ],
              ),
            ],
          ),
        ],
      );
}
