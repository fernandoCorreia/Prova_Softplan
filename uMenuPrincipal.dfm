object fMenuPrincipal: TfMenuPrincipal
  Left = 0
  Top = 0
  Caption = 'Prova Delphi App'
  ClientHeight = 387
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = True
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 288
    Top = 128
    object Menu: TMenuItem
      Caption = 'Menu'
      object tarefa11: TMenuItem
        Caption = 'Tarefa &1'
        OnClick = tarefa11Click
      end
      object tarefa21: TMenuItem
        Caption = 'Tarefa &2'
        OnClick = tarefa21Click
      end
      object tarefa31: TMenuItem
        Caption = 'tarefa &3'
        OnClick = tarefa31Click
      end
    end
  end
end
