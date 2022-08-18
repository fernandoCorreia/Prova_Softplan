object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  Caption = 'Tarefa 1'
  ClientHeight = 441
  ClientWidth = 759
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = True
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object lbCondicoes: TLabel
    Left = 431
    Top = 8
    Width = 56
    Height = 15
    Caption = 'Condi'#231#245'es'
  end
  object Label2: TLabel
    Left = 16
    Top = 8
    Width = 43
    Height = 15
    Caption = 'Colunas'
  end
  object Label3: TLabel
    Left = 223
    Top = 8
    Width = 38
    Height = 15
    Caption = 'Tabelas'
  end
  object Label1: TLabel
    Left = 16
    Top = 216
    Width = 62
    Height = 15
    Caption = 'SQL Gerado'
  end
  object memSQLGerado: TMemo
    Left = 16
    Top = 237
    Width = 699
    Height = 172
    ReadOnly = True
    TabOrder = 3
  end
  object memColunas: TMemo
    Left = 16
    Top = 29
    Width = 185
    Height = 132
    TabOrder = 0
  end
  object memTabelas: TMemo
    Left = 223
    Top = 29
    Width = 185
    Height = 132
    TabOrder = 1
  end
  object memCondicoes: TMemo
    Left = 431
    Top = 29
    Width = 185
    Height = 132
    TabOrder = 2
  end
  object Button1: TButton
    Left = 648
    Top = 89
    Width = 75
    Height = 25
    Caption = 'Gera SQL'
    TabOrder = 4
    OnClick = btnGeraSQLClick
  end
  object spQuery: TspQuery
    Left = 632
    Top = 56
  end
end
