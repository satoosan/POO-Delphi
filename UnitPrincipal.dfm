object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'FrmPrincipal'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnPF: TButton
    Left = 160
    Top = 40
    Width = 265
    Height = 97
    Caption = 'Pessoa F'#237'sica'
    TabOrder = 0
    OnClick = btnPFClick
  end
  object btnPJ: TButton
    Left = 160
    Top = 256
    Width = 265
    Height = 97
    Caption = 'Pessoa Jur'#237'dica'
    TabOrder = 1
    OnClick = btnPJClick
  end
end
