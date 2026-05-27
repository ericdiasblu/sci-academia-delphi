object frCadastroPessoas: TfrCadastroPessoas
  Left = 464
  Top = 145
  Width = 525
  Height = 480
  Caption = 'Cadastro de Pessoas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbCodigo: TLabel
    Left = 40
    Top = 32
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object lbCpf: TLabel
    Left = 53
    Top = 56
    Width = 20
    Height = 13
    Caption = 'CPF'
  end
  object lbEstadoCivil: TLabel
    Left = 18
    Top = 144
    Width = 55
    Height = 13
    Caption = 'Estado Civil'
  end
  object lbNome: TLabel
    Left = 45
    Top = 176
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object lbEndereco: TLabel
    Left = 27
    Top = 208
    Width = 46
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object lbTelefone: TLabel
    Left = 31
    Top = 240
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object edCodigo: TEdit
    Left = 80
    Top = 28
    Width = 105
    Height = 21
    TabOrder = 0
    OnExit = edCodigoExit
  end
  object edCpf: TEdit
    Left = 80
    Top = 52
    Width = 153
    Height = 21
    TabOrder = 1
  end
  object rgSexo: TRadioGroup
    Left = 80
    Top = 88
    Width = 185
    Height = 41
    Caption = 'Sexo'
    Columns = 2
    Items.Strings = (
      'Feminino'
      'Masculino')
    TabOrder = 2
  end
  object cbEstadoCivil: TComboBox
    Left = 80
    Top = 140
    Width = 177
    Height = 22
    Style = csOwnerDrawFixed
    ItemHeight = 16
    TabOrder = 3
    Items.Strings = (
      'Solteiro'
      'Casado')
  end
  object edNome: TEdit
    Left = 80
    Top = 172
    Width = 265
    Height = 21
    TabOrder = 4
  end
  object edEndereco: TEdit
    Left = 80
    Top = 204
    Width = 265
    Height = 21
    TabOrder = 5
  end
  object edTelefone: TEdit
    Left = 80
    Top = 236
    Width = 153
    Height = 21
    TabOrder = 6
  end
  object btSalvar: TButton
    Left = 80
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 7
    OnClick = btSalvarClick
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 304
    Width = 473
    Height = 120
    DataSource = dsCadastroPessoas
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'bdCODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdCPF'
        Title.Alignment = taCenter
        Title.Caption = 'CPF'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdSEXO'
        Title.Alignment = taCenter
        Title.Caption = 'Sexo'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdESTADOCIVIL'
        Title.Alignment = taCenter
        Title.Caption = 'Estado Civil'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdNOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdENDERECO'
        Title.Alignment = taCenter
        Title.Caption = 'Endere'#231'o'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdTELEFONE'
        Title.Alignment = taCenter
        Title.Caption = 'Telefone'
        Width = 92
        Visible = True
      end>
  end
  object btContagemSexo: TButton
    Left = 176
    Top = 272
    Width = 97
    Height = 25
    Caption = 'Contagem Sexo'
    TabOrder = 9
    OnClick = btContagemSexoClick
  end
  object cdsCadastroPessoas: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'bdCODIGO'
        DataType = ftInteger
      end
      item
        Name = 'bdCPF'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'bdSEXO'
        DataType = ftInteger
      end
      item
        Name = 'bdESTADOCIVIL'
        DataType = ftInteger
      end
      item
        Name = 'bdNOME'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'bdENDERECO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'bdTELEFONE'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'iCodigo'
        Fields = 'bdCODIGO'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'iCodigo'
    Params = <>
    StoreDefs = True
    Left = 328
    Top = 48
    Data = {
      C30000009619E0BD010000001800000007000000000003000000C30008626443
      4F4449474F040001000000000005626443504601004900000001000557494454
      48020002000B000662645345584F04000100000000000D626445535441444F43
      4956494C04000100000000000662644E4F4D4501004900000001000557494454
      480200020064000A6264454E44455245434F0100490000000100055749445448
      0200020064000A626454454C45464F4E45010049000000010005574944544802
      00020014000000}
    object cdsCadastroPessoasbdCODIGO: TIntegerField
      FieldName = 'bdCODIGO'
    end
    object cdsCadastroPessoasbdCPF: TStringField
      FieldName = 'bdCPF'
      Size = 11
    end
    object cdsCadastroPessoasbdSEXO: TIntegerField
      FieldName = 'bdSEXO'
    end
    object cdsCadastroPessoasbdESTADOCIVIL: TIntegerField
      FieldName = 'bdESTADOCIVIL'
    end
    object cdsCadastroPessoasbdNOME: TStringField
      FieldName = 'bdNOME'
      Size = 100
    end
    object cdsCadastroPessoasbdENDERECO: TStringField
      FieldName = 'bdENDERECO'
      Size = 100
    end
    object cdsCadastroPessoasbdTELEFONE: TStringField
      FieldName = 'bdTELEFONE'
    end
  end
  object dsCadastroPessoas: TDataSource
    DataSet = cdsCadastroPessoas
    Left = 280
    Top = 48
  end
end
