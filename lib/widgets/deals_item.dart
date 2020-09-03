import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class DealsItem extends StatelessWidget {
  final String title;
  final String description;
  final String code;
  final bool isNew;

  DealsItem({
    this.title,
    this.description,
    this.code,
    this.isNew,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.topCenter, children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 30),
        child: DottedBorder(
          borderType: BorderType.Rect,
          dashPattern: [5, 3],
          strokeWidth: 3,
          color: Color.fromRGBO(40, 40, 40, 1),
          child: Container(
            alignment: Alignment.topCenter,
            height: 150,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'USE CODE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    code,
                    style: TextStyle(
                      color: Color.fromRGBO(246, 143, 125, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 40,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      Positioned(
        top: 20,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: isNew
              ? Container(
                  color: Color.fromRGBO(246, 143, 125, 1),
                  width: 50,
                  height: 20,
                  child: Center(
                    child: Text(
                      'NEW',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              : null,
        ),
      ),
    ]);
  }
}
