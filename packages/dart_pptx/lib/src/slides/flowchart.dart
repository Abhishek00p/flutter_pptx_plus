import 'package:dart_pptx/dart_pptx.dart';
import 'package:json_annotation/json_annotation.dart';

import '../template/ppt/slides/flowchart_2.xml.mustache.dart' as flowchart2;
import '../template/ppt/slides/flowchart_3.xml.mustache.dart' as flowchart3;
import '../template/ppt/slides/flowchart_4.xml.mustache.dart' as flowchart4;
import '../template/ppt/slides/flowchart_5.xml.mustache.dart' as flowchart5;

part 'flowchart.g.dart';

@JsonSerializable(createFactory: false)
class SlideFlowchart extends Slide {
  SlideFlowchart({
    super.name = 'Flowchart',
    this.title,
    this.bullets = const [],
    super.speakerNotes,
    super.slideNumber,
  });

  TextValue? title;
  List<TextValue> bullets;

  @override
  int get layoutId => 4;

  @override
  Map<String, dynamic> toJson() => _$SlideFlowchartToJson(this);

  @override
  String get source => bullets.length > 5
      ? flowchart5.template
      : bullets.length > 3
          ? flowchart4.template
          : bullets.length > 1
              ? flowchart3.template
              : flowchart2.template;
}
