import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text('Notification', style: TextStyle(fontSize: 16)),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(1, 1),
                                    blurRadius: 3,
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.star_border_outlined,
                                color: Colors.grey,
                              ),
                            ),
                            title: Text('Notification ${index}'),
                            trailing: Icon(
                              Icons.delete_outline,
                              color: Colors.red,
                            ),
                          ),
                          Divider()
                        ],
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
