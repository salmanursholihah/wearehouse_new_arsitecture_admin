import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_about_remote_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_auth_local_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_auth_remote_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_chat_remote_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_product_remote_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_request_remote_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/dmin_product_request_remote_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/stock_remote_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_about/admin_about_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_chat/admin_chat_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_login/admin_login_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_logout/admin_logout_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_product/admin_product_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_product_request/admin_product_request_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_request/admin_request_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/stock/stock_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/pages/admin_about_list_page.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/pages/admin_chat_rooms_page.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/pages/admin_product_request_list_page.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/pages/admin_request_list_page.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/pages/splash_page.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/pages/stock_logs_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AdminLoginBloc(
            AdminAuthRemoteDatasource(),
            AdminAuthLocalDatasource(),
          ),
        ),
        BlocProvider(
          create: (_) => AdminLogoutBloc(
            AdminAuthRemoteDatasource(),
            AdminAuthLocalDatasource(),
          ),
        ),
        BlocProvider(
  create: (_) => AdminProductBloc(AdminProductRemoteDatasource()),
),
BlocProvider(
  create: (context) => AdminRequestBloc(
    AdminRequestRemoteDatasource(),
  ),
  child: const AdminRequestListPage(),
),
BlocProvider(
  create: (_) => StockBloc(StockRemoteDatasource()),
  child: const StockLogsPage(),
),
BlocProvider(
  create: (_) => AdminProductRequestBloc(AdminProductRequestRemoteDatasource()),
  child: const AdminProductRequestListPage(),
),
BlocProvider(
  create: (_) => AdminAboutBloc(AdminAboutRemoteDatasource()),
  child: const AdminAboutListPage(),
),
BlocProvider(
  create: (_) => AdminChatBloc(AdminChatRemoteDatasource()),
  child: AdminChatRoomsPage(myUserId: /* ambil dari auth */ 1),
),

      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const SplashPage(),
      ),
    );
  }
}