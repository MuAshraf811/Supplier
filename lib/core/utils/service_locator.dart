import 'package:e_printer/features/client/Authentication/presentation/controllers/auth/authentication_cubit.dart';
import 'package:e_printer/features/client/chat/presentation/cubit/chat_cubit.dart';
import 'package:e_printer/features/client/orders/presentation/cubit/orders_cubit.dart';
import 'package:e_printer/features/client/settings/presentation/controller/cubit/settings_cubit.dart';
import 'package:e_printer/features/supplier/Authentication/presentation/cubit/supplier_auth_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ServiceLocator {
  static GetIt getIt = GetIt.instance;

  static void setObjects() {
    getIt.registerLazySingleton<AuthenticationCubit>(
      () => AuthenticationCubit(),
    );
    getIt.registerLazySingleton<SupplierAuthCubit>(
      () => SupplierAuthCubit(),
    );
    

    getIt.registerLazySingleton<OrdersCubit>(
      () => OrdersCubit(),
    );
    getIt.registerLazySingleton<SettingsCubit>(
      () => SettingsCubit(),
    );

    getIt.registerFactory<ChatCubit>(
      () => ChatCubit(),
    );
  }
}
