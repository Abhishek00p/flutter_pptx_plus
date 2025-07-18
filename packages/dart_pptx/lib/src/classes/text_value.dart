import 'package:json_annotation/json_annotation.dart';
import 'package:mustache_template/mustache_template.dart';

import 'slide.dart';

part 'text_value.g.dart';

@JsonSerializable(createFactory: false)
class TextItem {
  final String value;
  bool isBold, isItalic, isUnderline, isStrikeThrough;

  bool get isStylized => isBold || isItalic || isUnderline || isStrikeThrough;

  TextItem(
      this.value, {
        this.isBold = false,
        this.isItalic = false,
        this.isUnderline = false,
        this.isStrikeThrough = false,
      });

  Map<String, dynamic> toJson() => _$TextItemToJson(this);

  @override
  String toString() => value;
}

@JsonSerializable(createFactory: false)
class TextValueLine {
  final List<TextItem> values;
  final String alignment;

  TextValueLine({
    required this.values,
    this.alignment = 'l',
  });

  Map<String, dynamic> toJson() => _$TextValueLineToJson(this);

  @override
  String toString() => values.map((e) => e.toString()).join('');
}

@JsonSerializable(createFactory: false)
class TextValue {
  final List<TextValueLine> lines;

  TextValue({
    required this.lines,
  });

  factory TextValue.uniform(
      String? value, {
        bool isBold = false,
        bool isItalic = false,
        bool isUnderline = false,
        bool isStrikeThrough = false,
        String alignment = 'l',
      }) {
    return TextValue(
      lines: [
        if (value != null)
          TextValueLine(
            values: [
              TextItem(
                value,
                isBold: isBold,
                isItalic: isItalic,
                isUnderline: isUnderline,
                isStrikeThrough: isStrikeThrough,
              ),
            ],
            alignment: alignment,
          ),
      ],
    );
  }

  factory TextValue.singleLine(List<TextItem>? values) {
    return TextValue(lines: [
      TextValueLine(values: values ?? []),
    ]);
  }

  factory TextValue.multiLine(List<TextValueLine>? lines) {
    return TextValue(lines: lines ?? []);
  }

  Map<String, dynamic> toJson() => _$TextValueToJson(this);

  @override
  String toString() => lines.map((e) => e.toString()).join('\n');
}

final multiLineTemplate = Template(
  _multiLine,
  partialResolver: resolvePartials,
);

final singleLineTemplate = Template(
  _singleLine,
  partialResolver: resolvePartials,
);

const _multiLine = r'''
{{#lines}}
<a:p>
  <a:pPr algn="{{alignment}}"/>
  {{>text-line}}
</a:p>
{{/lines}}
''';

const _singleLine = r'''
{{#values}}
<a:r>
    {{#isStylized}}
    <a:rPr
        {{#isBold}}b="1"{{/isBold}}
        {{#isItalic}}i="1"{{/isItalic}}
        {{#isUnderline}}u="sng"{{/isUnderline}}
        {{#isStrikeThrough}}strike="sngStrike"{{/isStrikeThrough}}
    />
    {{/isStylized}}
    <a:t>{{value}}</a:t>
</a:r>
{{/values}}
''';

extension TextValueUtils on String {
  TextValue toTextValue() {
    return TextValue.uniform(this);
  }

  TextValueLine toTextLine() {
    return TextValueLine(values: [TextItem(this)]);
  }
}
