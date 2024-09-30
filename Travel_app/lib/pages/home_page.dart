import 'package:banking_app/components/locations_templates.dart';
import 'package:banking_app/models/shop_model.dart';
import 'package:banking_app/pages/details_page.dart';
import 'package:banking_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void toNextPage(int index) {
    final myLocations = Provider.of<ShopModel>(context, listen: false).location;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsPage(
          location: myLocations[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Icon(Icons.menu),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24.0),
            child: Icon(
              Icons.notifications_active,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
                top: 32.0,
              ),
              child: Text(
                "Hi Adam",
                style: GoogleFonts.nunitoSans(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: secondary,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
              ),
              child: Text(
                "Where would you\nlike to go?",
                style: GoogleFonts.nunitoSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: secondary,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.place_outlined,
                    color: orange,
                  ),
                  Text(
                    "Buenos Aires, Argentina",
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: secondary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color(0xffABB3BB),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: 'Try to find the eiffel tower',
                        hintStyle: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color: const Color(0xffABB3BB)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Icon(
                    Icons.tune,
                    color: Color(0xffABB3BB),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Popular Destination",
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: secondary,
                    ),
                  ),
                  Text(
                    "Show All",
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: orange,
                    ),
                  ),
                ],
              ),
            ),
            Consumer<ShopModel>(
              builder: (context, value, child) {
                return SizedBox(
                  height: 400,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: value.location.length,
                    itemBuilder: (context, index) {
                      return LocationsTemplates(
                        location: value.location[index],
                        onTap: () => toNextPage(index),
                      );
                    },
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Recommended",
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: secondary,
                    ),
                  ),
                  Text(
                    "Show All",
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: orange,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 10,
        ),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              activeIcon: Container(
                width: 170.0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 10.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red.shade50,
                ),
                child: Center(
                  child: Row(
                    children: [
                      Icon(
                        Icons.home_outlined,
                        color: orange,
                        size: 27,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Home',
                        style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: orange,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              label: '',
              icon: Icon(
                Icons.home_outlined,
                color: faintText,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.account_balance_wallet_outlined,
                color: faintText,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.favorite_border_outlined,
                color: faintText,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.person_2_outlined,
                color: faintText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
