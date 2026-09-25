model EXP3_3
  annotation(__MWORKS(version="26.6.0"),Diagram(coordinateSystem(extent={{-100,-100},{100,100}},
grid={2,2})));
  Modelica.Blocks.Sources.Step step(height=2) 
    annotation (Placement(transformation(origin={-198.014,60},
extent={{-10,-10},{10,10}})));
  TYElectrical.BasicComponents.IdealBasicComponents.Resistor resistor(R(displayUnit="kOhm")=10000) 
    annotation (Placement(transformation(origin={28,60},
extent={{-10,-10},{10,10}})));
  Modelica.Electrical.Analog.Basic.Ground ground 
    annotation (Placement(transformation(origin={-132,105.9864},
extent={{-10,-10},{10,10}},
rotation=180)));
  TYElectrical.BasicComponents.IdealBasicComponents.Op_Amp opAmp 
    annotation (Placement(transformation(origin={-56,34},
extent={{-10,-10},{10,10}})));
  TYElectrical.BasicComponents.IdealBasicComponents.Capacitor capacitor 
    annotation (Placement(transformation(origin={-56,60},
extent={{-10,-10},{10,10}})));
  TYElectrical.BasicComponents.IdealBasicComponents.Op_Amp opAmp1 
    annotation (Placement(transformation(origin={28,28.0136},
extent={{-10,-10},{10,10}})));
  TYElectrical.BasicComponents.IdealBasicComponents.Resistor resistor1(R(displayUnit="kOhm")=2e5) 
    annotation (Placement(transformation(origin={-104,39.9864},
extent={{-10,-10},{10,10}})));
  TYElectrical.BasicComponents.IdealBasicComponents.Resistor resistor2(R(displayUnit="kOhm")=2e5) 
    annotation (Placement(transformation(origin={-72,-14},
extent={{-10,-10},{10,10}},
rotation=90)));
  Modelica.Electrical.Analog.Basic.Ground ground1 
    annotation (Placement(transformation(origin={-71.9458,-52},
extent={{-10,-10},{10,10}})));
  TYElectrical.BasicComponents.IdealBasicComponents.Resistor resistor3(R(displayUnit="kOhm")=10000) 
    annotation (Placement(transformation(origin={-14,34},
extent={{-10,-10},{10,10}})));
  TYElectrical.BasicComponents.IdealBasicComponents.Resistor resistor4(R(displayUnit="kOhm")=10000) 
    annotation (Placement(transformation(origin={0,-14},
extent={{-10,-10},{10,10}},
rotation=90)));
  Modelica.Electrical.Analog.Basic.Ground ground2 
    annotation (Placement(transformation(origin={0.0542065,-52},
extent={{-10,-10},{10,10}})));
  TYElectrical.Sensors.VoltageSensor voltageSensor 
    annotation (Placement(transformation(origin={70,28.0136},
extent={{-10,-10},{10,10}})));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage 
    annotation (Placement(transformation(origin={-132,60},
extent={{-10,-10},{10,10}},
rotation=90)));
  Modelica.Blocks.Interfaces.RealOutput y 
    annotation (Placement(transformation(origin={122,34},
extent={{-10,-10},{10,10}},
rotation=180)));
equation
  connect(opAmp.in_n, capacitor.p) 
  annotation(Line(origin={-67,50},
  points={{1,-10},{-2,-10},{-2,9.94579},{0.897638,9.94579}},
  color={0,0,255}));
  connect(opAmp.out, capacitor.n) 
  annotation(Line(origin={-44,47},
  points={{-2,-13},{1,-13},{1,13.0136},{-1.8712,13.0136}},
  color={0,0,255}));
  connect(resistor1.n, opAmp.in_n) 
  annotation(Line(origin={-80,40},
  points={{-13.8712,0},{14,0}},
  color={0,0,255}));
  connect(opAmp.in_p, resistor2.n) 
  annotation(Line(origin={-69,12},
  points={{3,16},{-3.01357,16},{-3.01357,-15.8712}},
  color={0,0,255}));
  connect(resistor2.p, ground1.p) 
  annotation(Line(origin={-72,-33},
  points={{0.0542065,8.89764},{0.0542065,-9}},
  color={0,0,255}));
  connect(opAmp.out, resistor3.p) 
  annotation(Line(origin={-35,34},
  points={{-11,0},{10.8976,-0.0542065}},
  color={0,0,255}));
  connect(opAmp1.in_n, resistor3.n) 
  annotation(Line(origin={7,34},
  points={{11,0.0135696},{-10.8712,0.0135696}},
  color={0,0,255}));
  connect(opAmp1.in_p, resistor4.n) 
  annotation(Line(origin={9,9},
  points={{9,13.0136},{-9.01357,13.0136},{-9.01357,-12.8712}},
  color={0,0,255}));
  connect(resistor4.p, ground2.p) 
  annotation(Line(origin={0,-33},
  points={{0.0542065,8.89764},{0.0542065,-9}},
  color={0,0,255}));
  connect(opAmp1.out, voltageSensor.p) 
  annotation(Line(origin={49,28},
  points={{-11,0.0135696},{10.8976,-0.0406369}},
  color={0,0,255}));
  connect(step.y, signalVoltage.v) 
  annotation(Line(origin={-181.014,42.9864},
points={{-6,17.0136},{37.014,17.0136}},
color={0,0,127}));
  connect(signalVoltage.n, ground.p) 
  annotation(Line(origin={-126.014,31.9864},
points={{-5.986,38.0136},{-5.986,64}},
color={0,0,255}));
  connect(resistor1.p, signalVoltage.p) 
  annotation(Line(origin={-123,45},
  points={{8.89764,-5.06781},{-9,-5.06781},{-9,5}},
  color={0,0,255}));
  connect(voltageSensor.V, y) 
  annotation(Line(origin={95,31},
points={{-13.6,3.6136},{27,3.6136},{27,3}},
color={0,0,127}));
  connect(resistor.p, opAmp1.in_n) 
  annotation(Line(origin={16,47},
  points={{1.89764,12.9458},{-1.10236,12.9458},{-1.10236,-12.9864},{2,-12.9864}},
  color={0,0,255}));
  connect(opAmp1.out, resistor.n) 
  annotation(Line(origin={40,44},
  points={{-2,-15.9864},{1,-15.9864},{1,16.0136},{-1.8712,16.0136}},
  color={0,0,255}));
  connect(voltageSensor.n, ground2.p) 
  annotation(Line(origin={45,-7},
  points={{35.1288,35.0272},{45,35.0272},{45,-25},{-44.9458,-25},{-44.9458,-35}},
  color={0,0,255}));

end EXP3_3;