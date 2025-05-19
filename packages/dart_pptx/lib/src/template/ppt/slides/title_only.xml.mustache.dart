/// This file is generated, do not edit!
/// See `bin/copy.dart` for more information.

/// Path: ./template/ppt/slides/title_only.xml.mustache
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
                    <p:cNvPr id="197" name="SLDIE TITLE"/>
                    <p:cNvSpPr txBox="1"/>
                    <p:nvPr>
                        <p:ph type="title"/>
                    </p:nvPr>
                </p:nvSpPr>
                <p:spPr>
                    <a:prstGeom prst="rect">
                        <a:avLst/>
                    </a:prstGeom>
                </p:spPr>
                <p:txBody>
                    <a:bodyPr wrap="square" anchor="t" anchorCtr="0"/>
                    <a:defPPr algn="l">
                        <a:defRPr sz="2400"/>
                    </a:defPPr>
                    {{#title}}
                    {{>text-value}}
                    {{/title}}
                </p:txBody>
            </p:sp>
            <p:sp>
                <p:nvSpPr>
                    <p:cNvPr id="198" name="SLIDE SUBTITLE"/>
                    <p:cNvSpPr txBox="1"/>
                    <p:nvPr>
                        <p:ph type="body" sz="quarter" idx="1"/>
                    </p:nvPr>
                </p:nvSpPr>
                <p:spPr>
                    <a:xfrm>
                        <a:off x="190500" y="1584648"/>
                        <a:ext cx="8053600" cy="2832614"/>
                    </a:xfrm>
                    <a:prstGeom prst="rect">
                        <a:avLst/>
                    </a:prstGeom>
                </p:spPr>
                <p:txBody>
                    <a:bodyPr lIns="50800" tIns="50800" rIns="50800" bIns="50800" anchor="l">
                        <a:normAutofit fontScale="100000" lnSpcReduction="0"/>
                    </a:bodyPr>
                    <a:lstStyle>
                        <a:lvl1pPr marL="0" marR="0" indent="0" algn="l" defTabSz="825500">
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
                    {{#subtitle}}
                    {{>text-value}}
                    {{/subtitle}}
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
