object Main: TMain
  Left = 449
  Top = 278
  Width = 503
  Height = 385
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
  object nbNotebook: TNotebook
    Left = 0
    Top = 59
    Width = 495
    Height = 253
    Align = alClient
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'Vorgabe'
    end
  end
  object paNavigation: TPanel
    Left = 0
    Top = 312
    Width = 495
    Height = 46
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 495
      Height = 3
      Align = alTop
      Shape = bsTopLine
    end
    object btnBack: TButton
      Left = 251
      Top = 14
      Width = 75
      Height = 23
      Caption = 'btnBack'
      Enabled = False
      TabOrder = 0
    end
    object btnForward: TButton
      Left = 326
      Top = 14
      Width = 75
      Height = 23
      Caption = 'btnForward'
      TabOrder = 1
    end
    object btnCancel: TButton
      Left = 412
      Top = 14
      Width = 75
      Height = 23
      Caption = 'btnCancel'
      TabOrder = 2
    end
  end
  object paInfo: TPanel
    Left = 0
    Top = 0
    Width = 495
    Height = 59
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 2
    object laInfoHeadline: TLabel
      Left = 22
      Top = 9
      Width = 415
      Height = 13
      AutoSize = False
      Caption = 'laInfoHeadline'
    end
    object laInfoText: TLabel
      Left = 40
      Top = 26
      Width = 400
      Height = 32
      AutoSize = False
      Caption = 'laInfoText'
      WordWrap = True
    end
    object imgIcon: TImage
      Left = 441
      Top = 6
      Width = 48
      Height = 48
    end
    object Bevel2: TBevel
      Left = 0
      Top = 57
      Width = 495
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
  end
end
