object frEstacionamento: TfrEstacionamento
  Left = 106
  Top = 149
  Width = 656
  Height = 431
  Caption = 'Estacionamento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 208
    Top = 24
    Width = 27
    Height = 13
    Caption = 'Placa'
  end
  object Label3: TLabel
    Left = 408
    Top = 24
    Width = 30
    Height = 13
    Caption = 'Marca'
  end
  object Label4: TLabel
    Left = 224
    Top = 72
    Width = 62
    Height = 13
    Caption = 'Hora entrada'
  end
  object Label5: TLabel
    Left = 225
    Top = 112
    Width = 53
    Height = 13
    Caption = 'Hora sa'#237'da'
  end
  object Label6: TLabel
    Left = 381
    Top = 72
    Width = 54
    Height = 13
    Caption = 'Pagamento'
  end
  object Label7: TLabel
    Left = 411
    Top = 112
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object edCodigo: TEdit
    Left = 72
    Top = 20
    Width = 121
    Height = 21
    TabOrder = 0
    OnExit = edCodigoExit
  end
  object edPlaca: TEdit
    Left = 248
    Top = 20
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edMarca: TEdit
    Left = 448
    Top = 20
    Width = 121
    Height = 21
    TabOrder = 1
    OnExit = edMarcaExit
  end
  object rgTipo: TRadioGroup
    Left = 32
    Top = 64
    Width = 161
    Height = 65
    Caption = 'Tipo'
    Columns = 2
    Items.Strings = (
      'Di'#225'ria'
      'Mensal')
    TabOrder = 3
  end
  object edHoraEntrada: TEdit
    Left = 304
    Top = 68
    Width = 65
    Height = 21
    TabOrder = 4
  end
  object edHoraSaida: TEdit
    Left = 304
    Top = 108
    Width = 65
    Height = 21
    Enabled = False
    TabOrder = 5
    OnExit = edHoraSaidaExit
  end
  object edValor: TEdit
    Left = 448
    Top = 108
    Width = 161
    Height = 21
    Enabled = False
    TabOrder = 7
  end
  object btSalvar: TButton
    Left = 32
    Top = 160
    Width = 59
    Height = 25
    Caption = 'Salvar'
    TabOrder = 8
    OnClick = btSalvarClick
  end
  object btDemonstrarPagamentos: TButton
    Left = 112
    Top = 160
    Width = 129
    Height = 25
    Caption = 'Demonstrar Pagamentos'
    TabOrder = 9
    OnClick = btDemonstrarPagamentosClick
  end
  object btDemonstrarTipoPagamento: TButton
    Left = 264
    Top = 160
    Width = 161
    Height = 25
    Caption = 'Demonstrar Tipo de Pagamento'
    TabOrder = 10
    OnClick = btDemonstrarTipoPagamentoClick
  end
  object btDemonstrarValorTotal: TButton
    Left = 448
    Top = 160
    Width = 153
    Height = 25
    Caption = 'Demonstrar Valor Total'
    TabOrder = 11
    OnClick = btDemonstrarValorTotalClick
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 240
    Width = 569
    Height = 120
    DataSource = dsEstacionamento
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'bdCODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdPLACA'
        Title.Alignment = taCenter
        Title.Caption = 'Placa'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdMARCA'
        Title.Alignment = taCenter
        Title.Caption = 'Marca'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdTIPO'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdHORAENTRADA'
        Title.Alignment = taCenter
        Title.Caption = 'Hora de Entrada'
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdHORASAIDA'
        Title.Alignment = taCenter
        Title.Caption = 'Hora de Sa'#237'da'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdPAGAMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Pagamento'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdVALOR'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Width = 96
        Visible = True
      end>
  end
  object cbPagamento: TComboBox
    Left = 448
    Top = 68
    Width = 161
    Height = 21
    Enabled = False
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'PIX'
      'Cart'#227'o de Cr'#233'dito'
      'Cart'#227'o de D'#233'bito')
  end
  object btDemonstrarValorTipo: TButton
    Left = 448
    Top = 200
    Width = 153
    Height = 25
    Caption = 'Demonstrar Valor do Tipo'
    TabOrder = 13
    OnClick = btDemonstrarValorTipoClick
  end
  object pnMarca: TPanel
    Left = 656
    Top = 32
    Width = 329
    Height = 313
    BevelWidth = 2
    BorderWidth = 1
    BorderStyle = bsSingle
    TabOrder = 14
    object lbNovaMarca: TLabel
      Left = 32
      Top = 28
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 35
      Top = 60
      Width = 30
      Height = 13
      Caption = 'Marca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edCodigoMarca: TEdit
      Left = 80
      Top = 24
      Width = 209
      Height = 21
      TabOrder = 0
    end
    object btSalvarMarca: TButton
      Left = 216
      Top = 88
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 1
      OnClick = btSalvarMarcaClick
    end
    object gdMarca: TDBGrid
      Left = 16
      Top = 128
      Width = 281
      Height = 121
      DataSource = dsCadastroMarca
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'bdCODIGOMARCA'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bdMARCA'
          Title.Alignment = taCenter
          Title.Caption = 'Marca'
          Visible = True
        end>
    end
    object edNovaMarca: TEdit
      Left = 80
      Top = 56
      Width = 209
      Height = 21
      TabOrder = 3
    end
    object btFechar: TButton
      Left = 224
      Top = 264
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 4
      OnClick = btFecharClick
    end
  end
  object btAdicionarMarca: TButton
    Left = 576
    Top = 18
    Width = 33
    Height = 25
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    OnClick = btAdicionarMarcaClick
  end
  object cdsEstacionamento: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'bdCODIGO'
        DataType = ftInteger
      end
      item
        Name = 'bdMARCA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'bdPLACA'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'bdTIPO'
        DataType = ftInteger
      end
      item
        Name = 'bdHORAENTRADA'
        DataType = ftCurrency
      end
      item
        Name = 'bdHORASAIDA'
        DataType = ftCurrency
      end
      item
        Name = 'bdPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'bdVALOR'
        DataType = ftCurrency
      end>
    IndexDefs = <
      item
        Name = 'iCODIGO'
        Fields = 'bdCODIGO'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'iCODIGO'
    Params = <>
    StoreDefs = True
    Left = 112
    Top = 192
    Data = {
      FC0000009619E0BD010000001800000008000000000003000000FC0008626443
      4F4449474F04000100000000000762644D415243410100490000000100055749
      445448020002001E00076264504C414341010049000000010005574944544802
      00020008000662645449504F04000100000000000D6264484F5241454E545241
      4441080004000000010007535542545950450200490006004D6F6E6579000B62
      64484F5241534149444108000400000001000753554254595045020049000600
      4D6F6E6579000B6264504147414D454E544F040001000000000007626456414C
      4F52080004000000010007535542545950450200490006004D6F6E6579000000}
    object cdsEstacionamentobdCODIGO: TIntegerField
      DisplayWidth = 12
      FieldName = 'bdCODIGO'
    end
    object cdsEstacionamentobdMARCA: TStringField
      DisplayWidth = 12
      FieldName = 'bdMARCA'
      Size = 30
    end
    object cdsEstacionamentobdPLACA: TStringField
      DisplayWidth = 10
      FieldName = 'bdPLACA'
      Size = 8
    end
    object cdsEstacionamentobdTIPO: TIntegerField
      DisplayWidth = 8
      FieldName = 'bdTIPO'
    end
    object cdsEstacionamentobdHORAENTRADA: TCurrencyField
      DisplayWidth = 19
      FieldName = 'bdHORAENTRADA'
    end
    object cdsEstacionamentobdHORASAIDA: TCurrencyField
      DisplayWidth = 15
      FieldName = 'bdHORASAIDA'
    end
    object cdsEstacionamentobdPAGAMENTO: TIntegerField
      DisplayWidth = 16
      FieldName = 'bdPAGAMENTO'
    end
    object cdsEstacionamentobdVALOR: TCurrencyField
      DisplayWidth = 12
      FieldName = 'bdVALOR'
    end
  end
  object dsEstacionamento: TDataSource
    DataSet = cdsEstacionamento
    Left = 72
    Top = 192
  end
  object cdsCadastroMarca: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'bdCODIGOMARCA'
        DataType = ftInteger
      end
      item
        Name = 'bdMARCA'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'iCODIGO'
        Fields = 'bdCODIGOMARCA'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'iCODIGO'
    Params = <>
    StoreDefs = True
    Left = 944
    Top = 40
    Data = {
      4C0000009619E0BD0100000018000000020000000000030000004C000D626443
      4F4449474F4D4152434104000100000000000762644D41524341010049000000
      01000557494454480200020032000000}
    object cdsCadastroMarcabdCODIGOMARCA: TIntegerField
      FieldName = 'bdCODIGOMARCA'
    end
    object cdsCadastroMarcabdMARCA: TStringField
      FieldName = 'bdMARCA'
      Size = 50
    end
  end
  object dsCadastroMarca: TDataSource
    DataSet = cdsCadastroMarca
    Left = 944
    Top = 80
  end
end
