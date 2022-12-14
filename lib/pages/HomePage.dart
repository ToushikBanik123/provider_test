import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertesting/provider/Home_Page_Provider.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: ChangeNotifierProvider<HomePageProvider>(
            create: (context)=>HomePageProvider(), 
              child: Consumer<HomePageProvider>(
                builder: (context, provider, child){
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(provider.eligibilityMassage.toString(),
                        style: TextStyle(
                          color: (provider.isEligible == true)? Colors.green : Colors.red,
                        ),
                      ),
                       TextField(
                         onChanged: (val){
                           provider.checkEligibility(int.parse(val));
                         },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Enter Your Age",
                        ),
                      )
                    ],
                  );
                },
              )
          )
        ),
      ),
    );
  }
}
