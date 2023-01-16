import 'package:travel_app/models/destination.dart';

final _paris = Destination(
  mainImageUrl: 'assets/images/paris_illustration.jpg',
  title: 'Paris, France',
  price: 1200,
  rating: 4.3,
  description:
      'Paris, France\'s capital, is a major European city and a global center for art, fashion, gastronomy and culture. Its 19th-century cityscape is crisscrossed by wide boulevards and the River Seine. Beyond such landmarks as the Eiffel Tower and the 12th-century, Gothic Notre-Dame cathedral, the city is known for its cafe culture and designer boutiques along the Rue du Faubourg Saint-Honoré.',
  detailsImageUrl: 'assets/images/paris.jpg',
  duration: '5 days',
  distance: '625 KM',
  temperature: '15°C',
);

final _egypt = Destination(
  mainImageUrl: 'assets/images/pyramid_illustration.jpg',
  title: 'Giza, Egypt',
  price: 3200,
  rating: 4.7,
  description:
      'The Egyptian pyramids are ancient masonry structures located in Egypt. Sources cite at least 118 identified "Egyptian" pyramids. Approximately 80 pyramids were built within the Kingdom of Kush, now located in the modern country of Sudan. Of those located in modern Egypt, most were built as tombs for the country\'s pharaohs and their consorts during the Old and Middle Kingdom periods.',
  detailsImageUrl: 'assets/images/pyramid.jpg',
  duration: '3 days',
  distance: '325 KM',
  temperature: '42°C',
);

final _sydney = Destination(
  mainImageUrl: 'assets/images/sydney_illustration.jpg',
  title: 'Sydney, Australia',
  price: 2100,
  rating: 4.1,
  description:
      'Sydney, capital of New South Wales and one of Australia\'s largest cities, is best known for its harbourfront Sydney Opera House, with a distinctive sail-like design. Massive Darling Harbour and the smaller Circular Quay port are hubs of waterside life, with the arched Harbour Bridge and esteemed Royal Botanic Garden nearby. Sydney Tower’s outdoor platform, the Skywalk, offers 360-degree views of the city and suburbs.',
  detailsImageUrl: 'assets/images/sydney.jpg',
  duration: '2 days',
  distance: '125 KM',
  temperature: '21°C',
);

final _taj_mahal = Destination(
  mainImageUrl: 'assets/images/taj_mahal_india_illustration.jpg',
  title: 'Taj Mahal, India',
  price: 1250,
  rating: 4.4,
  description:
      'The Taj Mahal, is an Islamic ivory-white marble mausoleum on the right bank of the river Yamuna in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor Shah Jahan to house the tomb of his favourite wife, Mumtaz Mahal; it also houses the tomb of Shah Jahan himself.',
  detailsImageUrl: 'assets/images/taj_mahal.jpg',
  duration: '2 days',
  distance: '25 KM',
  temperature: '31°C',
);
List all_destinations = [_paris, _egypt, _sydney, _taj_mahal];
