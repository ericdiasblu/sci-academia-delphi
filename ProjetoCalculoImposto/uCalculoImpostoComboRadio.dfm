inherited frCalculoImpostoComboRadio: TfrCalculoImpostoComboRadio
  Left = 1011
  Top = 125
  Width = 301
  Height = 337
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbValorNota: TLabel
    Top = 128
  end
  inherited lbImposto: TLabel
    Top = 168
  end
  inherited Label1: TLabel
    Top = 256
  end
  object lbEstado: TLabel [3]
    Left = 56
    Top = 24
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  inherited btCalcular: TButton
    Left = 139
    Top = 208
  end
  inherited edImposto: TEdit
    Top = 164
    Width = 162
  end
  inherited edValorNota: TEdit
    Top = 124
    Width = 161
  end
  inherited edValorTotal: TEdit
    Top = 252
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
  object rgMovimento: TRadioGroup
    Left = 96
    Top = 64
    Width = 161
    Height = 41
    Caption = 'Movimento'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Entrada'
      'Sa'#237'da')
    TabOrder = 5
    OnClick = rgMovimentoClick
  end
end
