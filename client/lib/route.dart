import 'package:client/screens/home_screen.dart';
import 'package:client/screens/login_screen.dart';
import 'package:client/screens/surat_ijin_menu.dart';
import 'package:client/screens/template_editor.dart';
import 'package:client/screens/employee_izin_form.dart';
import 'package:client/screens/admin_izin_manager.dart';
import 'package:client/screens/izin_count_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: "/home",
  redirect: (context, state) {
    return;
  },
  routes: [
    GoRoute(
      path: "/",
      name: "home",
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: "/home",
      name: "home_alt",
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: "/login",
      name: "login",
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: "/surat-ijin",
      name: "surat_ijin",
      builder: (context, state) => const SuratIjinMenu(),
      routes: [
        GoRoute(
          path: 'template',
          name: 'si_template',
          builder: (context, state) => const TemplateEditor(),
        ),
        GoRoute(
          path: 'employee',
          name: 'si_employee',
          builder: (context, state) => const EmployeeIzinForm(),
        ),
        GoRoute(
          path: 'admin',
          name: 'si_admin',
          builder: (context, state) => const AdminIzinManager(),
        ),
        GoRoute(
          path: 'count',
          name: 'si_count',
          builder: (context, state) => const IzinCountView(),
        ),
      ],
    ),
  ],
);
