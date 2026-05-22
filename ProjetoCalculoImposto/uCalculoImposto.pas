unit uCalculoImposto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrCalculoImpostoPrincipal = class(TForm)
    lbValorNota: TLabel;
    btCalcular: TButton;
    edImposto: TEdit;
    lbImposto: TLabel;
    edValorNota: TEdit;
    Label1: TLabel;
    edValorTotal: TEdit;
    procedure btCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCalculoImpostoPrincipal: TfrCalculoImpostoPrincipal;

implementation

{$R *.dfm}

procedure TfrCalculoImpostoPrincipal.btCalcularClick(Sender: TObject);
var
  wValorNota:  Currency;
  wImposto:    Currency;
  wValorTotal: Currency;
begin
  wValorNota  := StrToCurrDef(edValorNota.Text,0);
  wImposto    := StrToCurrDef(edImposto.Text,0) / 100;
  wValorTotal := wValorNota * wImposto;

  if (wValorNota = 0) and (wImposto = 0) then
    begin
       ShowMessage('Informe corretamente o Valor da Nota e do Imposto');
       edImposto.Text := '';
       edValorNota.Text := '';
       Exit;
    end
  else if wValorNota = 0 then
    begin
      ShowMessage('Informe corretamente o Valor da Nota');
      edValorNota.Text := '';
      Exit;
    end
  else if wImposto = 0 then
    begin
       ShowMessage('Informe corretamente o Imposto');
       edImposto.Text := '';
       Exit;
    end;

  edValorTotal.Text := 'R$ '+CurrToStr(wValorTotal);

  // ShowMessage('Tela Pai');
end;

end.
