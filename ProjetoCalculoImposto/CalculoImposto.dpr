program CalculoImposto;

uses
  Forms,
  uCalculoImposto in 'uCalculoImposto.pas' {frCalculoImpostoPrincipal},
  uCalculoImpostoFilho in 'uCalculoImpostoFilho.pas' {frCalculoImpostoFilho},
  uCalculoImpostoValidacao in 'uCalculoImpostoValidacao.pas' {frCalculoImpostoValidacao};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrCalculoImpostoValidacao, frCalculoImpostoValidacao);
  Application.Run;
end.
