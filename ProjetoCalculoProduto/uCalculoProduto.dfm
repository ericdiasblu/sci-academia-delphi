object frCalculoProduto: TfrCalculoProduto
  Left = 872
  Top = 125
  Width = 465
  Height = 528
  Caption = 'C'#225'lculo de Produto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object gbDadosProduto: TGroupBox
    Left = 24
    Top = 24
    Width = 409
    Height = 257
    Caption = 'Dados do Produto'
    TabOrder = 0
    object lbCodigoProduto: TLabel
      Left = 16
      Top = 32
      Width = 91
      Height = 13
      Caption = 'C'#243'digo do Produto:'
    end
    object lbDescricao: TLabel
      Left = 56
      Top = 64
      Width = 51
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object lbQuantidade: TLabel
      Left = 48
      Top = 104
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label1: TLabel
      Left = 40
      Top = 144
      Width = 66
      Height = 13
      Caption = 'Valor Unit'#225'rio:'
    end
    object TLabel
      Left = 24
      Top = 216
      Width = 83
      Height = 13
      Caption = 'Al'#237'quota ICMS %:'
    end
    object edCodigoProduto: TEdit
      Left = 128
      Top = 28
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edDescricao: TEdit
      Left = 128
      Top = 60
      Width = 257
      Height = 21
      TabOrder = 1
    end
    object edQuantidade: TEdit
      Left = 128
      Top = 100
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object ckTributado: TCheckBox
      Left = 40
      Top = 176
      Width = 97
      Height = 17
      Caption = 'Tributado?'
      TabOrder = 3
      OnClick = ckTributadoClick
    end
    object edAliquota: TEdit
      Left = 128
      Top = 212
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object edValorUnitario: TEdit
      Left = 128
      Top = 140
      Width = 121
      Height = 21
      TabOrder = 5
    end
  end
  object gbTotais: TGroupBox
    Left = 24
    Top = 312
    Width = 409
    Height = 105
    Caption = 'Totais'
    TabOrder = 1
    object Label2: TLabel
      Left = 32
      Top = 28
      Width = 54
      Height = 13
      Caption = 'Valor Total:'
    end
    object Label3: TLabel
      Left = 32
      Top = 64
      Width = 56
      Height = 13
      Caption = 'Valor ICMS:'
    end
    object edValorTotal: TEdit
      Left = 120
      Top = 24
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object edValorIcms: TEdit
      Left = 120
      Top = 60
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 1
    end
  end
  object btCalcular: TButton
    Left = 358
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btCalcularClick
  end
end
