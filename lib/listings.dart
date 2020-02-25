import 'package:flutter/material.dart';
import 'models/guest_model.dart';
import 'widgets/guest_card.dart';
import 'models/event_model.dart';
import 'widgets/single_event_widget.dart';

class Listings extends StatefulWidget {
  @override
  _ListingsState createState() => _ListingsState();
}

class _ListingsState extends State<Listings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          guestsSlider(),

          eventsSlider(),
        ],
      ),
    );
  }

  Widget eventsSlider(){

    return Expanded(
      child: ListView.builder(
        itemCount: events.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (context,index){
          var event=events[index];

          return SingleEvent(
            eventDate: event.eventDate,
            eventType: event.eventType,
            eventImage: event.eventImage,
            eventName: event.eventName,
            eventOfferText: event.eventOfferText,
            eventVenue: event.eventVenue,
            guestName: event.guestName,
            guestDesignation: event.guestDesignation,
            guestPicture: event.guestPicture,
          );
        },
      ),
    );
  }

  Widget guestsSlider() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey,
          spreadRadius: 1,
          blurRadius: 5,
        )
      ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 40),
          Image.asset(
            'assets/logo.png',
            height: 80,
          ),

          Divider(
            color: Colors.grey[300],
          ),

          Container(
            height: 140,
            child: ListView.builder(
              itemCount: guests.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){

                var guest= guests[index];

                return GuestCard(
                  guestImage: guest.guestImage,
                  guestName: guest.guestName,
                  guestProffesion: guest.guestProffesion,
                );
              },
            ),
          )


        ],
      ),
    );
  }
}
