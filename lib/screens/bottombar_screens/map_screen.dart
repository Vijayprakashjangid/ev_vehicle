import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();

}




class _MapScreenState extends State<MapScreen> {
  late GoogleMapController _mapController;
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(20.5937, 78.9629),
    zoom: 5.4746,

  );

  final TextEditingController _searchController = TextEditingController();


  @override
  void dispose() {
    _searchController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(children: [
            Container(
              child: GoogleMap(

                initialCameraPosition: _kGooglePlex,
              ),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: TextField(
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Search Here',
                            hintStyle: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey,
                            ),
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey, width: 1.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey, width: 1.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            suffixIcon:
                                Icon(Icons.location_on_outlined, color: Colors.grey),
                            /* prefixIcon: Icon(Icons.search, color: Colors.grey[400]),*/
                            /*suffixIcon: Icon(Icons.clear, color: Colors.grey[400]),*/
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.filter_alt_outlined, color: Colors.grey,),
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                            style: BorderStyle.solid
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
