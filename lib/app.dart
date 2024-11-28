import 'package:e_printer/core/cubit/app_config_cubit.dart';
import 'package:e_printer/core/routes/app_router.dart';
import 'package:e_printer/generated/l10n.dart'; 
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EPrinter extends StatelessWidget {
  const EPrinter({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: BlocProvider<AppConfigCubit>( 
        create: (context) => AppConfigCubit(),
        child: BlocBuilder<AppConfigCubit, AppConfigState>(
          builder: (context , state)=> MaterialApp( 
            localizationsDelegates:const [
                    S.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales, 
                locale: context.read<AppConfigCubit>().isEnglish? const Locale("en"):const Locale("ar"),
            debugShowCheckedModeBanner: false,
            onGenerateRoute: AppRouter.onGenerateRoute,
            theme: ThemeData( 
              
            ),
          ),
        ),
      ),
    );
  }
}
