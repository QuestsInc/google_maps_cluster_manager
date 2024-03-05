import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart' as pi;

mixin ClusterItem {
  pi.LatLng get location;

  String? _geohash;
  String get geohash => _geohash ??= Geohash.encode(location, codeLength: ClusterManager.precision);
}
