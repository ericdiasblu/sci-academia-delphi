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
  wValorNota  := StrToCurr(edValorNota.Text);
  wImposto    := StrToCurr(edImposto.Text) / 100;
  wValorTotal := wValorNota * wImposto;

  edValorTotal.Text := CurrToStr(wValorTotal);

  ShowMessage('Tela Pai');
end;

end.
