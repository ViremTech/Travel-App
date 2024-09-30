import 'package:banking_app/components/button.dart';
import 'package:banking_app/models/location_model.dart';

import 'package:banking_app/theme/colors.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatefulWidget {
  final LocationModel location;
  const DetailsPage({super.key, required this.location});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  void initState() {
    super.initState();
    // Show the bottom sheet as soon as the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showBottomSheet();
    });
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.4,
          builder: (context, controller) => Container(
            decoration: BoxDecoration(
              color: backGroundColor,
              borderRadius: BorderRadius.circular(
                20.0,
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    controller: controller,
                    children: [
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 40,
                            child: Divider(
                              color: Colors.grey.shade400,
                              thickness: 4.0,
                              height: 10.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.location.description,
                              style: GoogleFonts.nunitoSans(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: secondary),
                            ),
                            const SizedBox(
                              child: VerticalDivider(
                                color: Colors.black,
                                thickness: 2.0,
                                width: 40.0,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  '\$${widget.location.locationPrice}',
                                  style: GoogleFonts.nunitoSans(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: secondary,
                                  ),
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                                Text(
                                  'For 1 Person',
                                  style: GoogleFonts.nunitoSans(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: yellow,
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              widget.location.rating,
                              style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                                color: faintText,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24.0,
                        ),
                        child: Text(
                          'About Place',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: secondary,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                        ),
                        child: Text(
                          textAlign: TextAlign.justify,
                          widget.location.detailedDescription,
                          style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color: faintText,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                        ),
                        child: Card(
                          elevation: 0.3,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.punch_clock,
                                          color: Colors.red[200],
                                          size: 16,
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          'Length',
                                          style: GoogleFonts.nunitoSans(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14,
                                            color: faintText,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '7 Days',
                                      style: GoogleFonts.nunitoSans(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: secondary,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.lock_clock,
                                          color: Colors.red[200],
                                          size: 16,
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          'Limit',
                                          style: GoogleFonts.nunitoSans(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14,
                                            color: faintText,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '10 People',
                                      style: GoogleFonts.nunitoSans(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: secondary,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.lock_clock,
                                          color: Colors.red[200],
                                          size: 16,
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          'Location',
                                          style: GoogleFonts.nunitoSans(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14,
                                            color: faintText,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      widget.location.address.split(',')[0],
                                      style: GoogleFonts.nunitoSans(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: secondary,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 130,
                        color: Colors.white,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 40.0,
                          ),
                          child: MyButton(
                            text: 'Book Now',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(widget.location.imagePath),
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 24.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.share_outlined,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(
                            8,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  left: 24.0,
                ),
                child: Text(
                  widget.location.locationName,
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 38,
                    color: secondary,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  top: 10,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.place_outlined,
                      color: orange,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      widget.location.address,
                      style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: secondary,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
