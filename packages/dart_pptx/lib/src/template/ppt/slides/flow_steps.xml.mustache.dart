const String template = r'''<?xml version="1.0" encoding="UTF-8"?>
<p:sld xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main"
       xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships"
       xmlns:p="http://schemas.openxmlformats.org/presentationml/2006/main"
       xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math"
       xmlns:a14="http://schemas.microsoft.com/office/drawing/2010/main"
       showMasterSp="1" showMasterPhAnim="1">

  <p:cSld>
    {{>slide-background}}
    <p:spTree>
      <!-- Group shape container -->
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

      <!-- Title -->
      {{#title}}
      <p:sp>
        <p:nvSpPr>
          <p:cNvPr id="2" name="Title"/>
          <p:cNvSpPr><a:spLocks noGrp="1"/></p:cNvSpPr>
          <p:nvPr/>
        </p:nvSpPr>
        <p:spPr>
          <a:xfrm>
            <a:off x="500000" y="200000"/>
            <a:ext cx="8000000" cy="800000"/>
          </a:xfrm>
        </p:spPr>
        <p:txBody>
          <a:bodyPr/>
          <a:lstStyle/>
          <a:p>
            <a:r>
              <a:rPr lang="en-US" sz="4400" b="1"/>
              <a:t>{{title}}</a:t>
            </a:r>
            <a:endParaRPr lang="en-US"/>
          </a:p>
        </p:txBody>
      </p:sp>
      {{/title}}

      <!-- Flow Items -->
      {{#steps}}
      <p:sp>
        <p:nvSpPr>
          <p:cNvPr id="{{id}}" name="IconBox"/>
          <p:cNvSpPr/>
          <p:nvPr/>
        </p:nvSpPr>
        <p:spPr>
          <a:xfrm>
            <a:off x="500000" y="{{y}}"/>
            <a:ext cx="500000" cy="500000"/>
          </a:xfrm>
          <a:prstGeom prst="rect"><a:avLst/></a:prstGeom>
        </p:spPr>
      </p:sp>

      <p:sp>
        <p:nvSpPr>
          <p:cNvPr id="{{id_text}}" name="TextBox"/>
          <p:cNvSpPr/>
          <p:nvPr/>
        </p:nvSpPr>
        <p:spPr>
          <a:xfrm>
            <a:off x="1200000" y="{{y}}"/>
            <a:ext cx="7000000" cy="500000"/>
          </a:xfrm>
        </p:spPr>
        <p:txBody>
          <a:bodyPr/>
          <a:lstStyle/>
          <a:p>
            <a:r>
              <a:rPr lang="en-US" sz="3200"/>
              <a:t>{{text}}</a:t>
            </a:r>
            <a:endParaRPr lang="en-US"/>
          </a:p>
        </p:txBody>
      </p:sp>

      <!-- Arrow -->
      <p:sp>
        <p:nvSpPr>
          <p:cNvPr id="{{id_arrow}}" name="DownArrow"/>
          <p:cNvSpPr/>
          <p:nvPr/>
        </p:nvSpPr>
        <p:spPr>
          <a:xfrm>
            <a:off x="4000000" y="{{arrow_y}}"/>
            <a:ext cx="400000" cy="300000"/>
          </a:xfrm>
          <a:prstGeom prst="downArrow"><a:avLst/></a:prstGeom>
        </p:spPr>
      </p:sp>
      {{/steps}}

      {{>speaker-notes}}
    </p:spTree>
  </p:cSld>

  <p:clrMapOvr>
    <a:masterClrMapping/>
  </p:clrMapOvr>
</p:sld>
''';
