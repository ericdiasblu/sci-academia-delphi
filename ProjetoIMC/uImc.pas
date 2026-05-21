unit uImc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lbPeso: TLabel;
    edPeso: TEdit;
    lbAltura: TLabel;
    edAltura: TEdit;
    lbValorTotal: TLabel;
    edValorTotal: TEdit;
    btCalcular: TButton;
    lbResultado: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    procedure btCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btCalcularClick(Sender: TObject);
var
  wPeso: Currency;
  wAltura: Currency;
  wValorTotal: Currency;
  wResultado: String;
begin
  if (edPeso.Text = '') or (edPeso.Text = '0') then
    begin
      ShowMessage('Informe o Peso');
      Exit;
    end
  else if (edAltura.Text = '') or (edAltura.Text = '0') then
    begin
      ShowMessage('Informe a Altura');
      Exit;
    end;

  wPeso := StrToCurr(edPeso.Text);
  wAltura := StrToCurr(edAltura.Text);

  wAltura := wAltura / 100;

  wValorTotal := wPeso / (wAltura*wAltura);

  edValorTotal.Text := CurrToStr(wValorTotal);

  if wValorTotal < 18.5 then
    begin
      lbResultado.Caption := 'Baixo peso';
      lbResultado.Font.Color := clPurple;
    end;

  if (wValorTotal >= 18.5) and (wValorTotal < 25) then
    begin
      lbResultado.Caption := 'Peso normal';
      lbResultado.Font.Color := clGreen;
    end;

  if (wValorTotal >= 25) and (wValorTotal < 30) then
    begin
      lbResultado.Caption := 'Sobrepeso';
      lbResultado.Font.Color := clRed;
    end;

  if (wValorTotal >= 30) and (wValorTotal < 35) then
    begin
      lbResultado.Caption := 'Sobrepeso 1';
      lbResultado.Font.Color := clRed;
    end;

  if (wValorTotal >= 35) and (wValorTotal < 40) then
    begin
      lbResultado.Caption := 'Sobrepeso 2';
      lbResultado.Font.Color := clRed;
    end;

  if (wValorTotal >= 40) then
    begin
      lbResultado.Caption := 'Sobrepeso 3';
      lbResultado.Font.Color := clRed;
    end;

end;

end.
