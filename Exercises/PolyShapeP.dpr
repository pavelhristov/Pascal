program PolyShapeP;

uses
  Forms,
  PolyShapeU in 'PolyShapeU.pas' {frmPolyShape},
  MyShapesU in 'MyShapesU.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPolyShape, frmPolyShape);
  Application.Run;
end.
