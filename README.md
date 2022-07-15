

# Linner Chart

 The Linner Chart package lets you add a beautiful Linner Chart With random Color For Each Item.

## Installation 

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  linner_chart: ^0.0.2
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:linner_chart/linner_chart.dart';;
```

## Example
There are a number of properties that you can modify:

 -  strokeWidth
 -  backgroundColor               


<hr>

<table>
<tr>
<td>

```dart
class LinnerChartScreen extends StatelessWidget {  
  const LinnerChartScreen({Key? key}) : super(key: key);  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      body: Center(  
        child: const LinnerChat(  
                charts: [
                    ChartModel(
                        persintge:0.5
                    ),
                    ChartModel(
                        persintge:0.3
                    ),
                ],
                strokeWidth: 8,
                backgroundColor: Color(0xFFE5E5E5), 
        ),  
      ),  
    );  
  }  
}
```

</td>
<td>
<img  src="https://github.com/amotie/Flutter-Linner-Chart/blob/main/chartimage.jpeg?raw=true"  alt="">
</td>
</tr>
</table>

