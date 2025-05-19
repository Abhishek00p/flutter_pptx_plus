import 'package:dart_pptx/dart_pptx.dart';
import 'package:json_annotation/json_annotation.dart';

import '../template/ppt/slides/flowchart_2.xml.mustache.dart' as flowchart2;
import '../template/ppt/slides/flowchart_3.xml.mustache.dart' as flowchart3;
import '../template/ppt/slides/flowchart_4.xml.mustache.dart' as flowchart4;
part 'flowchart.g.dart';

@JsonSerializable(createFactory: false)
class SlideFlowchart extends Slide {
  SlideFlowchart({
    super.name = 'Flowchart',
    this.title,
    required this.bullet1,
    required this.bullet2,
    this.bullet3,
    this.bullet4,
    super.speakerNotes,
    super.slideNumber,
  });

  TextValue? title;
  TextValue bullet1;
  TextValue bullet2;
  TextValue? bullet3;
  TextValue? bullet4;

  @override
  int get layoutId => 4;

  @override
  Map<String, dynamic> toJson() => _$SlideFlowchartToJson(this);

  @override
  String get source => bullet4 != null
      ? flowchart4.template
      : bullet3 != null
          ? flowchart3.template
          : flowchart2.template;
}
