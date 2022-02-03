import 'package:choclist_web/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatefulWidget {
  final double opacity;

  Header(this.opacity);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  bool _isProcessing = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        // decoration: const BoxDecoration(
        //     gradient: LinearGradient(
        //   begin: Alignment.centerLeft,
        //   end: Alignment.bottomRight,
        //   colors: [AppColors.firstColor, Colors.white],
        // )),
        color: AppColors.firstColor,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                width: 100,
                image: AssetImage("assets/images/cl_tp.png"),
              ),
              // Container(
              //   // padding: EdgeInsets.all(10),
              //   child: Text(
              //     'Choclist',
              //     style: GoogleFonts.readexPro(
              //       fontSize: 30,
              //       color: Colors.black,
              //     ),
              //   ),
              // ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: screenSize.width / 8),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[0] = true
                              : _isHovering[0] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'About',
                            style: GoogleFonts.readexPro(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[0],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 25),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[1] = true
                              : _isHovering[1] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Choclist 101',
                            style: GoogleFonts.readexPro(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[1],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 25),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[2] = true
                              : _isHovering[2] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Blog',
                            style: GoogleFonts.readexPro(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[2],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 25),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[3] = true
                              : _isHovering[3] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Download',
                            style: GoogleFonts.readexPro(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[3],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // IconButton(
              //   icon: Icon(Icons.brightness_6),
              //   splashColor: Colors.transparent,
              //   highlightColor: Colors.transparent,
              //   color: Colors.white,
              //   onPressed: () {
              //     // EasyDynamicTheme.of(context).changeTheme();
              //   },
              // ),
              // SizedBox(
              //   width: screenSize.width / 50,
              // ),
              // InkWell(
              //     onHover: (value) {
              //       setState(() {
              //         value ? _isHovering[3] = true : _isHovering[3] = false;
              //       });
              //     },
              //     // onTap: userEmail == null
              //     //     ? () {
              //     //   showDialog(
              //     //     context: context,
              //     //     builder: (context) => AuthDialog(),
              //     //   );
              //     // }
              //     //     : null,
              //     child:
              //         // userEmail == null
              //         //     ?
              //         Text(
              //       'Sign in',
              //       style: TextStyle(
              //         color: _isHovering[3] ? Colors.white : Colors.white70,
              //       ),
              //     )
              //     //     : Row(
              //     //   children: [
              //     //     CircleAvatar(
              //     //       radius: 15,
              //     //       backgroundImage: imageUrl != null
              //     //           ? NetworkImage(imageUrl!)
              //     //           : null,
              //     //       child: imageUrl == null
              //     //           ? Icon(
              //     //         Icons.account_circle,
              //     //         size: 30,
              //     //       )
              //     //           : Container(),
              //     //     ),
              //     //     SizedBox(width: 5),
              //     //     Text(
              //     //       name ?? userEmail!,
              //     //       style: TextStyle(
              //     //         color: _isHovering[3]
              //     //             ? Colors.white
              //     //             : Colors.white70,
              //     //       ),
              //     //     ),
              //     //     SizedBox(width: 10),
              //     //     TextButton(
              //     //       style: TextButton.styleFrom(
              //     //         primary: Colors.blueGrey,
              //     //         shape: RoundedRectangleBorder(
              //     //           borderRadius: BorderRadius.circular(15),
              //     //         ),
              //     //       ),
              //     //       onPressed: _isProcessing
              //     //           ? null
              //     //           : () async {
              //     //         setState(() {
              //     //           _isProcessing = true;
              //     //         });
              //     //         await signOut().then((result) {
              //     //           print(result);
              //     //           Navigator.of(context).pushReplacement(
              //     //             MaterialPageRoute(
              //     //               fullscreenDialog: true,
              //     //               builder: (context) => HomePage(),
              //     //             ),
              //     //           );
              //     //         }).catchError((error) {
              //     //           print('Sign Out Error: $error');
              //     //         });
              //     //         setState(() {
              //     //           _isProcessing = false;
              //     //         });
              //     //       },
              //     //       child: Padding(
              //     //         padding: EdgeInsets.only(
              //     //           top: 8.0,
              //     //           bottom: 8.0,
              //     //         ),
              //     //         child: _isProcessing
              //     //             ? CircularProgressIndicator()
              //     //             : Text(
              //     //           'Sign out',
              //     //           style: TextStyle(
              //     //             fontSize: 14,
              //     //             color: Colors.white,
              //     //           ),
              //     //         ),
              //     //       ),
              //     //     )
              //     //   ],
              //     // ),
              //     ),
            ],
          ),
        ),
      ),
    );
  }
}
