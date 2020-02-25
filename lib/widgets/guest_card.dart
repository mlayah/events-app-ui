import 'package:flutter/material.dart';

class GuestCard extends StatelessWidget {
  final String guestName, guestImage, guestProffesion;

  const GuestCard(
      {Key key, this.guestName, this.guestImage, this.guestProffesion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      //To give our child ripple effect on tap
      type: MaterialType.transparency,
      child: InkWell(
        onTap: () {
          //TODO
        },
        child: Container(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(guestImage),
                backgroundColor: Colors.grey,
              ),
              SizedBox(height: 6),
              Text(
                guestName,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 3),
              Text(
                guestProffesion,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
