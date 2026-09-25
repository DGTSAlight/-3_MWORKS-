model EXP3_2
  annotation(__MWORKS(version="26.6.0"),Diagram(coordinateSystem(extent={{-100,-100},{100,100}},
grid={2,2})));
  Modelica.Blocks.Sources.Step step(height=2) 
    annotation (Placement(transformation(origin={-94,8},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Math.Add add(k2=-1) 
    annotation (Placement(transformation(origin={-46,2},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.TransferFunction transferFunction(a={1.02,0}) 
    annotation (Placement(transformation(origin={2,2},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.TransferFunction transferFunction1(b={1},a={0.1,1}) 
    annotation (Placement(transformation(origin={42,2},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.TransferFunction transferFunction2(b={5.1},a={0.51,1}) 
    annotation (Placement(transformation(origin={78,2},
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Interaction.Show.RealValue realValue 
    annotation (Placement(transformation(origin={132,2},
extent={{-10,-10},{10,10}})));
  equation
  connect(step.y, add.u1) 
  annotation(Line(origin={-70,8},
  points={{-13,0},{12,0}},
  color={0,0,127}));
  connect(add.y, transferFunction.u) 
  annotation(Line(origin={-22,2},
  points={{-13,0},{12,0}},
  color={0,0,127}));
  connect(transferFunction.y, transferFunction1.u) 
  annotation(Line(origin={22,2},
  points={{-9,0},{8,0}},
  color={0,0,127}));
  connect(transferFunction1.y, transferFunction2.u) 
  annotation(Line(origin={60,2},
  points={{-7,0},{6,0}},
  color={0,0,127}));
  connect(transferFunction2.y, add.u2) 
  annotation(Line(origin={15,-15},
points={{74,17},{87,17},{87,-17},{-77,-17},{-77,11},{-73,11}},
color={0,0,127}));
  connect(realValue.numberPort, transferFunction2.y) 
  annotation(Line(origin={105,2},
  points={{15.5,0},{-16,0}},
  color={0,0,127}));
  end EXP3_2;