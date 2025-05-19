// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flowchart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$SlideFlowchartToJson(SlideFlowchart instance) =>
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
      'bullets': instance.bullets.map((e) => e.toJson()).toList(),
      'layoutId': instance.layoutId,
      'source': instance.source,
    };
