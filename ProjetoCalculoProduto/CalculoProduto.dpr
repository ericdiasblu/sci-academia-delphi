program CalculoProduto;

uses
  Forms,
  uCalculoProduto in 'uCalculoProduto.pas' {frCalculoProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrCalculoProduto, frCalculoProduto);
  Application.Run;
end.
