unit uProjetoEstacionamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TfrEstacionamento = class(TForm)
    Label1: TLabel;
    edCodigo: TEdit;
    Label2: TLabel;
    edPlaca: TEdit;
    Label3: TLabel;
    edMarca: TEdit;
    rgTipo: TRadioGroup;
    Label4: TLabel;
    edHoraEntrada: TEdit;
    Label5: TLabel;
    edHoraSaida: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    edValor: TEdit;
    btSalvar: TButton;
    btDemonstrarPagamentos: TButton;
    btDemonstrarTipoPagamento: TButton;
    btDemonstrarValorTotal: TButton;
    DBGrid1: TDBGrid;
    cdsEstacionamento: TClientDataSet;
    dsEstacionamento: TDataSource;
    cdsEstacionamentobdCODIGO: TIntegerField;
    cdsEstacionamentobdMARCA: TStringField;
    cdsEstacionamentobdPLACA: TStringField;
    cdsEstacionamentobdTIPO: TIntegerField;
    cdsEstacionamentobdHORAENTRADA: TCurrencyField;
    cdsEstacionamentobdHORASAIDA: TCurrencyField;
    cdsEstacionamentobdPAGAMENTO: TIntegerField;
    cdsEstacionamentobdVALOR: TCurrencyField;
    cbPagamento: TComboBox;
    btDemonstrarValorTipo: TButton;
    pnMarca: TPanel;
    edCodigoMarca: TEdit;
    lbNovaMarca: TLabel;
    btSalvarMarca: TButton;
    gdMarca: TDBGrid;
    Label10: TLabel;
    edNovaMarca: TEdit;
    btAdicionarMarca: TButton;
    btFechar: TButton;
    cdsCadastroMarca: TClientDataSet;
    dsCadastroMarca: TDataSource;
    cdsCadastroMarcabdCODIGOMARCA: TIntegerField;
    cdsCadastroMarcabdMARCA: TStringField;
    procedure btSalvarClick(Sender: TObject);
    procedure edHoraSaidaExit(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure btDemonstrarValorTotalClick(Sender: TObject);
    procedure btDemonstrarPagamentosClick(Sender: TObject);
    procedure btDemonstrarTipoPagamentoClick(Sender: TObject);
    procedure btDemonstrarValorTipoClick(Sender: TObject);
    procedure btAdicionarMarcaClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btSalvarMarcaClick(Sender: TObject);
    procedure edMarcaExit(Sender: TObject);
  private
    wCodigo: Integer;
    wMarca: String;
    wPlaca: String;
    wTipo: Integer;
    wHoraEntrada: Currency;

    wHoraSaida: Currency;

    wHoraTotal: Currency;

    wValorTipo: Currency;

    wPagamento: Integer;
    wValor: Currency;

    // Variaval da Funcao do Valor Total
    wValorTotal: Currency;

    // Variaveis da procedure de demonstrar o contagem dos tipos de pagamento
    wContadorDebito: Integer;
    wContadorCredito: Integer;
    wContadorPix: Integer;

    // Varias da procedure de demonstrar a contagem dos tipos mensal e diario
    wContadorDiario: Integer;
    wContadorMensal: Integer;

    function fValidaCampos: Boolean;

    procedure pLimparCampos;
    procedure pCadastrarEntrada;
    procedure pBucarCadastro;
    procedure pEditarCadastro;

    procedure pCalcularValor;

    function  fDemonstraValorTotal: Currency;
    procedure pDemonstrarPagamentos;
    procedure  pDemonstrarTipoPagamento;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frEstacionamento: TfrEstacionamento;

implementation

{$R *.dfm}

procedure TfrEstacionamento.btSalvarClick(Sender: TObject);
begin
  wCodigo := StrToIntDef(edCodigo.Text,0);
  wMarca := edMarca.Text;
  wPlaca := edPlaca.Text;
  wTipo := rgTipo.ItemIndex;
  wHoraEntrada := StrToCurrDef(edHoraEntrada.Text,0);

  if not fValidaCampos then
    Exit;

  cdsEstacionamento.IndexFieldNames := 'bdCODIGO';

  if not cdsEstacionamento.FindKey([edCodigo.Text]) then
    begin
      pCadastrarEntrada;
    end
  else
    begin
      pEditarCadastro;
    end;
end;

procedure TfrEstacionamento.edHoraSaidaExit(Sender: TObject);
begin
   wHoraSaida := StrToCurrDef(edHoraSaida.Text,0);

   if wHoraSaida = 0 then
    begin
      ShowMessage('Informe a Hora de Saída');
      Exit
    end;

   if wHoraSaida = wHoraEntrada then
    begin
       ShowMessage('A hora de entrada não pode ser igual a hora de saída');
       Exit;
    end;

   if wHoraSaida < wHoraEntrada then
    begin
      ShowMessage('A hora de Saída deve ser maior que a hora de Entrada');
      Exit
    end;

  cbPagamento.Enabled := True;

  pCalcularValor;

  edValor.Text := CurrToStr(wValor);
end;

procedure TfrEstacionamento.pLimparCampos;
begin
  edCodigo.text         := '';
  edPlaca.Text          := '';
  edMarca.Text          := '';
  rgTipo.ItemIndex      := -1;
  edHoraEntrada.Text    := '';
  edHoraSaida.Text      := '';
  cbPagamento.ItemIndex := -1;
  edValor.Text          := '';
end;

procedure TfrEstacionamento.edCodigoExit(Sender: TObject);
begin
   pBucarCadastro;
end;

procedure TfrEstacionamento.pCadastrarEntrada;
begin
  cdsEstacionamento.Insert;

  cdsEstacionamentobdCODIGO.AsInteger       := wCodigo;
  cdsEstacionamentobdMARCA.AsString         := wMarca;
  cdsEstacionamentobdPLACA.AsString         := wPlaca;
  cdsEstacionamentobdTIPO.AsInteger         := wTipo;
  cdsEstacionamentobdHORAENTRADA.AsCurrency := wHoraEntrada;
  cdsEstacionamentobdHORASAIDA.AsCurrency   := 0;
  cdsEstacionamentobdPAGAMENTO.AsInteger    := -1;
  cdsEstacionamentobdVALOR.AsCurrency       := 0;

  cdsEstacionamento.Post;

  pLimparCampos;
end;

procedure TfrEstacionamento.pBucarCadastro;
begin
   cdsEstacionamento.IndexFieldNames := 'bdCODIGO';

  if cdsEstacionamento.FindKey([edCodigo.Text]) then
    begin
      edCodigo.Text         := IntToStr(cdsEstacionamentobdCODIGO.AsInteger);
      edPlaca.Text          := cdsEstacionamentobdPLACA.AsString;
      edMarca.Text          := cdsEstacionamentobdMARCA.AsString;
      rgTipo.ItemIndex      := cdsEstacionamentobdTIPO.AsInteger;
      edHoraEntrada.Text    := CurrToStr(cdsEstacionamentobdHORAENTRADA.AsCurrency);
      edHoraSaida.Text      := CurrToStr(cdsEstacionamentobdHORASAIDA.AsCurrency);
      cbPagamento.ItemIndex := cdsEstacionamentobdPAGAMENTO.AsInteger;
      edValor.Text          := CurrToStr(cdsEstacionamentobdVALOR.AsCurrency);

      edHoraSaida.Enabled := True;
    end
  else
    Exit;
end;

procedure TfrEstacionamento.pEditarCadastro;
begin
  wPagamento := cbPagamento.ItemIndex;

  if wHoraSaida = 0 then
    begin
      ShowMessage('Informe a Hora de Saída');
      Exit
    end
  else if wPagamento = -1 then
    begin
      ShowMessage('Informe o Pagamento');
      Exit;
    end;

  cdsEstacionamento.Edit;

  cdsEstacionamentobdCODIGO.AsInteger       := wCodigo;
  cdsEstacionamentobdMARCA.AsString         := wMarca;
  cdsEstacionamentobdPLACA.AsString         := wPlaca;
  cdsEstacionamentobdTIPO.AsInteger         := wTipo;
  cdsEstacionamentobdHORAENTRADA.AsCurrency := wHoraEntrada;
  cdsEstacionamentobdHORASAIDA.AsCurrency   := wHoraSaida;
  cdsEstacionamentobdPAGAMENTO.AsInteger    := wPagamento;
  cdsEstacionamentobdVALOR.AsCurrency       := wValor;

  cdsEstacionamento.Post;

  pLimparCampos;

  edHoraSaida.Enabled := False;
  cbPagamento.Enabled := False;
end;

function TfrEstacionamento.fDemonstraValorTotal: Currency;
begin
  wValorTotal := 0;

  cdsEstacionamento.First;

  while not cdsEstacionamento.Eof do
    begin
      wValorTotal := wValorTotal + cdsEstacionamentobdVALOR.AsCurrency;

      cdsEstacionamento.Next;
    end;

  Result := wValorTotal;
end;

procedure TfrEstacionamento.btDemonstrarValorTotalClick(Sender: TObject);
begin
  ShowMessage('Valor Total: '+ CurrToStr(fDemonstraValorTotal));
end;

procedure TfrEstacionamento.pDemonstrarPagamentos;
begin
  wContadorPix := 0;
  wContadorCredito := 0;
  wContadorDebito := 0;

  cdsEstacionamento.First;

  while not cdsEstacionamento.Eof do
    begin
      if cdsEstacionamentobdPAGAMENTO.AsInteger = 0 then
        begin
           wContadorPix := wContadorPix + 1;
        end
      else if cdsEstacionamentobdPAGAMENTO.AsInteger = 1 then
        begin
           wContadorCredito := wContadorCredito + 1;
        end
      else if cdsEstacionamentobdPAGAMENTO.AsInteger = 2 then
        begin
           wContadorDebito := wContadorDebito + 1;
        end;

      cdsEstacionamento.Next;
    end;

   ShowMessage('Contador de PIX: '+IntToStr(wContadorPix)+#13+
                'Contador de Crédito: ' + IntToStr(wContadorCredito)+#13+
                'Contador de Débito: ' + IntToStr(wContadorDebito)
   )
end;

procedure TfrEstacionamento.pDemonstrarTipoPagamento;
begin
    wContadorDiario := 0;
    wContadorMensal := 0;

    cdsEstacionamento.First;

    while not cdsEstacionamento.Eof do
      begin
        if cdsEstacionamentobdTIPO.AsInteger = 0 then
            begin
              wContadorDiario := wContadorDiario + 1
            end
          else if cdsEstacionamentobdTIPO.AsInteger = 1 then
            begin
               wContadorMensal := wContadorMensal +1
            end;

          cdsEstacionamento.Next;
      end;

    ShowMessage('Contador de Diario: ' + IntToStr(wContadorDiario)+#13+
                'Contador de Mensal: ' + IntToStr(wContadorMensal))
end;

procedure TfrEstacionamento.btDemonstrarPagamentosClick(Sender: TObject);
begin
  pDemonstrarPagamentos;
end;

procedure TfrEstacionamento.btDemonstrarTipoPagamentoClick(
  Sender: TObject);
begin
  pDemonstrarTipoPagamento;
end;

function TfrEstacionamento.fValidaCampos: Boolean;
begin
  Result := True;
    if wCodigo = 0 then
    begin
      ShowMessage('Informe o Código');
      Result := False;
    end
  else if wPlaca = '' then
    begin
      ShowMessage('Informe a Placa');
      Result := False;
    end
  else if wMarca = '' then
    begin
      ShowMessage('Informe a Marca');
      Result := False;
    end
  else if wTipo = -1 then
    begin
      ShowMessage('Informe o Tipo');
      Result := False;
    end
  else if wHoraEntrada = 0 then
    begin
      ShowMessage('Informe a Hora de Entrada');
      Result := False;
    end;
end;

procedure TfrEstacionamento.btDemonstrarValorTipoClick(Sender: TObject);
var
  wContador: Integer;
  wTexto: String;
begin
  wTexto := '';

  if wHoraSaida <> 0 then
    begin
        for wContador:= 0 to rgTipo.Items.Count - 1 do
          begin
            rgTipo.ItemIndex := wContador;
            pCalcularValor;

            if wContador = 0 then
              begin
                wTexto := wTexto + 'Valor diária: '+CurrToStr(wValor)+#13;
              end
            else if wContador = 1 then
              begin
                 wTexto := wTexto + 'Valor mensal: '+CurrToStr(wValor)+#13;
              end;
          end;

        ShowMessage(wTexto);
    end
  else
    ShowMessage('Informe a Hora de Saída')

end;

procedure TfrEstacionamento.pCalcularValor;
begin
  if rgTipo.ItemIndex = 0 then
    begin
      wValorTipo := 10;
    end
  else if rgTipo.ItemIndex = 1 then
    begin
      wValorTipo := 20;
    end;
    
  wHoraTotal := wHoraSaida - wHoraEntrada;
  wValor := wHoraTotal * wValorTipo;

end;

procedure TfrEstacionamento.btAdicionarMarcaClick(Sender: TObject);
begin
  pnMarca.Left := 130;
  pnMarca.Top := 50;
end;

procedure TfrEstacionamento.btFecharClick(Sender: TObject);
begin
  pnMarca.Left := 656;
  pnMarca.Top := 32;
end;

procedure TfrEstacionamento.btSalvarMarcaClick(Sender: TObject);
var
  wCodigoMarca: Integer;
  wNovaMarca: String;
begin
  wCodigoMarca := StrToIntDef(edCodigoMarca.Text,0);
  wNovaMarca := edNovaMarca.Text;

  if wCodigoMarca = 0 then
    begin
       ShowMessage('Informe o código');
       Exit;
    end
  else if wNovaMarca = '' then
    begin
      ShowMessage('Informe a Marca');
      Exit;
    end;

  cdsCadastroMarca.IndexFieldNames := 'bdCODIGOMARCA';

  if not cdsCadastroMarca.FindKey([edCodigoMarca.Text]) then
    begin
      cdsCadastroMarca.Insert;
    end
  else
    begin
      ShowMessage('Código já cadastrado');
      Exit;
    end;

  cdsCadastroMarcabdCODIGOMARCA.AsInteger := wCodigoMarca;
  cdsCadastroMarcabdMARCA.AsString := wNovaMarca;
end;

procedure TfrEstacionamento.edMarcaExit(Sender: TObject);
begin

  if not cdsCadastroMarca.IsEmpty then
    begin
    cdsCadastroMarca.First;

    while not cdsCadastroMarca.Eof do
      begin
        if cdsCadastroMarcabdMARCA.AsString = edMarca.Text then
          begin
           Exit;
          end
        else
          begin
            ShowMessage('Essa marca não está registrada');
            wMarca := '';
            Exit;
          end;

        cdsCadastroMarca.Next;
      end;
    end
  else
    begin
       ShowMessage('Não há nenhum registro de marcas cadastrado')
    end;
end;

end.
