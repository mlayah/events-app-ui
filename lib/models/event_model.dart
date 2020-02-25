class EventModel {
  String eventType,
      eventDate,
      eventImage,
      eventName,
      eventOfferText,
      eventVenue,
      guestPicture,
      guestName,
      guestDesignation;

  //Contructor
  EventModel({
    this.eventDate,
    this.eventImage,
    this.guestName,
    this.eventName,
    this.eventOfferText,
    this.eventType,
    this.eventVenue,
    this.guestDesignation,
    this.guestPicture,
  });
}

// Creating list of dummy data for events list

var events = [
  EventModel(
    eventDate: '14 Feb at : 8:00PM - 10:00PM',
    eventType: 'Reggae',
    eventImage: 'assets/reggae.jpg',
    eventName: 'Reggae SumnFest 2020',
    eventOfferText: '20% Off on booking',
    eventVenue: 'Mont-B JB Stadia',
    guestPicture:
        'https://i1.wp.com/riddimkilla.com/wp-content/uploads/2019/01/BujuBantonDraw.jpg?fit=515%2C517&ssl=1',
    guestName: 'Buju Banton',
    guestDesignation: 'Lead Host',
  ),
  EventModel(
    eventDate: '20 July at : 2:00PM - 4:00PM',
    eventType: 'Football',
    eventImage: 'assets/football.jpg',
    eventName: 'Champions League Final',
    eventOfferText: 'Free Entry before 1PM',
    eventVenue: 'Nyayo National Stadium,Ke',
    guestPicture:
        'https://futaa.com/images/crops/desktops/20200131B19GNSS0704.JPG',
    guestName: 'Odion Ighalo',
    guestDesignation: 'Best Player',
  ),
  EventModel(
    eventDate: '20 July at : 2:00PM - 4:00PM',
    eventType: 'Dance',
    eventImage: 'assets/dance.jpg',
    eventName: 'Dance It Out',
    eventOfferText: '50% Off on reservation',
    eventVenue: 'Funlog Stage IV-Q',
    guestPicture:
        'https://images.squarespace-cdn.com/content/5c6c8222523958b58c31fa3e/1551208561123-N9J7C8KHT684POF3QVOF/web_kinjaz.jpg?content-type=image%2Fjpeg',
    guestName: 'Kinjaz',
    guestDesignation: 'Best Dance Group',
  ),
];
