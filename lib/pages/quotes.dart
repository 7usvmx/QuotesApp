// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List theQuotes = [
    {
      "hadith":
          " \" أكملُ المؤمنين إيمانًا أحسنُهم خُلُقًا ، وخيارُكم خياركُم لأهلِه \"",
      "name": "رواه الألباني"
    },
    {
      "hadith":
          " \" إنَّ اللهَ ليُبلِّغُ العبدَ بحُسنِ خُلقِه درجةَ الصَّومِ والصَّلاةِ \" ",
      "name": "رواه المنذري"
    },
    {
      "hadith":
          " \" ما شيءٌ أثقلُ في ميزانِ المؤمِنِ يومَ القيامةِ مِن خُلُقٍ حسَنٍ، فإنَّ اللَّهَ تعالى ليُبغِضُ الفاحشَ البَذيءَ \" ",
      "name": "رواه الألباني"
    },
    {
      "hadith":
          " \" إن العبدَ ليبلغُ بحسنِ خُلقِه عظيمَ درجاتِ الآخرةِ وشرفِ المنازلِ وإنه لضعيفُ العبادةِ وإنه ليبلغُ بسوءِ خُلقِه أسفلَ درجةٍ في جهنمَ  \" ",
      "name": "رواه الدمياطي"
    },
    {
      "hadith":
          " \"  إن العبدَ ليبلغُ بحسنِ خُلقِه عظيمَ درجاتِ الآخرةِ وشرفِ المنازلِ وإنه لضعيفُ العبادةِ وإنه ليبلغُ بسوءِ خُلقِه أسفلَ درجةٍ في جهنمَ إن العبدَ ليبلغُ بحسنِ خُلقِه عظيمَ درجاتِ الآخرةِ وشرفِ المنازلِ وإنه لضعيفُ العبادةِ وإنه ليبلغُ بسوءِ خُلقِه أسفلَ درجةٍ في جهنمَ إن العبدَ ليبلغُ بحسنِ خُلقِه عظيمَ درجاتِ الآخرةِ وشرفِ المنازلِ وإنه لضعيفُ العبادةِ وإنه ليبلغُ بسوءِ خُلقِه أسفلَ درجةٍ في جهنمَ \" ",
      "name": "رواه الإمام بن حنبل"
    },
  ];

  int quotCounter = 0;

  void nextQuote() {
    if (quotCounter < theQuotes.length - 1) {
      quotCounter++;
    }
  }

  void prevQuote() {
    if (quotCounter > 0) {
      quotCounter--;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //  Header of app
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                ),
                padding: EdgeInsets.all(18),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(19),
                          ),
                          padding: EdgeInsets.all(5),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      // mainAxisAlignment: MainAxisAlignment.,
                      children: [
                        Text(
                          "تطبيق أحاديث",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          textDirection: TextDirection.rtl,
                        ),
                        Text(
                          "النسخة 1.0",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(height: 75),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            "باب الأخلاق",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // main Body
            SizedBox(
              height: 550,
              child: Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[700],
                        borderRadius: BorderRadius.circular(24),
                      ),
                      height: 350,
                      width: double.infinity,
                      padding: EdgeInsets.all(24),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: SvgPicture.asset(
                              "assests/svgs/quotes.svg",
                              height: 200,
                              width: 200,
                              color: Colors.white12,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: ListView(
                                  children: [
                                    Text(
                                      theQuotes[quotCounter]["hadith"],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      ),
                                      textDirection: TextDirection.rtl,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 12),
                              Text(
                                theQuotes[quotCounter]["name"],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                                textDirection: TextDirection.rtl,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),
                    //Arrows
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[700],
                            borderRadius: BorderRadius.circular(18),
                          ),
                          padding: EdgeInsets.all(6),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                nextQuote();
                              });
                            },
                            icon: Icon(
                              Icons.keyboard_arrow_left_rounded,
                              color: Colors.white,
                              size: 38,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[700],
                            borderRadius: BorderRadius.circular(18),
                          ),
                          padding: EdgeInsets.all(6),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                prevQuote();
                              });
                            },
                            icon: Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: Colors.white,
                              size: 38,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
