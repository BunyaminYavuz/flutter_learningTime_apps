import 'package:flutter/material.dart';

class GridviewUsage extends StatelessWidget {
  const GridviewUsage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 100,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn-icons-png.flaticon.com/512/25/25231.png"),
                    fit: BoxFit.contain),
                border: Border.all(
                    color: Colors.teal.shade300,
                    width: 5,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.teal.shade300,
                      offset: Offset(10, 5),
                      blurRadius: 10),
                ],
                color: Colors.purple[100 * ((index + 1) % 9)],
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.yellow],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
              margin: EdgeInsets.all(20),
              child: Text(
                "Git $index",
                textAlign: TextAlign.center,
              ),
            ),
            onTap: () => debugPrint("Git $index tap"),
            onDoubleTap: () => debugPrint("Git $index double tap"),
            onLongPress: () => debugPrint("Git $index long press"),
            onHorizontalDragStart: (details) => debugPrint("Git $index horizontal drag start $details"),
          );
        });
  }

  Container grid() {
    return Container(
      color: Colors.teal.shade300,
      child: Text(
        "Hello Flutter",
        textAlign: TextAlign.center,
      ),
    );
  }
}

/*
GridView.extent(
      maxCrossAxisExtent: 100,
      primary: true,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      
      children: [
        grid() ,
        grid(),
        grid(),
        grid(),
        grid(),
        grid(),
        grid(),
        grid(),
        grid(),
        grid(),
        grid(),
        grid(),
        grid(),
        grid(),
        grid(),
        grid(),
    
      ],
    );
*/ 

/*
GridView.count(
      crossAxisCount: 4,
      primary: true,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        grid() ,
        grid(),
        grid(),
        grid(),
        grid(),
        grid(),
        grid(),
        grid(),
        grid(),
        grid(),
    
      ],
    );
*/
