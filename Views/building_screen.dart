// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:navapp/Views/Auditorium.dart';
import 'package:navapp/Views/CarPark.dart';
import 'package:navapp/Views/FOBscreen.dart';
import 'package:navapp/Views/FOCscreen.dart';
import 'package:navapp/Views/FOEscreen.dart';
import 'package:navapp/Views/FOPscreen.dart';
import 'package:navapp/Views/FOSscreen.dart';
import 'package:navapp/Views/HostelComplex.dart';
import 'package:navapp/Views/Library.dart';
import 'package:navapp/Views/MainCafeteria.dart';
import 'package:navapp/Views/OpenTheatre.dart';
import 'package:navapp/Views/PlayGround.dart';
import 'package:navapp/Views/RecreationCenter.dart';
import 'package:navapp/Views/Student%20Center.dart';
import 'package:navapp/Views/SwimmingPool.dart';
import 'package:navapp/models/building_model.dart';

class BuildingScreen extends StatelessWidget {
  final Building building;

  const BuildingScreen({
    Key? key,
    required this.building,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ..._buildBackground(context, building),
          _buildBuildingInformation(context),
          Positioned(
            bottom: 50,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15.0),
                      backgroundColor: const Color(0xFFFF7272),
                      fixedSize: Size(MediaQuery.of(context).size.width * 0.425, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => _getDetailScreen(building),
                        ),
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                        children: [
                          TextSpan(
                            text: 'Go',
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getDetailScreen(Building building) {
    switch (building.name) {
      case 'Faculty of Computing':
        return FOCScreen(building: building);
      case 'Faculty of Business':
        return FOBScreen(building: building);
      case 'Faculty of Engineering':
        return FOEScreen(building: building);
      case 'Faculty of Science':
        return FOS_Screen(building: building);
      case 'Faculty of Postgraduate Studies':
        return FOPScreen(building: building);
      case 'Car park':
        return CarPark(building: building);
      case 'Playground':
        return PlayGround(building: building);
      case 'Swimming Pool Complex':
        return SwimmingPool(building: building);
      case 'Recreation Center':
        return RecreationCenter(building: building);
      case 'Auditorium':
        return Auditorum(building: building);
      case 'Open Theatre':
        return OpenTheatre(building: building);
      case 'Student Center':
        return StudentCenter(building: building);
      case 'Library':
        return Library(building: building);
      case 'Main Cafeteria':
        return MainCafeteria(building: building);
      case 'Hostel Complex':
        return HostelComplex(building: building);
      default:
        return Scaffold(
          appBar: AppBar(
            title: const Text('Unknown Building'),
          ),
          body: const Center(
            child: Text('No details available for this building.'),
          ),
        );
    }
  }

  Positioned _buildBuildingInformation(BuildContext context) {
    return Positioned(
      bottom: 150,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              building.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            RatingBar.builder(
              initialRating: 3.5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              ignoreGestures: true,
              itemCount: 5,
              itemSize: 20,
              unratedColor: Colors.white,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, index) {
                return const Icon(
                  Icons.star,
                  color: Colors.green,
                );
              },
              onRatingUpdate: (rating) {},
            ),
            const SizedBox(height: 20),
            Text(
              building.info,
              maxLines: 8,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(height: 1.75, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildBackground(BuildContext context, Building building) {
    return [
      Container(
        height: double.infinity,
        color: const Color(0xFF000B49),
      ),
      Image.asset(
        building.imagePath,
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.5,
        fit: BoxFit.cover,
      ),
      const Positioned.fill(
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Color(0xFF000B49),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.3, 0.5],
            ),
          ),
        ),
      ),
    ];
  }
}
