unit uCadastroPessoas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DB, DBClient;

type
  TfrCadastroPessoas = class(TForm)
    lbCodigo: TLabel;
    edCodigo: TEdit;
    lbCpf: TLabel;
    edCpf: TEdit;
    rgSexo: TRadioGroup;
    lbEstadoCivil: TLabel;
    cbEstadoCivil: TComboBox;
    lbNome: TLabel;
    edNome: TEdit;
    lbEndereco: TLabel;
    edEndereco: TEdit;
    lbTelefone: TLabel;
    edTelefone: TEdit;
    btSalvar: TButton;
    DBGrid1: TDBGrid;
    cdsCadastroPessoas: TClientDataSet;
    dsCadastroPessoas: TDataSource;
    cdsCadastroPessoasbdCODIGO: TIntegerField;
    cdsCadastroPessoasbdCPF: TStringField;
    cdsCadastroPessoasbdSEXO: TIntegerField;
    cdsCadastroPessoasbdESTADOCIVIL: TIntegerField;
    cdsCadastroPessoasbdNOME: TStringField;
    cdsCadastroPessoasbdENDERECO: TStringField;
    cdsCadastroPessoasbdTELEFONE: TStringField;
    procedure btSalvarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure edCodigoExit(Sender: TObject);
  private
    { Private declarations }
    wCodigo: Integer;
    wCpf: String;
    wSexoIndex: Integer;
    wEstadoCivilIndex: Integer;
    wNome: String;
    wEndereco: String;
    wTelefone: String;

    function fValidarCampos: Boolean;

    procedure pRealizarCadastro;
    procedure pBuscarCadastro;
    procedure pEditarCadastro;

    procedure pAtribuirValores;

    procedure pLimparCampos;
  public
    { Public declarations }
  end;

var
  frCadastroPessoas: TfrCadastroPessoas;

implementation

{$R *.dfm}

procedure TfrCadastroPessoas.btSalvarClick(Sender: TObject);
begin
  wCodigo           := StrToIntDef(edCodigo.Text,0);
  wCpf              := edCpf.Text;
  wSexoIndex        := rgSexo.ItemIndex;
  wEstadoCivilIndex := cbEstadoCivil.ItemIndex;
  wNome             := edNome.Text;
  wEndereco         := edEndereco.Text;
  wTelefone         := edTelefone.Text;

  if not fValidarCampos then
    Exit;

  cdsCadastroPessoas.IndexFieldNames := 'bdCODIGO';

  if not cdsCadastroPessoas.FindKey([wCodigo]) then
    begin
       pRealizarCadastro;
    end
  else
    begin
      pEditarCadastro;
    end;
end;

procedure TfrCadastroPessoas.DBGrid1CellClick(Column: TColumn);
begin
   cdsCadastroPessoas.IndexFieldNames := 'bdCODIGO';
   pBuscarCadastro;
end;

function TfrCadastroPessoas.fValidarCampos: Boolean;
begin
   if wCodigo = 0 then
    begin
      ShowMessage('Informe o código');
      Result := false;
    end
  else if wCpf = '' then
    begin
      ShowMessage('Informe o CPF');
      Result := false;
    end
  else if wSexoIndex = -1 then
    begin
      ShowMessage('Informe o Sexo');
      Result := false;
    end
  else if wEstadoCivilIndex = -1 then
    begin
      ShowMessage('Informe o Estado Civil');
      Result := false;
    end
  else if wNome = '' then
    begin
      ShowMessage('Informe o Nome');
      Result := false;
    end
  else if wEndereco = '' then
    begin
      ShowMessage('Informe o Endereço');
      Result := false;
    end
  else if wTelefone = '' then
    begin
      ShowMessage('Informe o Telefone');
      Result := false;
    end;
end;

procedure TfrCadastroPessoas.pAtribuirValores;
begin
  cdsCadastroPessoasbdCODIGO.AsInteger      := wCodigo;
  cdsCadastroPessoasbdCPF.AsString          := wCpf;
  cdsCadastroPessoasbdSEXO.AsInteger        := wSexoIndex;
  cdsCadastroPessoasbdESTADOCIVIL.AsInteger := wEstadoCivilIndex;
  cdsCadastroPessoasbdNOME.AsString         := wNome;
  cdsCadastroPessoasbdENDERECO.AsString     := wEndereco;
  cdsCadastroPessoasbdTELEFONE.AsString     := wTelefone;
end;

procedure TfrCadastroPessoas.pBuscarCadastro;
begin
  edCodigo.Text           := cdsCadastroPessoasbdCODIGO.Text;
  edCpf.Text              := cdsCadastroPessoasbdCPF.Text;
  rgSexo.ItemIndex        := cdsCadastroPessoasbdSEXO.Value;
  cbEstadoCivil.ItemIndex := cdsCadastroPessoasbdESTADOCIVIL.Value;
  edNome.text             := cdsCadastroPessoasbdNOME.Text;
  edEndereco.Text         := cdsCadastroPessoasbdENDERECO.Text;
  edTelefone.Text         := cdsCadastroPessoasbdTELEFONE.Text;
end;

procedure TfrCadastroPessoas.pEditarCadastro;
begin
  cdsCadastroPessoas.IndexFieldNames := 'bdCODIGO';

  cdsCadastroPessoas.Edit;

  pAtribuirValores;

  cdsCadastroPessoas.Post;

  pLimparCampos;
end;

procedure TfrCadastroPessoas.pLimparCampos;
begin
  edCodigo.Text           := '';
  edCpf.Text              := '';
  rgSexo.ItemIndex        := -1;
  cbEstadoCivil.ItemIndex := -1;
  edNome.text             := '';
  edEndereco.Text         := '';
  edTelefone.Text         := '';
end;

procedure TfrCadastroPessoas.pRealizarCadastro;
begin
  cdsCadastroPessoas.Insert;

  pAtribuirValores;

  cdsCadastroPessoas.Post;

  pLimparCampos;
end;

procedure TfrCadastroPessoas.edCodigoExit(Sender: TObject);
begin
  cdsCadastroPessoas.IndexFieldNames := 'bdCODIGO';

  if cdsCadastroPessoas.FindKey([edCodigo.Text]) then
     begin
      pBuscarCadastro;
     end
  else
    Exit;


end;

end.
