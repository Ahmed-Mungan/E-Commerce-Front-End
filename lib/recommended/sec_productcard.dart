import 'package:flutter/material.dart';
import 'sec_product.dart';

class secproductcard extends StatelessWidget {
  final secProduct SecProduct;

  secproductcard({Key? key, required this.SecProduct});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4).withAlpha(26),
            blurRadius: 5,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            child: Image.network(
              "${SecProduct.image}",
              height: 90.0,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Container(
              height: 90,
              margin: EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('${SecProduct.title}',
                          style: TextStyle(
                              fontSize: 17,
                              color: Color(0xff495057),
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0)),
                      Icon(
                        Icons.favorite,
                        color: Color(0xff495057).withAlpha(80),
                        size: 22,
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 4),
                        child: Text('${SecProduct.subtitle}',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff495057),
                                fontWeight: FontWeight.w700)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.store,
                            size: 20,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 4),
                            child: Text(
                              '${SecProduct.shopname}',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff495057),
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      Text(
                        "\$ " + '${SecProduct.price}',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff495057),
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
