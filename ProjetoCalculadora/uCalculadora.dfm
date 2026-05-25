object Form1: TForm1
  Left = 810
  Top = 195
  Width = 269
  Height = 313
  Caption = 'Form1'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 16
    Width = 96
    Height = 20
    Caption = 'Calculadora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbResultado: TLabel
    Left = 19
    Top = 180
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object lbValorUm: TLabel
    Left = 24
    Top = 60
    Width = 43
    Height = 13
    Caption = 'Valor Um'
    Color = clActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lbValorDois: TLabel
    Left = 19
    Top = 92
    Width = 48
    Height = 13
    Caption = 'Valor Dois'
  end
  object edValorUm: TEdit
    Left = 72
    Top = 56
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object edValorDois: TEdit
    Left = 72
    Top = 88
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object btAdicao: TButton
    Left = 16
    Top = 128
    Width = 33
    Height = 25
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -27
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btAdicaoClick
  end
  object Button1: TButton
    Left = 72
    Top = 128
    Width = 33
    Height = 25
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object btMultiplicacao: TButton
    Left = 144
    Top = 128
    Width = 33
    Height = 25
    Caption = 'x'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btMultiplicacaoClick
  end
  object btDivisao: TButton
    Left = 200
    Top = 128
    Width = 33
    Height = 25
    Caption = #247
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btDivisaoClick
  end
  object edResultado: TEdit
    Left = 72
    Top = 176
    Width = 161
    Height = 21
    Enabled = False
    TabOrder = 6
  end
  object Button2: TButton
    Left = 16
    Top = 224
    Width = 217
    Height = 25
    Caption = 'Limpar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Button2Click
  end
end
