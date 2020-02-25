import 'package:flutter/material.dart';

import '../styles.dart';

class SingleEvent extends StatelessWidget {

  //define variables
  final String eventType;
  final String eventDate;
  final String eventImage;
  final String eventName;
  final String eventOfferText;
  final String eventVenue;
  final String guestPicture;
  final String guestName;
  final String guestDesignation;

//create parameterized constructor
  const SingleEvent(
      {Key key,
      this.eventType,
      this.eventDate,
      this.eventImage,
      this.eventName,
      this.eventOfferText,
      this.eventVenue,
      this.guestPicture,
      this.guestName,
      this.guestDesignation})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.indigo[200],
              spreadRadius: 1,
              blurRadius: 5,
            )
          ]),
      padding: EdgeInsets.all(16),
      child: InkWell(
        onTap: () => {
          //TODO ripple effect
        },
        highlightColor: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: 40,
                  width: 100,
                  padding: EdgeInsets.only(left: 12, right: 12),
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                    color: Colors.indigo[900],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    eventType,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )),
                ),
                SizedBox(width: 12),
                Text(
                  eventDate,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.black,
                        size: 28,
                      ),
                      onPressed: () => {
                        //TODO
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    eventImage,
                    height: 90,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      eventName,
                      style: TextStyle(
                        color: searchBarColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.local_offer,
                          color: Colors.grey,
                          size: 22,
                        ),
                        SizedBox(width: 12),
                        Text(
                          eventOfferText,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.blue[300],
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 12),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  color: Colors.indigo,
                  size: 26,
                ),
                SizedBox(width: 12),
                Text(
                  eventVenue,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: searchBarColor,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            //SizedBox(height: 6),

            ListTile(
              contentPadding: EdgeInsets.only(left: 0.0),
              leading: CircleAvatar(
                radius: 22,
                backgroundImage: NetworkImage(guestPicture),
                backgroundColor: Colors.grey,
              ),
              title: Text(guestName),
              subtitle: Text(guestDesignation),
              trailing: Container(
                height: 40,
                width: 100,
                padding: EdgeInsets.only(left: 12, right: 12),
                margin: EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  'Interested',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}