import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late double _height;
  late double _width;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: 26,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Container(
                      width: _width,
                      height: 36,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(100)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 12,
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.white70,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Search',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white70),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.white70,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      clipBehavior: Clip.none,
                      children: [
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12))),
                              height: 200,
                              width: _width,
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 12),
                                child: Image.network(
                                  'https://scontent.fcgp2-1.fna.fbcdn.net/v/t1.6435-9/102263874_564898874420294_6732518317637214392_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=e3f864&_nc_eui2=AeEeJZt9SYmmZRrVj10wEagcqbcpAuhuVAqptykC6G5UCrvGzZUawxv0o0DFr-4uZa8FY8AxNcblsGXPW8C8pJqh&_nc_ohc=SSSjnIFhc80AX9OTcds&tn=lKCb368TTtdE7--w&_nc_ht=scontent.fcgp2-1.fna&oh=00_AT-xB8BwT2jqt_lA_9QE6nod9vPnBUGvj-cjbmo2rSSI_Q&oe=620E8D65',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            Positioned(
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.black45,
                              ),
                              bottom: 16,
                              right: 16,
                            )
                          ],
                          alignment: Alignment.bottomRight,
                        ),
                        Positioned(
                            bottom: -90,
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Stack(
                                  children:[ Container(
                                      height: 180,
                                      width: 180,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          border: Border.all(
                                              width: 5, color: Colors.white)),
                                      child: ClipOval(
                                        child: ShaderMask(
                                          shaderCallback: (bounds) =>
                                              LinearGradient(
                                                      colors: [
                                                Colors.black38.withOpacity(0.2),
                                                Colors.black87.withOpacity(0.8)
                                              ],
                                                      begin: Alignment.center,
                                                      end: Alignment.bottomCenter)
                                                  .createShader(bounds),
                                          blendMode: BlendMode.darken,
                                          child: CircleAvatar(
                                            radius: 100,
                                            backgroundColor: Colors.white,
                                            backgroundImage: NetworkImage(
                                              'https://scontent.fcgp2-1.fna.fbcdn.net/v/t1.6435-9/190725864_803577630552416_6424045976488342357_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEGOptaOzLapcMCcY71ZPeEExzbGRJOMwQTHNsZEk4zBGc-q3iK0nTyhR5zGGaCv79OnL8KeUuQYFW4Kul1F8-V&_nc_ohc=lQ2JfTrwoV4AX9exZPx&tn=lKCb368TTtdE7--w&_nc_ht=scontent.fcgp2-1.fna&oh=00_AT-zjSI63msh5CtwAD1tFqfgqyaAQr-xVZ5nhLHD8TozFQ&oe=620E9A18',
                                            ),
                                          ),
                                        ),
                                      )),
                                    Positioned(
                                      left: 78,
                                      bottom: 20,
                                      child: Icon(
                                        Icons.security_rounded,
                                        color: Colors.white,
                                      ),
                                    ),
                                ]),
                                Positioned(
                                  child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color:
                                              Colors.white70.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: Icon(
                                        Icons.camera_alt,
                                        color: Colors.white70,
                                      )),
                                )
                              ],
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 105),
                      child: Center(
                          child: RichText(
                        text: TextSpan(
                            text: 'Rifat Hossain ',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 26,
                                color: Colors.white),
                            children: [
                              TextSpan(
                                  text: '(স্বপ্নবাজ)',
                                  style: TextStyle(fontSize: 20))
                            ]),
                      )),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Center(
                        child: Text(
                      '"যে পথে তোমার ভয়, সে পথেই চল\nসেটাই তোমাকে অভিজ্ঞ করে তুলবে"',
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    )),
                    SizedBox(
                      height: 32,
                    ),
                    Center(
                        child: Text(
                      '\'নারী-নেশা-তাস তিলে তিলে সর্বনাশ\'',
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    )),
                    SizedBox(
                      height:16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Expanded(
                            flex: 2,
                            child: RaisedButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_circle,
                                color: Colors.white,
                              ),
                              label: Text(
                                'Add to Story',
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.blue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Expanded(
                            flex: 2,
                            child: RaisedButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                              label: Text(
                                'Edit Profile',
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.grey.withOpacity(0.3),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Image.asset(
                              'assets/menu.png',
                              height: 24,
                              width: 24,
                            ),
                            color: Colors.grey.withOpacity(0.3),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Divider(
                      color: Colors.white70,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.work,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: RichText(
                            text: TextSpan(
                                text: 'Student at ',
                                style: TextStyle(color: Colors.white),
                                children: [
                                  TextSpan(
                                    text: 'SIYB Bangladesh',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ]),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Image.asset('assets/study.png',height: 24,width: 24,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: RichText(
                            text: TextSpan(
                              text: 'Worked at Student',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.work,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: RichText(
                            text: TextSpan(
                              text: 'Went to Kandughar BBS High School',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: RichText(
                            text: TextSpan(
                                text: 'Lives in ',
                                style: TextStyle(color: Colors.white),
                                children: [
                                  TextSpan(
                                    text: 'Feni, Barisal, Bangladesh',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ]),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: RichText(
                            text: TextSpan(
                                text: 'From ',
                                style: TextStyle(color: Colors.white),
                                children: [
                                  TextSpan(
                                    text: 'Comilla',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ]),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.watch_later,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: RichText(
                            text: TextSpan(
                              text: 'Joined on June 2018 ',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
