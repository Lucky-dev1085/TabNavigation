import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 0,
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hey Dave!',
                        style: TextStyle(
                          fontSize: 35, 
                          fontWeight: FontWeight.bold, 
                        ),
                      ),
                      Image.asset(
                        'assets/images/user.png',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),

              Text(
                'Alerts',
                style: TextStyle(fontSize: 18),
              ),
              Card(
                elevation: 1,
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.message),
                      Text('You have 2 new messages'),
                      MaterialButton(
                        color: Colors.blue,
                        onPressed: () {},
                        child: Text('Go to Inbox', style: TextStyle(
                          color: Colors.white
                        ),),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                      )
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
              Card(
                elevation: 1,
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.calendar_today),
                      Text('1 new job opportunitity'),
                      MaterialButton(
                        color: Colors.blue,
                        onPressed: () {},
                        child: Text('View Job', style: TextStyle(
                          color: Colors.white
                        ),),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                      )
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              ),


              Card(
                elevation: 0,
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Next Shifts',
                        style: TextStyle(
                          fontSize: 18, 
                        ),
                      ),
                      Text(
                        'see all',
                        style: TextStyle(
                          fontSize: 15, 
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Container(
                        height: MediaQuery.of(context).size.height* 0.35,
                        width: MediaQuery.of(context).size.width * 0.7,
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        // margin: EdgeInsets.only(right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Card(
                              elevation: 0,
                              child: Row(
                                // ignore: lines_longer_than_80_chars
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '3M Bair hugger Job',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  MaterialButton(
                                    height: 30,
                                    color: Colors.redAccent,
                                    onPressed: () {},
                                    child: Text('Nov, 11', style: TextStyle(
                                      color: Colors.white
                                    ),),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text('10 : 00PM - 10 : 30PM', style: TextStyle(
                              fontSize: 20,
                            ),),
                            Text('New York, NY, USA', style: TextStyle(
                              fontSize: 12,
                            ),),
                            ButtonTheme(
                              minWidth: MediaQuery.of(context).size.width * 0.6,
                              child: OutlineButton(
                                onPressed: () {},
                                child: Text('Cancel'),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  style: BorderStyle.solid,
                                  width: 1,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                                ),
                              ),
                            ),
                            MaterialButton(
                              minWidth: MediaQuery.of(context).size.width * 0.6,
                              color: Colors.blue,
                              onPressed: () {},
                              child: Text('Check - In', style: TextStyle(
                                color: Colors.white
                              ),),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}