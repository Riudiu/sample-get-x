import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_get_x/src/page/controller/CountControllerWithProvider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Provider", style: TextStyle(fontSize: 30)),
          Consumer<CountControllerWithProvider>(
            builder: (_, snapshot, child) {
              return Text("${snapshot.count}", style: TextStyle(fontSize: 50));
            },
          ),
          SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              // listen : true 전체를 빌드 , listen : false로 하고 consumer를 등록하면 이 부분만 build된다.
              Provider.of<CountControllerWithProvider>(context, listen: false)
                  .increase();
            },
            child: Text("+", style: TextStyle(fontSize: 30)),
          ),
        ],
      ),
    );
  }
}
