import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:midhilesh_raj_web/utils/app_textstyles.dart';
import 'package:midhilesh_raj_web/values/navitem.dart';
import 'package:midhilesh_raj_web/values/string_values.dart';
import 'package:midhilesh_raj_web/widget/appbar_navigation.dart';
import 'package:midhilesh_raj_web/widget/image_with_textscrolling.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';



import 'controllers/home_screen_scroll_controller.dart';
import 'controllers/mousehover_controller.dart';

class Home3 extends StatelessWidget {
  const Home3({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    controller.addListener(() {
      Provider.of<HomeScrollState>(context, listen: false)
          .updateScrollPosition(controller.position.pixels);
    });
    double s = Provider.of<HomeScrollState>(context).scrollPosition;
    var screenWidth = MediaQuery.sizeOf(context).width;
    bool isScreen = screenWidth > 700;
    return Scaffold(
      appBar: AppBar(
        // title:  Text(Provider.of<NavigationController>(context).appbartext),
        actions: !isScreen
            ? [const Icon(Icons.menu)]
            : [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .4,
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: NavItem.navL.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          // Provider.of<NavigationController>(context,listen: false).selectedIndex = index;
                        },
                        child: MyAppBarNavItem(
                            item: NavItem.navL[index],
                            index: index,
                            onEnter: (event) {
                              Provider.of<HoverState>(context, listen: false)
                                  .chaneIndex(index);
                            },
                            onExit: (event) {
                              Provider.of<HoverState>(context, listen: false)
                                  .chaneIndex(-1);
                            }),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                          width: MediaQuery.sizeOf(context).width * .03);
                    },
                  ),
                ),
                const Icon(Icons.menu)
              ],
      ),
      body: Stack(
        children: [
          SafeArea(
            child: ListView(
              controller: controller,
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.8,
                  width: MediaQuery.sizeOf(context).width,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Positioned(
                        left: s,
                        child: const Text(
                          "I'am",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 300,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                  child: Stack(
                    children: [
                      Positioned(
                        right: s,
                        child: const Text(
                          " ${StringDatas.showName}",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 300,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width / 3,
                        child: const ScrollingTextImage(
                          imageToShow: StringDatas.showImage,
                          nameToShow: " ${StringDatas.showName}",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  child: const Text(
                    StringDatas.showAbout,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: SizedBox(
                          height: MediaQuery.sizeOf(context).height * .2,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CONTACT -",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                StringDatas.contact,
                                style: AppTextStyle.footerText,
                              ),
                              Text(
                                StringDatas.mailId,
                                style: AppTextStyle.footerText,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: SizedBox(
                          height: MediaQuery.sizeOf(context).height * .2,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Home",
                                style: AppTextStyle.footerText,
                              ),
                              Text(
                                "About",
                                style: AppTextStyle.footerText,
                              ),
                              Text(
                                "Projects",
                                style: AppTextStyle.footerText,
                              ),
                              Text(
                                "Contacts",
                                style: AppTextStyle.footerText,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        "Snap Data",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 100, height: 30),
                      IconButton(
                          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                          icon: FaIcon(
                            FontAwesomeIcons.google,
                            size: 50,
                            color: Colors.redAccent,
                          ),
                          onPressed: () {
                            print("Pressed");
                          }),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      IconButton(
                          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                          icon: FaIcon(
                            FontAwesomeIcons.instagram,
                            size: 50,
                            color: Colors.pinkAccent,
                          ),
                          onPressed: () {
                            print("Pressed");
                          }),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      IconButton(
                          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                          icon: FaIcon(FontAwesomeIcons.telegram,
                              size: 50, color: Colors.blue[200]),
                          onPressed: () {
                            print("Pressed");
                          }),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      IconButton(
                          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                          icon: FaIcon(
                            FontAwesomeIcons.facebook,
                            size: 50,
                            color: Colors.blue,
                          ),
                          onPressed: () {
                            print("Pressed");
                          }),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      IconButton(
                          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                          icon: FaIcon(
                            FontAwesomeIcons.whatsapp,
                            size: 50,
                            color: Colors.teal,
                          ),
                          onPressed: () async {
                            var whatsapp = "+9181118847784";
                            var whatsappAndroid =Uri.parse("whatsapp://send?phone=$whatsapp&text=hello");
                            if (await canLaunchUrl(whatsappAndroid)) {
                              await launchUrl(whatsappAndroid);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("WhatsApp is not installed on the device"),
                                ),
                              );
                            }


                          }),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      IconButton(
                          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                          icon: FaIcon(
                            FontAwesomeIcons.github,
                            size: 50,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            print("Pressed");
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
