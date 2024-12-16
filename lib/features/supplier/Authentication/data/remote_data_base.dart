import 'dart:io';

import 'package:e_printer/core/utils/constants/app_const.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RemoteDataBase {
  RemoteDataBase._();

  static Future<void> createSupaBaseBucket() async {
    const bucketName = AppConst.supaBaseStorageBacketName;

    final response = await Supabase.instance.client.storage.listBuckets();

    final bucketExists = response.any((bucket) => bucket.name == bucketName);

    if (!bucketExists) {
      await Supabase.instance.client.storage.createBucket(bucketName);
    }
  }

  static insertImageIntoBacket(
      {required File imageFile, required String imagePath}) async {
    await Supabase.instance.client.storage
        .from(AppConst.supaBaseStorageBacketName)
        .upload(
          imagePath,
          imageFile,
        );
  }
}
