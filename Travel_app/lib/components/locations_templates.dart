import 'package:banking_app/components/button.dart';
import 'package:banking_app/models/location_model.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../theme/colors.dart';

class LocationsTemplates extends StatelessWidget {
  final LocationModel location;
  final void Function()? onTap;
  const LocationsTemplates({
    super.key,
    required this.location,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(location.imagePath),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 250,
                  height: 200,
                  padding:
                      const EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            location.locationName,
                            style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                              color: secondary,
                            ),
                          ),
                          Text(
                            '\$${location.locationPrice}',
                            style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                              color: secondary,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: yellow,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            location.rating,
                            style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                              color: faintText,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.place_outlined,
                            color: faintText,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            location.address,
                            style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                              color: faintText,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const MyButton(
                        text: 'More Detail',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
