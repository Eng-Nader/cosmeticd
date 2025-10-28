import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CheckOutGoogle extends StatefulWidget {
  const CheckOutGoogle({
    super.key,
  });

  @override
  State<CheckOutGoogle> createState() => _CheckOutGoogleState();
}

class _CheckOutGoogleState extends State<CheckOutGoogle> {
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(31.035736, 31.352704),
    zoom: 14.4746,
  );
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(31.035736, 31.352704),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 84,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.transparent,
        border: Border.all(
          color: const Color(0xff73B9BB),
          width: 1.5,
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 60,
            width: 90,

            child: GoogleMap(
              zoomControlsEnabled: false,

              mapType: MapType.hybrid,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                Text(
                  'Mansoura 14  St',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          Transform.rotate(
            angle: -1.5708,

            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Color(0xffDA498C),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
