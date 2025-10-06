import 'package:cinebox/core/result/result.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import './local_storage_service.dart';

class LocalStorageServiceImpl implements LocalStorageService {
  final FlutterSecureStorage _secureStorage;

  LocalStorageServiceImpl({required FlutterSecureStorage secureStorage})
    : _secureStorage = secureStorage;

  @override
  Future<Result<Unit>> saveIdToken(String token) async {
    await _secureStorage.write(key: 'id_token', value: token);
    return successOfUnit();
  }

  @override
  Future<Result<String>> getIdToken() async {
    final token = await _secureStorage.read(key: 'id_token');
    if (token == null) {
      return Failure(Exception('No token found'));
    }
    return Success(token);
  }

  @override
  Future<Result<Unit>> deleteIdToken() async {
    await _secureStorage.delete(key: 'id_token');
    return successOfUnit();
  }
}
