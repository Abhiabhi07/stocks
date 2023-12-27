import 'package:flutter/material.dart';

class TileModel {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String trailingTitle;
  final String trailingSubtitle;
  final IconData stockIcon;

  TileModel({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.trailingTitle,
    required this.trailingSubtitle,
    required this.stockIcon,
  });

  static List<TileModel> tiles = [
    TileModel(
      imageUrl:
          'https://cdn.iconscout.com/icon/premium/png-512-thumb/amazon-7520673-7197247.png?f=webp&w=256',
      title: 'Amazon Prime',
      subtitle: '25 sep 2023',
      trailingTitle: '\$800.00',
      trailingSubtitle: '+0.31',
      stockIcon: Icons.arrow_outward,
    ),
    TileModel(
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/174/174872.png',
      title: 'Spotify',
      subtitle: '23 sep 2023',
      trailingTitle: '\$850.00',
      trailingSubtitle: '-1.05',
      stockIcon: Icons.call_received,
    ),
    TileModel(
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/25/25231.png',
      title: 'GitHub Brand',
      subtitle: '26 sep 2023',
      trailingTitle: '\$850.00',
      trailingSubtitle: '-1.05',
      stockIcon: Icons.arrow_outward,
    ),
    TileModel(
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/0/747.png',
      title: 'Apple Brand',
      subtitle: '26 sep 2023',
      trailingTitle: '\$850.00',
      trailingSubtitle: '-0.58',
      stockIcon: Icons.call_received,
    ),
    TileModel(
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/174/174861.png',
      title: 'PayPal',
      subtitle: '30 sep 2023',
      trailingTitle: '\$850.00',
      trailingSubtitle: '+1.48',
      stockIcon: Icons.arrow_outward,
    ),
  ];
}
