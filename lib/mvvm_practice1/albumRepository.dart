

import 'package:mvvm_practice/mvvm_practice1/data_services.dart';

import 'album_model.dart';

class AlbumRepository {
  final DataSource _dataSource = DataSource();
  Future<List<Album>> getAlbumList() {
    return _dataSource.getAlbumList();
  }



}