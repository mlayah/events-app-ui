class Guest {
  String guestName, guestImage, guestProffesion;

  //constructor

  Guest({this.guestProffesion, this.guestName, this.guestImage});
}

// Create dummy data ,an array list of several guests. I will just paste a prepared code  to save time

//this is sampole of code
var guests = [
  Guest(
      guestName: 'Tosh',
      guestProffesion: 'Music',
      guestImage:
          'http://www.jamaicaobserver.com/apps/pbcsi.dll/storyimage/JO/20191013/ARTICLE/310139949/AR/0/AR-310139949.jpg'),
  Guest(
      guestName: 'Rooney',
      guestProffesion: 'Football',
      guestImage:
          'https://gmsrp.cachefly.net/images/20/01/03/fd9ad5123f50c8ce6ed95e32879a0a27/960.jpg'),
  Guest(
      guestName: 'Bolt',
      guestProffesion: 'Athletics',
      guestImage:
          'https://images.theconversation.com/files/133674/original/image-20160810-11853-1iw2v38.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip'),
  Guest(
    guestName: 'James',
    guestProffesion: 'Design',
    guestImage:
        'https://pbs.twimg.com/profile_images/1212712054462779392/KxdweDqW_400x400.jpg',
  ),
  Guest(
      guestName: 'HArdwell',
      guestProffesion: 'Band',
      guestImage:
          'https://pbs.twimg.com/profile_images/969590024927940609/NoLH3Ek0_400x400.jpg'),
  Guest(
    guestName: 'Kartel',
    guestProffesion: 'Cartel',
    guestImage:
        'https://buzz-caribbean.com/app/uploads/2019/12/vybz-kartel-1024x971.jpg',
  ),
  Guest(
    guestName: 'Kinjaz',
    guestProffesion: 'Dance',
    guestImage:
        'https://i.pinimg.com/236x/40/2d/61/402d61dfa8b2cec6a008ddc65ff911da.jpg',
  ),
  Guest(
    guestName: 'Mlayah',
    guestProffesion: 'Programming',
    guestImage:
        'https://pbs.twimg.com/profile_images/1163068383463714816/bIOXfnHK_400x400.jpg',
  ),
];
