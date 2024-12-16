import 'dart:developer';
import 'dart:io';

import 'package:e_printer/core/utils/constants/app_const.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RemoteDataBase {
  RemoteDataBase._();

  static Future<void> createSupaBaseBucket() async {
    const bucketName = AppConst.supaBaseStorageBacketName;

    try {
      // List all buckets
      final response = await Supabase.instance.client.storage.listBuckets();

      // Check if the bucket already exists
      final bucketExists = response.any((bucket) => bucket.name == bucketName);

      if (bucketExists) {
      } else {
        // Create the bucket if it does not exist
        await Supabase.instance.client.storage.createBucket(bucketName);
      }
    } catch (e) {
      log('Error in createSupaBaseBucket: $e');
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
