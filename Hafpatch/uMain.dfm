object Main: TMain
  Left = 481
  Top = 172
  Width = 511
  Height = 459
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Main'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefaultPosOnly
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 445
    Height = 266
    ActivePage = tabWelcome
    Style = tsButtons
    TabOrder = 0
    object tabWelcome: TTabSheet
      Caption = 'Welcome'
      object Panel1: TPanel
        Left = 32
        Top = 3
        Width = 185
        Height = 52
        Caption = 'Panel1'
        TabOrder = 0
      end
    end
  end
end
