<Qucs Schematic 25.1.2>
<Properties>
  <View=103,138,1142,777,1.5274,0,0>
  <Grid=10,10,1>
  <DataSet=rf_filter_sim.dat>
  <DataDisplay=rf_filter_sim.dpl>
  <OpenDisplay=0>
  <Script=rf_filter_sim.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 1 300 440 0 0 0 0>
  <Pac P1 1 300 330 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <Pac P2 1 660 330 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <L L1 1 360 230 -26 10 0 0 "39.8 nH" 1 "" 0>
  <C C1 1 450 230 -26 17 0 0 "0.106 pF" 1 "" 0 "neutral" 0>
  <L L2 1 560 290 -51 -26 0 3 "0.265 nH" 1 "" 0>
  <C C2 1 560 390 -54 -26 0 3 "15.92 pF" 1 "" 0 "neutral" 0>
  <.SP SP1 1 300 470 0 68 0 0 "lin" 1 "2 GHz" 1 "3 GHz" 1 "201" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
</Components>
<Wires>
  <300 440 560 440 "" 0 0 0 "">
  <300 360 300 440 "" 0 0 0 "">
  <560 440 660 440 "" 0 0 0 "">
  <660 360 660 440 "" 0 0 0 "">
  <560 230 660 230 "" 0 0 0 "">
  <660 230 660 300 "" 0 0 0 "">
  <300 230 300 300 "" 0 0 0 "">
  <300 230 330 230 "" 0 0 0 "">
  <480 230 560 230 "" 0 0 0 "">
  <390 230 420 230 "" 0 0 0 "">
  <560 230 560 260 "" 0 0 0 "">
  <560 420 560 440 "" 0 0 0 "">
  <560 320 560 360 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 480 690 338 224 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.v(s_2_1)@ac.v(s_1_1)" #0000ff 1 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
