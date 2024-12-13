import 'package:favorite_places/models/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier() : super(const []);

  void addPlace(String title) {
    final newPLace = Place(title: title);
    state = [newPLace, ...state];
  }
}

final userPlacesProvider = StateNotifierProvider(
  (ref) => UserPlacesNotifier(),
);
