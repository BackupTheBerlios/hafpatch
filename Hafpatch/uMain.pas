{ ******************************************************************************

    Hafpatch is the Hafas Patch - Extend HAFAS (R) Software with extra features

    Copyright (C) 2004 Daniel Schuhmann

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

****************************************************************************** }

unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, XPMan;

type
  TMain = class(TForm)
    nbNotebook: TNotebook;
    paNavigation: TPanel;
    Bevel1: TBevel;
    paInfo: TPanel;
    btnBack: TButton;
    btnForward: TButton;
    btnCancel: TButton;
    laInfoHeadline: TLabel;
    laInfoText: TLabel;
    imgIcon: TImage;
    Bevel2: TBevel;
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Main: TMain;

resourcestring
  AppVerName = 'Hafpatch 0.1';


implementation

uses uLanguages;

{$R *.dfm}

procedure TMain.FormCreate(Sender: TObject);
begin
  // Initialization
  LangId := GetSystemDefaultLangID;
  If Screen.Fonts.IndexOf('Tahoma') <> (-1) then Font.Name := 'Tahoma';
  laInfoHeadline.Font.Style := [fsBold];
  Main.Caption := AppVerName;

  // Translate Initial Buttons
  btnBack.Caption := TranslateStr(101);
  btnForward.Caption := TranslateStr(102);
  btnCancel.Caption := TranslateStr(103);

  laInfoHeadline.Caption := TranslateStr(200);
  laInfoText.Caption := TranslateStr(210);
end;

end.
