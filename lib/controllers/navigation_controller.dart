// import 'package:flutter/material.dart';
// import 'package:midhilesh_raj_web/values/view_datas.dart';
//
// class NavigationController extends ChangeNotifier {
//   String appbartext = MyViewModel.Home;
//   int _selectedIndex = -1; // Initialize with an invalid index
//   final List<String> navItems = ["Page 1", "Page 2", "Page 3"];
//
//   int get selectedIndex => _selectedIndex;
//
//   set selectedIndex(int index) {
//     _selectedIndex = index;
//
//     notifyListeners();
//
//     // Navigate to the respective page based on the index
//     _navigateToPage();
//   }
//
//   void _navigateToPage() {
//     final navigatorKey = Navigator.of(_navigatorContext!);
//     if (navigatorKey == null) {
//       return;
//     }
//
//     if (_selectedIndex >= 0 && _selectedIndex < navItems.length) {
//       switch (_selectedIndex) {
//         case 0:
//           navigatorKey.push(MaterialPageRoute(builder: (_) => Page1()));
//           break;
//         case 1:
//           navigatorKey.push(MaterialPageRoute(builder: (_) => Page2()));
//           break;
//         case 2:
//           navigatorKey.push(MaterialPageRoute(builder: (_) => Page3()));
//           break;
//         default:
//           break;
//       }
//     }
//   }
//
//   BuildContext? _navigatorContext;
//
//   set navigatorContext(BuildContext context) {
//     _navigatorContext = context;
//   }
// }
