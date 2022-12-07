import 'package:cozy_app/models/city.dart';
import 'package:cozy_app/models/space.dart';
import 'package:cozy_app/models/tips.dart';
import 'package:cozy_app/widgets/bottom_navbar_item.dart';
import 'package:cozy_app/widgets/city_card.dart';
import 'package:cozy_app/widgets/space_card.dart';
import 'package:cozy_app/widgets/tips_card.dart';
import 'package:flutter/material.dart';
import '../theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            // NOTE: TITLE/HEADER
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
            ),
            const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Popular Cities',
                style: regulerTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              // NOTE: POPULAR CITIES
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 24),
                  CityCard(
                    City(
                      id: 1,
                      name: 'Jakarta',
                      imageUrl: 'assets/images/city1.png',
                    ),
                  ),
                  const SizedBox(width: 20),
                  CityCard(
                    City(
                      id: 2,
                      name: 'Bandung',
                      imageUrl: 'assets/images/city2.png',
                      isPopuler: true,
                    ),
                  ),
                  const SizedBox(width: 20),
                  CityCard(
                    City(
                      id: 3,
                      name: 'Surabaya',
                      imageUrl: 'assets/images/city3.png',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // NOTE: RECOMENDED CITIES
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Recommended Space',
                style: regulerTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  SpaceCard(
                    Space(
                      id: 1,
                      name: 'Kuretakeso Hott',
                      imageUrl: 'assets/images/space1.png',
                      price: 52,
                      city: 'Bandung',
                      country: 'Germany',
                      rating: 4,
                    ),
                  ),
                  const SizedBox(height: 30),
                  SpaceCard(
                    Space(
                      id: 2,
                      name: 'Roemah Nenek',
                      imageUrl: 'assets/images/space2.png',
                      price: 11,
                      city: 'Seattle',
                      country: 'Australia',
                      rating: 5,
                    ),
                  ),
                  const SizedBox(height: 30),
                  SpaceCard(
                    Space(
                      id: 3,
                      name: 'Darrling How',
                      imageUrl: 'assets/images/space3.png',
                      price: 20,
                      city: 'Jakarta',
                      country: 'Indonesia',
                      rating: 3,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // NOTE: TIPS & GUIDANCE
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Tips & Guidance',
                style: regulerTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                      id: 1,
                      title: 'City Guidelines',
                      imageUrl: 'assets/images/tips1.png',
                      updateAt: '20 Apr',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(
                      id: 2,
                      title: 'Jakarta Fairship',
                      imageUrl: 'assets/images/tips2.png',
                      updateAt: '11 Dec',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80 + edge,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: Color(0xFFF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/icons/icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icons/icon_message.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icons/icon_card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icons/icon_love.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
