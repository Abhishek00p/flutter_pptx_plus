// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flow_steps.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$SlideStepFlowToJson(SlideStepFlow instance) =>
    <String, dynamic>{
      'index': instance.index,
      'isLast': instance.isLast,
      'rId': instance.rId,
      'id': instance.id,
      'order': instance.order,
      'localRId': instance.localRId,
      'name': instance.name,
      'slideNumber': instance.slideNumber,
      'speakerNotes': instance.speakerNotes?.toJson(),
      'notesId': instance.notesId,
      'background': instance.background.toJson(),
      'hasNotes': instance.hasNotes,
      'title': instance.title?.toJson(),
      'steps': instance.steps.map((e) => e.toJson()).toList(),
      'layoutId': instance.layoutId,
      'source': instance.source,
    };

Map<String, dynamic> _$StepItemToJson(StepItem instance) => <String, dynamic>{
      'id': instance.id,
      'idText': instance.idText,
      'text': instance.text,
      'y': instance.y,
      'idArrow': instance.idArrow,
      'arrowY': instance.arrowY,
      'isLast': instance.isLast,
    };
