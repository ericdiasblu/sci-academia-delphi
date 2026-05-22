program CalculoImposto;

uses
  Forms,
  uCalculoImposto in 'uCalculoImposto.pas' {frCalculoImpostoPrincipal},
  uCalculoImpostoFilho in 'uCalculoImpostoFilho.pas' {frCalculoImpostoFilho},
  uCalculoImpostoValidacao in 'uCalculoImpostoValidacao.pas' {frCalculoImpostoValidacao},
  uCalculoImpostoComboRadio in 'uCalculoImpostoComboRadio.pas' {frCalculoImpostoComboRadio};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrCalculoImpostoComboRadio, frCalculoImpostoComboRadio);
  Application.Run;
end.
