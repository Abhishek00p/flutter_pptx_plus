/// This file is generated, do not edit!
/// See `bin/copy.dart` for more information.

/// Path: ./template/ppt/slides/title_bullets_and_photo.xml.mustache
const String template = r'''<?xml version="1.0" encoding="UTF-8"?>
<p:sld xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main"
    xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships"
    xmlns:p="http://schemas.openxmlformats.org/presentationml/2006/main"
    xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math"
    xmlns:a14="http://schemas.microsoft.com/office/drawing/2010/main" showMasterSp="1" showMasterPhAnim="1">
    <p:cSld>
        {{>slide-background}}
        <p:spTree>
            <p:nvGrpSpPr>
                <p:cNvPr id="1" name=""/>
                <p:cNvGrpSpPr/>
                <p:nvPr/>
            </p:nvGrpSpPr>
            <p:grpSpPr>
                <a:xfrm>
                    <a:off x="0" y="0"/>
                    <a:ext cx="0" cy="0"/>
                    <a:chOff x="0" y="0"/>
                    <a:chExt cx="0" cy="0"/>
                </a:xfrm>
            </p:grpSpPr>
            <p:sp>
                <p:nvSpPr>
                    <p:cNvPr id="{{new-id}}" name="SLIDE TITLE"/>
                    <p:cNvSpPr txBox="1"/>
                    <p:nvPr>
                        <p:ph type="title"/>
                    </p:nvPr>
                </p:nvSpPr>
                <p:spPr>
                  <a:xfrm>
                        <a:off x="190500" y="190500"/>
                        <a:ext cx="9753600" cy="1371600"/>
                    </a:xfrm>
                    <a:prstGeom prst="rect">
                        <a:avLst/>
                    </a:prstGeom>
                </p:spPr>
                <p:txBody>
                    <a:bodyPr/>
                    <a:lstStyle>
                        <a:lvl1pPr defTabSz="2267711">
                            <a:defRPr sz="2400"/>
                        </a:lvl1pPr>
                    </a:lstStyle>
                    {{#title}}
                    {{>text-value}}
                    {{/title}}
                </p:txBody>
            </p:sp>
            <p:pic>
                <p:nvPicPr>
                    {{#image}}
                    <p:cNvPr id="{{new-id}}" name="{{image.name}}" descr="{{image.description}}"/>
                    {{/image}}
                    {{^image}}
                    <p:cNvPr id="{{new-id}}" name="Image" descr="Image"/>
                    {{/image}}
                    <p:cNvPicPr>
                        <a:picLocks noChangeAspect="1"/>
                    </p:cNvPicPr>
                    <p:nvPr>
                        <p:ph type="pic" idx="21"/>
                    </p:nvPr>
                </p:nvPicPr>
                <p:blipFill>
                    <a:blip r:embed="rId{{imageId1}}">
                        <a:extLst/>
                    </a:blip>
                    <a:stretch>
                        <a:fillRect/>
                    </a:stretch>
                </p:blipFill>
                <p:spPr>
                    <a:xfrm>
                        <a:off x="18288000" y="5143500"/>
                        <a:ext cx="6096000" cy="3429000"/>
                    </a:xfrm>
                    <a:prstGeom prst="rect">
                        <a:avLst/>
                    </a:prstGeom>
                </p:spPr>
            </p:pic>
            <p:sp>
                <p:nvSpPr>
                    <p:cNvPr id="{{new-id}}" name="Image Caption"/>
                    <p:cNvSpPr txBox="1"/>
                    <p:nvPr>
                        <p:ph type="body" sz="quarter" idx="23"/>
                    </p:nvPr>
                </p:nvSpPr>
                <p:spPr>
                    <a:xfrm>
                        <a:off x="18288000" y="8572500"/>
                        <a:ext cx="6096000" cy="342900"/>
                    </a:xfrm>
                    <a:prstGeom prst="rect">
                        <a:avLst/>
                    </a:prstGeom>
                </p:spPr>
                <p:txBody>
                    <a:bodyPr lIns="50800" tIns="50800" rIns="50800" bIns="50800" anchor="ctr">
                        <a:normAutofit fontScale="100000" lnSpcReduction="0"/>
                    </a:bodyPr>
                    <a:lstStyle>
                        <a:lvl1pPr marL="0" marR="0" indent="0" algn="ctr" defTabSz="825500">
                            <a:lnSpc>
                                <a:spcPct val="100000"/>
                            </a:lnSpc>
                            <a:spcBef>
                                <a:spcPts val="0"/>
                            </a:spcBef>
                            <a:spcAft>
                                <a:spcPts val="0"/>
                            </a:spcAft>
                            <a:buSzTx/>
                            <a:buNone/>
                            <a:defRPr spc="-100">
                                <a:latin typeface="Graphik Semibold"/>
                                <a:ea typeface="Graphik Semibold"/>
                                <a:cs typeface="Graphik Semibold"/>
                                <a:sym typeface="Graphik Semibold"/>
                            </a:defRPr>
                        </a:lvl1pPr>
                    </a:lstStyle>
                    {{#caption}}
                    {{>text-value}}
                    {{/caption}}
                </p:txBody>
            </p:sp>
            <p:sp>
                <p:nvSpPr>
                    <p:cNvPr id="{{new-id}}" name="SLIDE SUBTITLE"/>
                    <p:cNvSpPr txBox="1"/>
                    <p:nvPr>
                        <p:ph type="body" sz="quarter" idx="1"/>
                    </p:nvPr>
                </p:nvSpPr>
                <p:spPr>
                  <a:xfrm>
                        <a:off x="1500500" y="1384648"/>
                        <a:ext cx="5053600" cy="832614"/>
                    </a:xfrm>
                    <a:prstGeom prst="rect">
                        <a:avLst/>
                    </a:prstGeom>
                </p:spPr>
                <p:txBody>
                    <a:bodyPr/>
                    <a:lstStyle/>
                    {{#subtitle}}
                    {{>text-value}}
                    {{/subtitle}}
                </p:txBody>
            </p:sp>
            <p:sp>
                <p:nvSpPr>
                    <p:cNvPr id="{{new-id}}" name="Body Level One…"/>
                    <p:cNvSpPr txBox="1"/>
                    <p:nvPr>
                        <p:ph type="body" idx="22"/>
                    </p:nvPr>
                </p:nvSpPr>
                <p:spPr>
                        <a:xfrm>
                        <a:off x="500500" y="1384648"/>
                        <a:ext cx="5053600" cy="832614"/>
                    </a:xfrm>
                    <a:prstGeom prst="rect">
                        <a:avLst/>
                    </a:prstGeom>
                    <a:extLst>
                        <a:ext uri="{C572A759-6A51-4108-AA02-DFA0A04FC94B}">
                            <ma14:wrappingTextBoxFlag val="1"
                                xmlns:ma14="http://schemas.microsoft.com/office/mac/drawingml/2011/main"/>
                        </a:ext>
                    </a:extLst>
                </p:spPr>
                <p:txBody>
                    <a:bodyPr/>
                    <a:lstStyle/>
                    {{#bullets}}
                    {{>text-value}}
                    {{/bullets}}
                </p:txBody>
            </p:sp>
            {{>speaker-notes}}
        </p:spTree>
    </p:cSld>
    <p:clrMapOvr>
        <a:masterClrMapping/>
    </p:clrMapOvr>
    <p:transition xmlns:p14="http://schemas.microsoft.com/office/powerpoint/2010/main" spd="med" advClick="1"/>
</p:sld>''';
