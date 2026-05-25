program CalculoImposto;

uses
  Forms,
  uCalculoImposto in 'uCalculoImposto.pas' {frCalculoImposto};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrCalculoImposto, frCalculoImposto);
  Application.Run;
end.
