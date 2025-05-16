import 'package:dart_pptx/dart_pptx.dart';
import 'package:json_annotation/json_annotation.dart';
import '../classes/slide.dart';
import '../template/ppt/slides/flow_steps.xml.mustache.dart'; // Ensure this path is correct
part 'flow_steps.g.dart';

@JsonSerializable(createFactory: false)
class SlideStepFlow extends Slide {
  final List<StepItem> steps;
  final TextValue? title;

  SlideStepFlow({
    super.name = 'Step Flow',
    List<StepItem>? steps,
    super.speakerNotes,
    super.slideNumber,
    this.title,
  }) : steps = steps ?? _defaultSteps;

  static final List<StepItem> _defaultSteps = [
    StepItem(id: 1, idText: 2, text: 'Step One', y: 1000000, arrowY: 1500000),
    StepItem(id: 3, idText: 4, text: 'Step Two', y: 2000000, arrowY: 2500000),
    StepItem(
        id: 5,
        idText: 6,
        text: 'Step Three',
        y: 3000000,
        arrowY: null,
        isLast: true), // Mark
  ];

  @override
  int get layoutId => 1002; // Unique ID for this custom layout

  @override
  Map<String, dynamic> toJson() => _$SlideStepFlowToJson(this);

  @override
  String get source => template;

  // Method to dynamically calculate Y positions for steps
  void calculateStepPositions() {
    for (int i = 0; i < steps.length; i++) {
      steps[i].y = (i * 1000000) + 300000; // Adjust Y position based on index
    }
  }
}

@JsonSerializable()
class StepItem {
  StepItem({
    required this.id,
    required this.idText,
    required this.text,
    required this.y,
    this.isLast = false,
    this.arrowY,
  });

  final int id;
  @JsonKey(name: 'id_text')
  final int idText;
  final String text;
  bool isLast;
  int y; // Make y mutable for dynamic adjustment
  int? arrowY;
  Map<String, dynamic> toJson() => _$StepItemToJson(this);
}
