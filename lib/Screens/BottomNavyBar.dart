import 'package:flutter/material.dart';

class BottomNavyBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onItemSelected;

  BottomNavyBar(
      {Key key, this.currentIndex = 0, @required this.onItemSelected}) {
    assert(items != null);
    assert(items.length >= 2 && items.length <= 5);
    assert(onItemSelected != null);
  }

  final List<NavigationItem> items = [
    NavigationItem(Icon(Icons.home), "Home"),
    NavigationItem(Icon(Icons.archive), "Repositórios"),
    NavigationItem(Icon(Icons.question_answer), "Issues"),
  ];

  Widget buildItem(NavigationItem item, bool isSelected) {
    return AnimatedContainer(
      alignment: Alignment.center,
      duration: Duration(milliseconds: 200),
      padding: EdgeInsets.all(10),
      height: 80,
      width: isSelected ? 150 : 80,
      decoration: isSelected
          ? BoxDecoration(
              color: (currentIndex == 0
                  ? Colors.green
                  : currentIndex == 1 ? Colors.blueAccent : Colors.red),
              borderRadius: BorderRadius.circular(40))
          : null,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: <Widget>[
            IconTheme(
              data: isSelected
                  ? IconThemeData(size: 40, color: Colors.white)
                  : IconThemeData(size: 40, color: Colors.black),
              child: item.icon,
            ),
            isSelected
                ? Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Text(
                      item.title,
                      overflow: TextOverflow.fade,
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                : Container()
          ])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)]),
        height: 80,
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: items.map((item) {
            var indexItem = items.indexOf(item);
            return GestureDetector(
              onTap: () {
                onItemSelected(indexItem);
              },
              child: buildItem(item, currentIndex == indexItem),
            );
          }).toList(),
        ));
  }
}

class NavigationItem {
  final Icon icon;
  final String title;

  NavigationItem(this.icon, this.title);
}
