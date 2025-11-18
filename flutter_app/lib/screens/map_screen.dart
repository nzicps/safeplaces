import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../api/places_api.dart';
import '../models/place.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? controller;
  Set<Marker> markers = {};

  @override
  void initState() {
    super.initState();
    loadMarkers();
  }

  Future<void> loadMarkers() async {
    final places = await PlacesAPI.fetchPlaces();

    setState(() {
      markers = places.map((p) {
        return Marker(
          markerId: MarkerId(p.id.toString()),
          position: LatLng(p.latitude, p.longitude),
          infoWindow: InfoWindow(
            title: p.name,
            snippet: p.isSafe ? 'SAFE' : 'UNSAFE',
          ),
        );
      }).toSet();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SafePlaces Map")),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(0, 0),
          zoom: 2,
        ),
        markers: markers,
        onMapCreated: (c) => controller = c,
      ),
    );
  }
}
