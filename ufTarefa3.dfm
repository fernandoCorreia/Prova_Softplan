object fTarefa3: TfTarefa3
  Left = 0
  Top = 0
  Caption = 'Tarefa 3'
  ClientHeight = 378
  ClientWidth = 615
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object gpGrid: TGroupBox
    Left = 0
    Top = 0
    Width = 615
    Height = 265
    Align = alTop
    Caption = 'Valores por projeto: '
    TabOrder = 0
    object gdProjetos: TDBGrid
      Left = 2
      Top = 17
      Width = 611
      Height = 246
      Align = alClient
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object pnRodape: TPanel
    Left = 0
    Top = 265
    Width = 615
    Height = 113
    Align = alClient
    TabOrder = 1
    object pnCalculos: TPanel
      Left = 295
      Top = 1
      Width = 319
      Height = 111
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object lbTotal: TLabel
        Left = 182
        Top = 5
        Width = 41
        Height = 15
        Caption = 'Total R$'
      end
      object lbTotalDiv: TLabel
        Left = 182
        Top = 55
        Width = 86
        Height = 15
        Caption = 'Total divis'#245'es R$'
      end
      object btnTotal: TButton
        Left = 94
        Top = 23
        Width = 75
        Height = 25
        Caption = 'Obter Total'
        TabOrder = 0
        OnClick = btnTotalClick
      end
      object btnDiv: TButton
        Left = 54
        Top = 71
        Width = 115
        Height = 25
        Caption = 'Obter Total Divis'#245'es'
        TabOrder = 1
        OnClick = btnDivClick
      end
      object edTotal: TEdit
        Left = 182
        Top = 23
        Width = 121
        Height = 23
        ReadOnly = True
        TabOrder = 2
      end
      object edTotalDiv: TEdit
        Left = 182
        Top = 71
        Width = 121
        Height = 23
        ReadOnly = True
        TabOrder = 3
      end
    end
  end
end
