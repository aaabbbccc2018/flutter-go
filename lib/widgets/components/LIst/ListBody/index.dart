/**
 * Created with Android Studio.
 * User: ryan
 * Date: 2018/12/31
 * Time: 下午2:38
 * email: zhu.yan@alibaba-inc.com
 * tartget: ListBody 的示例
 */
import '../../../../common/widget-demo.dart';
import '../../../../routers/application.dart';
import 'package:flutter/material.dart';

import 'package:flutter_markdown/flutter_markdown.dart';
import './demo.dart' as ListBodyDemo;

const String _Text0 =
"""### **简介**
> ListBody “列表组件”
- 作用是按给定的轴方向，按照顺序排列子节点。
- 是一个不常直接使用的控件，一般都会配合ListView或者Column等控件使用。
""";


const String _Text1 =
"""### **基本用法**
> 布局行为
- 在主轴上，子节点按照顺序进行布局，在交叉轴上，子节点尺寸会被拉伸，以适应交叉轴的区域。
- 在主轴上，给予子节点的空间必须是不受限制的（unlimited），使得子节点可以全部被容纳，ListBody不会去裁剪或者缩放其子节点。
- ListBody的布局代码非常简单，根据主轴的方向，对子节点依次排布。
""";

class Demo extends StatefulWidget {
  static const String routeName = '/components//List/ListBody';

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return WidgetDemo(
      title: 'ListBody',
      codeUrl: '${Application
          .github['widgetsURL']}/componentss/List/ListBody/demo.dart',
      child: allCheckboxs(context, this),
      docUrl: 'https://docs.flutter.io/flutter/widgets/ListBody-class.html',
    );
  }
}

/*
 * 所有的 ListBody widget
 * context: 运行上下文
 * that: 指向有状态的 StatefulWidget
 */
Widget allCheckboxs(BuildContext context, _DemoState that) {
  return Container(
    //padding: new EdgeInsets.only(bottom: 20.0, top: 20.0, left: 0, right: 0),
      child: Column(
        //mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            MarkdownBody(data: _Text0),
            SizedBox(height: 20.0), // 间距
            MarkdownBody(data: _Text1),
            SizedBox(height: 20.0), // 间距
            ListBodyDemo.ListBodyLessDefault(),
            SizedBox(height: 20.0), // 间距
          ])
  );
}
