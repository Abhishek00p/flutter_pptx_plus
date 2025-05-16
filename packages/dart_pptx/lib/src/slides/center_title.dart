import 'package:json_annotation/json_annotation.dart';

import '../classes/slide.dart';
import '../classes/text_value.dart';
import '../template/ppt/slides/center_title.xml.mustache.dart';
part 'center_title.g.dart';

@JsonSerializable(createFactory: false)
class CenterTitle extends Slide {
  CenterTitle({
    super.name = 'center title',
    this.title,
    super.slideNumber,
    super.speakerNotes,
  });

  TextValue? title;

  @override
  int get layoutId => 7;

  @override
  Map<String, dynamic> toJson() => _$CenterTitleToJson(this);

  @override
  String get source => template;
}
