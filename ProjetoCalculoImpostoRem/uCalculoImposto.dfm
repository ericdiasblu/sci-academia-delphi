object frCalculoImposto: TfrCalculoImposto
  Left = 711
  Top = 125
  Width = 661
  Height = 578
  Caption = 'C'#225'lculo de Imposoto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbEstado: TLabel
    Left = 64
    Top = 104
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object lbValorNota: TLabel
    Left = 34
    Top = 208
    Width = 63
    Height = 13
    Caption = 'Valor da nota'
  end
  object lbImposto: TLabel
    Left = 43
    Top = 248
    Width = 54
    Height = 13
    Caption = 'Imposto (%)'
  end
  object lbValorTotal: TLabel
    Left = 46
    Top = 336
    Width = 51
    Height = 13
    Caption = 'Valor Total'
  end
  object Label1: TLabel
    Left = 18
    Top = 64
    Width = 79
    Height = 13
    Caption = 'Data de emiss'#227'o'
  end
  object lbNumeroNota: TLabel
    Left = 19
    Top = 24
    Width = 78
    Height = 13
    Caption = 'N'#250'mero da Nota'
  end
  object cbEstado: TComboBox
    Left = 112
    Top = 100
    Width = 161
    Height = 19
    Style = csOwnerDrawFixed
    ItemHeight = 13
    TabOrder = 2
    OnSelect = cbEstadoSelect
    Items.Strings = (
      'Paran'#225
      'Santa Catarina'
      'S'#227'o Paulo')
  end
  object rgMovimento: TRadioGroup
    Left = 112
    Top = 136
    Width = 161
    Height = 49
    Caption = 'Movimento'
    Columns = 2
    Items.Strings = (
      'Entrada'
      'Sa'#237'da')
    TabOrder = 3
    OnClick = rgMovimentoClick
  end
  object edValorNota: TEdit
    Left = 112
    Top = 204
    Width = 161
    Height = 21
    TabOrder = 4
  end
  object edImposto: TEdit
    Left = 112
    Top = 244
    Width = 161
    Height = 21
    TabOrder = 5
  end
  object btCalcular: TButton
    Left = 112
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 6
    OnClick = btCalcularClick
  end
  object edValorTotal: TEdit
    Left = 112
    Top = 332
    Width = 161
    Height = 21
    Enabled = False
    TabOrder = 8
  end
  object edDataEmissao: TEdit
    Left = 113
    Top = 60
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object edNumeroNota: TEdit
    Left = 113
    Top = 20
    Width = 161
    Height = 21
    TabOrder = 0
    OnExit = edNumeroNotaExit
  end
  object btSalvar: TButton
    Left = 200
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 7
    OnClick = btSalvarClick
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 392
    Width = 585
    Height = 120
    DataSource = DataSource1
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'bdNUMERONOTA'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero da Nota'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdDATAEMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Data de Emiss'#227'o'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdESTADO'
        Title.Alignment = taCenter
        Title.Caption = 'Estado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdMOVIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Movimento'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdVALORNOTA'
        Title.Alignment = taCenter
        Title.Caption = 'Valor da Nota'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdIMPOSTO'
        Title.Alignment = taCenter
        Title.Caption = 'Imposto (%)'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdVALORTOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Total'
        Width = 76
        Visible = True
      end>
  end
  object cdsCalculoImposto: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'bdNUMERONOTA'
        DataType = ftInteger
      end
      item
        Name = 'bdDATAEMISSAO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'bdESTADO'
        DataType = ftInteger
      end
      item
        Name = 'bdMOVIMENTO'
        DataType = ftInteger
      end
      item
        Name = 'bdVALORNOTA'
        DataType = ftCurrency
      end
      item
        Name = 'bdIMPOSTO'
        DataType = ftCurrency
      end
      item
        Name = 'bdVALORTOTAL'
        DataType = ftCurrency
      end>
    IndexDefs = <
      item
        Name = 'iNumeroNota'
        Fields = 'bdNUMERONOTA'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'iNumeroNota'
    Params = <>
    StoreDefs = True
    Left = 384
    Top = 48
    Data = {
      030100009619E0BD01000000180000000700000000000300000003010C62644E
      554D45524F4E4F544104000100000000000D626444415441454D495353414F01
      00490000000100055749445448020002000A0008626445535441444F04000100
      000000000B62644D4F56494D454E544F04000100000000000B626456414C4F52
      4E4F5441080004000000010007535542545950450200490006004D6F6E657900
      096264494D504F53544F08000400000001000753554254595045020049000600
      4D6F6E6579000C626456414C4F52544F54414C08000400000001000753554254
      5950450200490006004D6F6E65790001000D44454641554C545F4F5244455202
      00820000000000}
    object cdsCalculoImpostobdNUMERONOTA: TIntegerField
      FieldName = 'bdNUMERONOTA'
    end
    object cdsCalculoImpostobdDATAEMISSAO: TStringField
      FieldName = 'bdDATAEMISSAO'
      Size = 10
    end
    object cdsCalculoImpostobdESTADO: TIntegerField
      FieldName = 'bdESTADO'
    end
    object cdsCalculoImpostobdMOVIMENTO: TIntegerField
      FieldName = 'bdMOVIMENTO'
    end
    object cdsCalculoImpostobdVALORNOTA: TCurrencyField
      FieldName = 'bdVALORNOTA'
    end
    object cdsCalculoImpostobdIMPOSTO: TCurrencyField
      FieldName = 'bdIMPOSTO'
    end
    object cdsCalculoImpostobdVALORTOTAL: TCurrencyField
      FieldName = 'bdVALORTOTAL'
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsCalculoImposto
    Left = 344
    Top = 48
  end
end
