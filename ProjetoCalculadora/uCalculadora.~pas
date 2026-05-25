unit uCalculadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edValorUm: TEdit;
    edValorDois: TEdit;
    btAdicao: TButton;
    Button1: TButton;
    btMultiplicacao: TButton;
    btDivisao: TButton;
    edResultado: TEdit;
    lbResultado: TLabel;
    lbValorUm: TLabel;
    lbValorDois: TLabel;
    Button2: TButton;
    procedure btAdicaoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btMultiplicacaoClick(Sender: TObject);
    procedure btDivisaoClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    wValorUm: Currency;
    wValorDois: Currency;
    wResultado: Currency;

    procedure pAtribuirValores;
    procedure pCalcularResultado;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btAdicaoClick(Sender: TObject);
begin
  pAtribuirValores;

  wResultado:= wValorUm + wValorDois;

  pCalcularResultado;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  pAtribuirValores;

  wResultado:= wValorUm - wValorDois;

  pCalcularResultado;
end;

procedure TForm1.btMultiplicacaoClick(Sender: TObject);
begin
   pAtribuirValores;

   wResultado:= wValorUm * wValorDois;

   pCalcularResultado;
end;

procedure TForm1.btDivisaoClick(Sender: TObject);
begin
  pAtribuirValores;

  wResultado:= wValorUm / wValorDois;

  pCalcularResultado;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  edValorUm.Text := ' ';
  edValorDois.Text := ' ';
  edResultado.Text := ' ';
end;

procedure TForm1.pAtribuirValores;
begin
      wValorUm:= StrToCurr(edValorUm.Text);
      wValorDois:=  StrToCurr(edValorDois.Text);
end;

procedure TForm1.pCalcularResultado;
begin
    edResultado.Text := CurrToStr(wResultado);
end;

end.
