unit uCalculoProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrCalculoProduto = class(TForm)
    gbDadosProduto: TGroupBox;
    lbCodigoProduto: TLabel;
    edCodigoProduto: TEdit;
    lbDescricao: TLabel;
    edDescricao: TEdit;
    lbQuantidade: TLabel;
    edQuantidade: TEdit;
    edValorUnitario: TEdit;
    Label1: TLabel;
    ckTributado: TCheckBox;
    edAliquota: TEdit;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    edValorTotal: TEdit;
    Label3: TLabel;
    edValorIcms: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure ckTributadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCalculoProduto: TfrCalculoProduto;

implementation

{$R *.dfm}

procedure TfrCalculoProduto.Button1Click(Sender: TObject);
var
  wCodigoProduto: Integer;
  wDescricao: String;

  wQuantidade: Integer;
  wValorUnitario: Currency;
  wValorTotal: Currency;

  wAliquotaIcms: Currency;
  wValorIcms: Currency;
begin
  if edCodigoProduto.Text = ''  then
    begin
       ShowMessage('Informe o código do produto');
       Exit;
    end
  else if edDescricao.Text = '' then
    begin
      ShowMessage('Informe a descrição');
      Exit;
    end
  else if edQuantidade.Text = '' then
    begin
      ShowMessage('Informe a quantidade');
      Exit;
    end
  else if edValorUnitario.Text = '' then
    begin
      ShowMessage('Informe o Valor Unitário');
      Exit;
    end;

  wCodigoProduto := StrToInt(edCodigoProduto.Text);
  wDescricao := edDescricao.Text;
  wQuantidade := StrToInt(edQuantidade.Text);
  wValorUnitario := StrToCurr(edValorUnitario.Text);

  wValorTotal := wQuantidade * wValorUnitario;

  edValorTotal.Text := CurrToStr(wValorTotal);

  if (ckTributado.Checked = True) and (edAliquota.Text <> '') then
    begin
      wAliquotaIcms := StrToCurr(edAliquota.Text);
      wValorIcms := wValorTotal * wAliquotaIcms / 100;
      edValorIcms.Text := CurrToStr(wValorIcms);
    end
  else if (ckTributado.Checked = True) and (edAliquota.Text = '') then
    begin
      ShowMessage('Informe o valor da alíquota');
      Exit;
    end
  else if ckTributado.Checked = False then
    begin
      edValorIcms.Text := '';
      edAliquota.Text := '';
    end
end;

procedure TfrCalculoProduto.ckTributadoClick(Sender: TObject);
begin
  if ckTributado.Checked = True then
    edAliquota.Enabled := True
  else
    edAliquota.Enabled := False;
end;

end.
