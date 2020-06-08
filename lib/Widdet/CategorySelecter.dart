import 'package:flutter/material.dart';

class CategorySelecter extends StatefulWidget {
  @override
  _CategorySelecterState createState() => _CategorySelecterState();
}

class _CategorySelecterState extends State<CategorySelecter> {
  int selectindex = 0;
  final List<String> categories = ['Message', 'Online', 'Groups', 'Requeste'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectindex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 30.0),
                child: Text(
                  categories[index],
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 22.0,
                      letterSpacing: 1.2,
                      color:
                          index == selectindex ? Colors.white : Colors.black54),
                ),
              ),
            );
          }),
    );
  }
}
