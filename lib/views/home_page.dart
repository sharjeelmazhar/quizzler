import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> scoreKeeper = [
      const Icon(
        Icons.check,
        color: Colors.green,
      ),
      const Icon(
        Icons.close,
        color: Colors.red,
      ),
      const Icon(
        Icons.check,
        color: Colors.green,
      ),
      const Icon(
        Icons.close,
        color: Colors.red,
      ),
      const Icon(
        Icons.check,
        color: Colors.green,
      ),
    ];
   LinearGradient gradient = const LinearGradient(
      colors: [Colors.green, Colors.red],
    );
  @override
  
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: ShaderMask(
          shaderCallback: (Rect rect) {
            return gradient.createShader(rect);
          },
          child: Text(
            'Quizzler',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Expanded(
                flex: 8,
                child: Center(
                  child: Text(
                    'Questions are shown here', style: TextStyle(fontSize: 25),
                    // style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: const Color.fromRGBO(0, 255, 0, 1),
                      elevation: 0,
                      backgroundColor: const Color.fromARGB(255, 0, 255, 0),
                    ),
                    child: const Text(
                      'True',
                    ),
                    onPressed: () {
                      setState(() {
                        scoreKeeper.add(const Icon(
                          Icons.check,
                          color: Colors.green,
                        ));
                      });
                      //The user picked true.
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  // padding: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.only(bottom: 15),

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: const Color.fromRGBO(255, 0, 0, 1),
                      elevation: 0,
                      backgroundColor: const Color.fromARGB(255, 255, 0, 0),
                    ),
                    child: const Text(
                      'False',
                    ),
                    onPressed: () {
                      setState(() {
                        scoreKeeper.add(const Icon(
                          Icons.close,
                          color: Colors.red,
                        ));
                      });
                      //The user picked true.
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [ Row(
                    children: scoreKeeper,
                  ),],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}























// class HomePage extends StatelessWidget {
//   HomePage({super.key});
//   final List<Widget> scoreKeeper = [
//     const Icon(
//       Icons.check,
//       color: Colors.green,
//     ),
//     const Icon(
//       Icons.close,
//       color: Colors.red,
//     ),
//     const Icon(
//       Icons.check,
//       color: Colors.green,
//     ),
//     const Icon(
//       Icons.close,
//       color: Colors.red,
//     ),
//     const Icon(
//       Icons.check,
//       color: Colors.green,
//     ),
//   ];
//   final LinearGradient _gradient = const LinearGradient(
//     colors: [Colors.green, Colors.red],
//   );
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: ShaderMask(
//           shaderCallback: (Rect rect) {
//             return _gradient.createShader(rect);
//           },
//           child: Text(
//             'Quizzler',
//             style: Theme.of(context)
//                 .textTheme
//                 .headlineMedium!
//                 .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
//           ),
//         ),
//       ),
//       backgroundColor: Theme.of(context).colorScheme.background,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               const Expanded(
//                 flex: 8,
//                 child: Center(
//                   child: Text(
//                     'Questions are shown here', style: TextStyle(fontSize: 25),
//                     // style: TextStyle(color: Colors.white, fontSize: 20),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.only(bottom: 15),
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       shadowColor: const Color.fromRGBO(0, 255, 0, 1),
//                       elevation: 0,
//                       backgroundColor: const Color.fromARGB(255, 0, 255, 0),
//                     ),
//                     child: const Text(
//                       'True',
//                     ),
//                     onPressed: () {
//                       //The user picked true.
//                     },
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Padding(
//                   // padding: const EdgeInsets.all(15.0),
//                   padding: const EdgeInsets.only(bottom: 15),

//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       shadowColor: const Color.fromRGBO(255, 0, 0, 1),
//                       elevation: 0,
//                       backgroundColor: const Color.fromARGB(255, 255, 0, 0),
//                     ),
//                     child: const Text(
//                       'False',
//                     ),
//                     onPressed: () {
//                       //The user picked true.
//                     },
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 100,
//               ),
//               Row(
//                 children: scoreKeeper,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
