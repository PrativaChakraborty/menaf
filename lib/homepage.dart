import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menaf/constants.dart';
import 'package:rating_bar/rating_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.sync_alt,
                      color: Utils.primaryColor,
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    "(0)",
                    style: TextStyle(color: Utils.primaryColor),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Utils.primaryColor,
                    ),
                    onPressed: () {},
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Utils.primaryColor,
                    size: 20,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      border: Border.all(color: Utils.primaryColor, width: 1.5),
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Icon(
                      Icons.menu,
                      color: Utils.primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: ListView(
              children: [
                getSearchBar(),
                Divider(
                  height: 4,
                  color: Utils.primaryColor,
                  thickness: 3,
                  indent: 0,
                  endIndent: 0,
                ),
                getPictureCaraousal(),
                //Spacer(),
                SizedBox(height: 15),
                Column(
                  children: [
                    Text(
                      'Latest Featured Products'.toUpperCase(),
                      style: Utils.headline_1,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          5,
                          (index) => getFeaturedCard(context),
                        ),
                      ),
                    ),
                    SizedBox(height: 35),
                    Text(
                      ' Bundled Products'.toUpperCase(),
                      style: Utils.headline_1,
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          5,
                          (index) => getBundledCard(context),
                        ),
                      ),
                    ),
                    SizedBox(height: 35),
                    Text(
                      ' Classified Products'.toUpperCase(),
                      style: Utils.headline_1,
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.32,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          5,
                          (index) => getClassifiedCard(context),
                        ),
                      ),
                    ),
                    SizedBox(height: 80)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container getFeaturedCard(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Utils.borderColor),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400],
            offset: Offset(5, 5),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          )
        ], //BoxShadow
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://c.s-microsoft.com/en-us/CMSImages/1920_Panel1_Hero_Laptop.jpg?version=090f3049-8032-1102-e65b-498904a634e1',
              height: MediaQuery.of(context).size.height * 0.2,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'HP Laptop',
            style: Utils.subtitle,
          ),
          Divider(
            thickness: 1,
            color: Utils.borderColor,
            height: 1,
          ),
          RatingBar.readOnly(
            initialRating: 3.5,
            isHalfAllowed: true,
            halfFilledIcon: Icons.star_half,
            filledIcon: Icons.star,
            emptyIcon: Icons.star_border,
            emptyColor: Colors.grey,
            filledColor: Colors.yellow[700],
            halfFilledColor: Colors.yellow[700],
            size: 20,
          ),
          Text(
            '\$ 89.10',
            style: Utils.subtitle.copyWith(color: Colors.black),
          ),
          Text(
            'menaf',
            style:
                Utils.searchBarStyle.copyWith(fontSize: 15, color: Colors.grey),
          ),
          Divider(
            thickness: 1,
            color: Utils.borderColor,
            height: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildIconContainer(Icons.sync_alt),
              buildIconContainer(Icons.favorite),
              buildIconContainer(Icons.shopping_cart),
            ],
          )
        ],
      ),
    );
  }

  Container getBundledCard(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Utils.borderColor),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400],
            offset: Offset(5, 5),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          )
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://c.s-microsoft.com/en-us/CMSImages/1920_Panel1_Hero_Laptop.jpg?version=090f3049-8032-1102-e65b-498904a634e1',
              height: MediaQuery.of(context).size.height * 0.2,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'HP Laptop',
            style: Utils.subtitle,
          ),
          Divider(
            thickness: 1,
            color: Utils.borderColor,
            height: 2,
          ),
          RatingBar.readOnly(
            initialRating: 3.5,
            isHalfAllowed: true,
            halfFilledIcon: Icons.star_half,
            filledIcon: Icons.star,
            emptyIcon: Icons.star_border,
            emptyColor: Colors.grey,
            filledColor: Colors.yellow[700],
            halfFilledColor: Colors.yellow[700],
            size: 20,
          ),
          Text(
            '\$ 89.10',
            style: Utils.subtitle.copyWith(color: Colors.black),
          ),
          Divider(
            thickness: 1,
            color: Utils.borderColor,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text(
              'menaf',
              style: Utils.searchBarStyle
                  .copyWith(fontSize: 15, color: Colors.grey),
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Utils.primaryColor,
            ),
            child: Center(
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container getClassifiedCard(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Utils.borderColor),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400],
            offset: Offset(5, 5),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          )
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://c.s-microsoft.com/en-us/CMSImages/1920_Panel1_Hero_Laptop.jpg?version=090f3049-8032-1102-e65b-498904a634e1',
              height: MediaQuery.of(context).size.height * 0.2,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'HP Laptop',
            style: Utils.subtitle,
          ),
          Divider(
            thickness: 1,
            color: Utils.borderColor,
            height: 2,
          ),
          Text(
            '\$ 89.10',
            style: Utils.subtitle.copyWith(color: Colors.black),
          ),
          Divider(
            thickness: 1,
            color: Utils.borderColor,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text(
              'seller :',
              style: Utils.searchBarStyle
                  .copyWith(fontSize: 15, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }

  Container buildIconContainer(IconData icon) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: Colors.grey[200], width: 6),
        color: Utils.primaryColor,
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }

  Padding getPictureCaraousal() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 300,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 4),
            autoPlayAnimationDuration: Duration(milliseconds: 300),
          ),
          items: [
            Image.network(
                'https://thumbor.forbes.com/thumbor/fit-in/1200x0/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5f8ce3bc303aa96a0ceca6b1%2F0x0.jpg'),
            Image.network(
                'https://boutiquehearing.com/wp-content/uploads/2019/11/shopping-bags.jpg'),
            Image.network(
                'https://img.etimg.com/thumb/width-1200,height-800,imgsize-151551,resizemode-1,msid-77245062/industry/services/retail/end-of-sales-season-retailers-see-washout-as-consumers-stay-away-from-malls-online-shopping.jpg'),
          ],
        ),
      ),
    );
  }

  Container getSearchBar() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'What Are You Looking For?',
              hintStyle: Utils.searchBarStyle.copyWith(fontSize: 18),
              contentPadding: EdgeInsets.all(10),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Utils.primaryColor.withOpacity(0.6),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              suffixIcon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Utils.primaryColor,
                ),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              )),
        ),
      ),
    );
  }
}
