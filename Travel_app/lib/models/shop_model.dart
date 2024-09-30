import 'package:flutter/material.dart';

import 'location_model.dart';

class ShopModel extends ChangeNotifier {
  List<LocationModel> location = [
    LocationModel(
      imagePath: 'lib/images/Hawaii.jpg',
      locationName: 'Hawaii',
      locationPrice: '327',
      rating: '4.5 ratings',
      address: 'Osenia, America',
      description: 'The beauty of the \nBeach inAmerica',
      detailedDescription:
          'Hawaii: a tropical paradise with lush landscapes, turquoise waters, and rich cultural heritage. From volcanic peaks to pristine beaches,  ',
    ),
    LocationModel(
      imagePath: 'lib/images/taj_mahal.jpg',
      locationName: 'Taj Mahal',
      locationPrice: '278',
      rating: '4.7 ratings',
      address: 'Pradesh, India',
      description: 'Proof of love that \nwill never be seen',
      detailedDescription:
          'The Taj Mahal: a symbol of eternal love, architectural brilliance, and timeless beauty in white marble.',
    ),
    LocationModel(
      imagePath: 'lib/images/Mt_fuji.jpg',
      locationName: 'Mount Fuji',
      locationPrice: '315',
      rating: '4.6 ratings',
      address: 'Kitayama, Japan',
      description: 'The highest \nmountain in japan',
      detailedDescription:
          "Mount Fuji: a majestic peak, symbol of Japan’s beauty, serenity, and spiritual significance, rising above clouds.",
    ),
    LocationModel(
      imagePath: 'lib/images/easter_island.jpg',
      locationName: 'Easter island',
      locationPrice: '327',
      rating: '4.5 ratings',
      address: 'Isla Pascua, Chili',
      description: 'Historical heritage \nmystery tour',
      detailedDescription:
          'Easter Island: a remote wonder, famed for its mysterious Moai statues and rich Polynesian heritage.',
    ),
  ];
}
