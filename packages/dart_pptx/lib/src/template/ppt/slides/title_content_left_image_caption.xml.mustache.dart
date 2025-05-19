const template = r'''
<p:sld xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:p="http://schemas.openxmlformats.org/presentationml/2006/main">
  <p:cSld name="{{name}}">
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

      <!-- Title: full width at the top -->
      <p:sp>
        <p:nvSpPr>
          <p:cNvPr id="2" name="Title"/>
          <p:cNvSpPr>
            <a:spLocks noGrp="1"/>
          </p:cNvSpPr>
          <p:nvPr>
            <p:ph type="title"/>
          </p:nvPr>
        </p:nvSpPr>
        <p:spPr>
          <a:xfrm>
            <a:off x="190500" y="190500"/>
            <a:ext cx="24003000" cy="1429000"/>
          </a:xfrm>
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

      <!-- Content: left half, below title -->
      <p:sp>
        <p:nvSpPr>
          <p:cNvPr id="3" name="Content"/>
          <p:cNvSpPr>
            <a:spLocks noGrp="1"/>
          </p:cNvSpPr>
          <p:nvPr>
            <p:ph type="body"  idx="21"/>
          </p:nvPr>
        </p:nvSpPr>
        <p:spPr>
          <a:xfrm>
            <a:off x="190500" y="1090500"/>
            <a:ext cx="5232614" cy="2832614"/>
          </a:xfrm>
          <a:prstGeom prst="rect">
            <a:avLst/>
          </a:prstGeom>
        </p:spPr>
        <p:txBody>
          <a:bodyPr wrap="square" anchor="t" anchorCtr="0"/>
          <a:defPPr algn="l">
            <a:defRPr sz="1400"/>
          </a:defPPr>
            {{#content}}
            {{>text-value}}
            {{/content}}
        </p:txBody>
      </p:sp>

      <!-- First Image: right half, top -->
      <p:pic>
        <p:nvPicPr>
          <p:cNvPr id="4" name="Image 1"/>
          <p:cNvPicPr>
            <a:picLocks noChangeAspect="1"/>
          </p:cNvPicPr>
          <p:nvPr>
            <p:ph type="pic" idx="1"/>
          </p:nvPr>
        </p:nvPicPr>
        <p:blipFill>
          <a:blip r:embed="rId{{imageId1}}"/>
          <a:stretch>
            <a:fillRect/>
          </a:stretch>
        </p:blipFill>
        <p:spPr>
          <a:xfrm>
            <a:off x="6090500" y="1390500"/>
            <a:ext cx="2019000" cy="1619000"/>
          </a:xfrm>
          <a:prstGeom prst="rect">
            <a:avLst/>
          </a:prstGeom>
        </p:spPr>
      </p:pic>

      <!-- First Image Caption -->
      <p:sp>
        <p:nvSpPr>
          <p:cNvPr id="5" name="Caption 1"/>
          <p:cNvSpPr>
            <a:spLocks noGrp="1"/>
          </p:cNvSpPr>
          <p:nvPr>
            <p:ph type="body" sz="quarter" idx="2"/>
          </p:nvPr>
        </p:nvSpPr>
        <p:spPr>
          <a:xfrm>
          
            <a:off x="6090500" y="3090500"/>

            <a:ext cx="2019000" cy="619000"/>
          </a:xfrm>
          <a:prstGeom prst="rect">
            <a:avLst/>
          </a:prstGeom>
        </p:spPr>
        <p:txBody>
          <a:bodyPr wrap="square" anchor="t" anchorCtr="0"/>
          <a:defPPr algn="l">
            <a:defRPr sz="800"/>
          </a:defPPr>
          {{#caption}}
          {{>text-value}}
          {{/caption}}
        </p:txBody>
      </p:sp>

    </p:spTree>
  </p:cSld>
  <p:clrMapOvr>
    <a:masterClrMapping/>
  </p:clrMapOvr>
</p:sld>
''';
