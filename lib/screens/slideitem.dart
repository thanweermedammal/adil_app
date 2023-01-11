import 'package:flutter/cupertino.dart';

class SlideItem extends StatelessWidget {
  var index;

  SlideItem({Key? key, @required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                index == 0 ? "Manage" : "Inspection",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                index == 0
                    ? "Your Projects Like A Pro!"
                    : "Advanced & Accessible.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  index == 0
                      ? "يساعد على إدارة مشاريعك بطريقة متقدمة"
                      : "طريقة متطورة وسهلة للفحص",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400))
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Image.asset(index == 0
              ? "assets/images/slide1.gif"
              : "assets/images/slide2.gif")
        ],
      ),
    );
  }
}
