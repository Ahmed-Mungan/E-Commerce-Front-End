import 'package:flutter/material.dart';
import 'product.dart';

class productcard extends StatelessWidget {
  final Product product;
  productcard({Key? key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4).withAlpha(26),
                blurRadius: 10,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: Container(
            // height: 238,
            margin: EdgeInsets.only(right: 10),
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image(
                    image: NetworkImage("${product.image}"),
                    height: 100,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("${product.title}",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w600)),
                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Text("${product.subtitle}",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff4a4c4f),
                                    fontWeight: FontWeight.w500,
                                    height: 1.2)),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.favorite,
                                  size: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 4),
                                  child: Text("${product.rate}",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xff4a4c4f),
                                          fontWeight: FontWeight.w600)),
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 16),
                                    child: Icon(
                                      Icons.remove_red_eye,
                                      size: 20,
                                    )),
                                Container(
                                  margin: EdgeInsets.only(left: 4),
                                  child: Text("${product.details}",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xff4a4c4f),
                                          fontWeight: FontWeight.w600)),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  child: Icon(
                                    Icons.add_outlined,
                                    size: 20,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 4),
                                  child: Text(
                                    "Add",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xff4a4c4f),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        
      ],

      
    );
  }
}
