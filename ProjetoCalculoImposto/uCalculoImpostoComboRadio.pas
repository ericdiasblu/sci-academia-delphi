unit uCalculoImpostoComboRadio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCalculoImposto, StdCtrls, ExtCtrls;

type
  TfrCalculoImpostoComboRadio = class(TfrCalculoImpostoPrincipal)
    Label2: TLabel;
    cbEstado: TComboBox;
    RadioGroup1: TRadioGroup;
    procedure cbEstadoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCalculoImpostoComboRadio: TfrCalculoImpostoComboRadio;

implementation

{$R *.dfm}

procedure TfrCalculoImpostoComboRadio.cbEstadoChange(Sender: TObject);

begin
  inherited;
  if (cbEstado.ItemIndex = 0) then
    begin
      edImposto.Text := '5';
    end
  else if (cbEstado.ItemIndex = 1) then
    begin
      edImposto.Text := '7';
    end
  else if (cbEstado.ItemIndex = 2) then
    begin
      edImposto.Text := '10';
    end
end;

end.
