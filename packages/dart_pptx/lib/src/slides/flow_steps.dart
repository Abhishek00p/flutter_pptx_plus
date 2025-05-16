import 'package:dart_pptx/dart_pptx.dart';
import 'package:json_annotation/json_annotation.dart';
import '../classes/slide.dart';
import '../template/ppt/slides/flow_steps.xml.mustache.dart'; // Make sure this is the correct path
part 'flow_steps.g.dart';

@JsonSerializable(createFactory: false)
class SlideStepFlow extends Slide {
  SlideStepFlow({
    super.name = 'Step Flow',
    required this.steps,
    super.speakerNotes,
    super.slideNumber,
    this.title,
  });
  TextValue? title;
  final List<StepItem> steps;

  @override
  int get layoutId => 1002; // Unique ID for this custom layout

  @override
  Map<String, dynamic> toJson() => _$SlideStepFlowToJson(this);

  @override
  String get source => template;
}

@JsonSerializable()
class StepItem {
  StepItem({
    required this.id,
    required this.idText,
    required this.text,
    required this.y,
    this.idArrow,
    this.arrowY,
    this.isLast = false,
  });

  final int id;
  @JsonKey(name: 'id_text')
  final int idText;
  final String text;
  final int y;
  @JsonKey(name: 'id_arrow')
  final int? idArrow;
  final int? arrowY;
  final bool isLast;

  Map<String, dynamic> toJson() => _$StepItemToJson(this);
}
