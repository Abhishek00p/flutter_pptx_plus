const template = r'''
<p:sld xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:p="http://schemas.openxmlformats.org/presentationml/2006/main">
  <p:cSld name="{{name}}">
    {{>slide-background}}
    <p:spTree>
      <!-- Title at the top -->
      <p:sp>
        <p:nvSpPr>
          <p:cNvPr id="1" name="Title"/>
          <p:cNvSpPr>
            <a:spLocks noGrp="1"/>
          </p:cNvSpPr>
          <p:nvPr>
            <p:ph type="title"/>
          </p:nvPr>
        </p:nvSpPr>
        <p:spPr>
          <a:xfrm>
            <a:off x="190500" y="200000"/>
            <a:ext cx="8000000" cy="500000"/>
          </a:xfrm>
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

      <!-- First bullet (centered) -->
      <p:sp>
        <p:nvSpPr>
          <p:cNvPr id="2" name="Bullet1"/>
          <p:cNvSpPr/>
          <p:nvPr/>
        </p:nvSpPr>
        <p:spPr>
          <a:xfrm>
            <a:off x="3000000" y="1500000"/>
            <a:ext cx="4000000" cy="600000"/>
          </a:xfrm>
          <a:prstGeom prst="rect">
            <a:avLst/>
          </a:prstGeom>
        </p:spPr>
        <p:txBody>
          <a:bodyPr wrap="square" anchor="t" anchorCtr="0"/>
          <a:defPPr algn="ctr">
            <a:defRPr sz="1400"/>
          </a:defPPr>
          {{#bullet1}}
          {{>text-value}}
          {{/bullet1}}
        </p:txBody>
      </p:sp>

      <!-- Arrow (down) -->
      <p:sp>
        <p:nvSpPr>
          <p:cNvPr id="3" name="Arrow1"/>
          <p:cNvSpPr/>
          <p:nvPr/>
        </p:nvSpPr>
        <p:spPr>
          <a:xfrm>
            <a:off x="4800000" y="2328700"/>
            <a:ext cx="200000" cy="200000"/>
          </a:xfrm>
          <a:prstGeom prst="downArrow">
            <a:avLst/>
          </a:prstGeom>
           <a:solidFill>
            <a:srgbClr val="000000"/>
          </a:solidFill>
        </p:spPr>
      </p:sp>

      <!-- Second bullet (centered) -->
      <p:sp>
        <p:nvSpPr>
          <p:cNvPr id="4" name="Bullet2"/>
          <p:cNvSpPr/>
          <p:nvPr/>
        </p:nvSpPr>
        <p:spPr>
          <a:xfrm>
            <a:off x="3000000" y="3157400"/>
            <a:ext cx="4000000" cy="600000"/>
          </a:xfrm>
          <a:prstGeom prst="rect">
            <a:avLst/>
          </a:prstGeom>
        </p:spPr>
        <p:txBody>
          <a:bodyPr wrap="square" anchor="t" anchorCtr="0"/>
          <a:defPPr algn="ctr">
            <a:defRPr sz="1400"/>
          </a:defPPr>
          {{#bullet2}}
          {{>text-value}}
          {{/bullet2}}
        </p:txBody>
      </p:sp>

       <!-- Arrow (down) -->
      <p:sp>
        <p:nvSpPr>
          <p:cNvPr id="5" name="Arrow2"/>
          <p:cNvSpPr/>
          <p:nvPr/>
        </p:nvSpPr>
        <p:spPr>
          <a:xfrm>
            <a:off x="4800000" y="3986100"/>
            <a:ext cx="200000" cy="200000"/>
          </a:xfrm>
          <a:prstGeom prst="downArrow">
            <a:avLst/>
          </a:prstGeom>
           <a:solidFill>
            <a:srgbClr val="000000"/>
          </a:solidFill>
        </p:spPr>
      </p:sp>

      <!-- Third bullet (centered) -->
      <p:sp>
        <p:nvSpPr>
          <p:cNvPr id="5" name="Bullet3"/>
          <p:cNvSpPr/>
          <p:nvPr/>
        </p:nvSpPr>
        <p:spPr>
          <a:xfrm>
            <a:off x="3000000" y="4814800"/>
            <a:ext cx="4000000" cy="600000"/>
          </a:xfrm>
          <a:prstGeom prst="rect">
            <a:avLst/>
          </a:prstGeom>
        </p:spPr>
        <p:txBody>
          <a:bodyPr wrap="square" anchor="t" anchorCtr="0"/>
          <a:defPPr algn="ctr">
            <a:defRPr sz="1400"/>
          </a:defPPr>
          {{#bullet3}}
          {{>text-value}}
          {{/bullet3}}
        </p:txBody>
      </p:sp>


    </p:spTree>
  </p:cSld>
  <p:clrMapOvr>
    <a:masterClrMapping/>
  </p:clrMapOvr>
</p:sld>
''';
