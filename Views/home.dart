import 'package:flutter/material.dart';
import 'package:navapp/Views/building_screen.dart';
import '../widgets/building_list_item.dart';
import '../models/building_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Building> buildings = Building.buildings;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: ClipPath(
          clipper: CustomClipperPath(),
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xFF000B49),
            child: Center(
              child: Text(
                'Explore',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 150.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.titleLarge,
                  children: [
                    TextSpan(
                      text: 'Featured ',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(text: 'Locations'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              for (final building in buildings)
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BuildingScreen(building: building),
                      ),
                    );
                  },
                  child: BuildingListItem(
                    imageUrl: building.imagePath,
                    name: building.name,
                    information: building.info,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomClipperPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();

    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
