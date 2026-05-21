inherited frCalculoImpostoComboRadio: TfrCalculoImpostoComboRadio
  Width = 301
  Height = 318
  Caption = 'frCalculoImpostoComboRadio'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbValorNota: TLabel
    Top = 104
  end
  inherited lbImposto: TLabel
    Top = 144
  end
  inherited Label1: TLabel
    Top = 232
  end
  object Label2: TLabel [3]
    Left = 56
    Top = 24
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  inherited btCalcular: TButton
    Top = 184
  end
  inherited edImposto: TEdit
    Top = 140
    Width = 162
  end
  inherited edValorNota: TEdit
    Top = 100
    Width = 161
  end
  inherited edValorTotal: TEdit
    Top = 228
    Width = 161
  end
  object cbEstado: TComboBox
    Left = 96
    Top = 20
    Width = 161
    Height = 22
    Style = csOwnerDrawFixed
    ItemHeight = 16
    TabOrder = 4
    OnSelect = cbEstadoSelect
    Items.Strings = (
      'Paran'#225
      'Santa Catarina'
      'S'#227'o Paulo')
  end
  object RadioGroup1: TRadioGroup
    Left = 96
    Top = 48
    Width = 161
    Height = 41
    Caption = 'Movimento'
    Columns = 2
    Items.Strings = (
      'Entrada'
      'Sa'#237'da')
    TabOrder = 5
  end
end
