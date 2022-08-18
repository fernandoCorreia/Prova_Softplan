object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  Caption = 'Tarefa 2'
  ClientHeight = 194
  ClientWidth = 624
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
  PixelsPerInch = 96
  TextHeight = 15
  object lbThread1: TLabel
    Left = 16
    Top = 8
    Width = 84
    Height = 15
    Caption = 'Tempo Thread 1'
  end
  object lbThread2: TLabel
    Left = 168
    Top = 8
    Width = 84
    Height = 15
    Caption = 'Tempo Thread 2'
  end
  object lbPThread1: TLabel
    Left = 16
    Top = 80
    Width = 100
    Height = 15
    Caption = 'Progresso Thread 1'
  end
  object lbPThread2: TLabel
    Left = 16
    Top = 136
    Width = 100
    Height = 15
    Caption = 'Progresso Thread 2'
  end
  object btExecutar: TButton
    Left = 328
    Top = 28
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 0
    OnClick = btExecutarClick
  end
  object edThread1: TEdit
    Left = 16
    Top = 29
    Width = 121
    Height = 23
    NumbersOnly = True
    TabOrder = 1
  end
  object edThread2: TEdit
    Left = 168
    Top = 29
    Width = 121
    Height = 23
    NumbersOnly = True
    TabOrder = 2
  end
  object pgThread1: TProgressBar
    Left = 16
    Top = 101
    Width = 577
    Height = 17
    TabOrder = 3
  end
  object pgThread2: TProgressBar
    Left = 16
    Top = 158
    Width = 577
    Height = 17
    TabOrder = 4
  end
end
