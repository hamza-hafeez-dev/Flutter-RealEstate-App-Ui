import 'package:flutter/material.dart';

final List<PropertyCards> propertycard1 = [
  PropertyCards(
    title: 'Beautiful Wooden House',
    subtitle: 'Texas, North America',
    price: '\$ 233,099',
    imageURL: const AssetImage('assest/images/house1.jpg'),
  ),
  PropertyCards(
    title: 'Luxury Family Villa',
    subtitle: 'NewYork, USA',
    price: '\$ 343,099',
    imageURL: const AssetImage('assest/images/house2.jpg'),
  ),
  PropertyCards(
    title: 'Home Villa',
    subtitle: 'California, USA',
    price: '\$ 443,099',
    imageURL: const AssetImage('assest/images/house3.jpg'),
  ),
  PropertyCards(
    title: 'Wooden Smook Villa',
    subtitle: 'Los Angalos, USA',
    price: '\$ 643,029',
    imageURL: const AssetImage('assest/images/house4.jpg'),
  ),
  PropertyCards(
    title: 'carbon Holy Villa',
    subtitle: 'San D, USA',
    price: '\$ 243,339',
    imageURL: const AssetImage('assest/images/house5.jpg'),
  ),
  PropertyCards(
    title: 'Oxygen bounch',
    subtitle: ' Angalos, USA',
    price: '\$ 833,029',
    imageURL: const AssetImage('assest/images/house6.jpg'),
  ),
];

class PropertiesCards extends StatelessWidget {
  final PropertyCards propertyCards;

  const PropertiesCards({super.key, required this.propertyCards});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Container(
      height: height * 0.4,
      width: width * 0.7,
      margin: const EdgeInsets.only(right: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20), // Standard Syntax
        child: Stack(
          fit: StackFit.expand,
          children: [
            // 1. Background Image
            Image(image: propertyCards.imageURL, fit: BoxFit.cover),

            // 2. Gradient Overlay (Text ki readability ke liye)
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter, // Standard Syntax
                  end: Alignment.bottomCenter, // Standard Syntax
                  colors: [
                    Colors.black.withAlpha(100),
                    Colors.transparent,
                    Colors.black.withAlpha(180),
                  ],
                ),
              ),
            ),

            // 3. Price Tag (Top Right Corner)
            Positioned(
              top: 15,
              right: 15,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue.shade500,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  propertyCards.price,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // 4. Title & Subtitle (Bottom Left)
            Positioned(
              bottom: 12,
              left: 12,
              right: 12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    propertyCards.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.white70,
                        size: 14,
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          propertyCards.subtitle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PropertyCards {
  final String title;
  final String subtitle;
  final String price;
  final AssetImage imageURL;

  PropertyCards({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.imageURL,
  });
}
