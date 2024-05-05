import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mvvm_practice/mvvm_practice1/albumRepository.dart';

import 'album_model.dart';

class AlbumViewModel with ChangeNotifier {
  late final AlbumRepository _albumRepository;
  List<Album> _albumList = List.empty(growable: true);
  List<Album> get albumList => _albumList;

  AlbumViewModel() {
    _albumRepository = AlbumRepository();
    _getAlbumList();
  }
  Future<void> _getAlbumList() async {
    _albumList = await _albumRepository.getAlbumList();
    notifyListeners();
  }
}