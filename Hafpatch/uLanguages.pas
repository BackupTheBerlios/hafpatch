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

unit uLanguages;

interface

var
  LangID: Word;

function TranslateStr(ID: Integer): String;
function GetLangStr(StringId: Integer; LangId: Word): String;

implementation

function TranslateStr(ID: Integer): String;
begin
  Result := GetLangStr(ID, LangId);
end;

function GetLangStr(StringId: Integer; LangId: Word): String;
// This function holdes the programs constants in english and german language.
// If the language could not be detected (or the identifier is invalid),
// english language is used.
// LangId is the Windows LANGID constant in decimal notation.
// 1033 is "Englisch (USA)" [0x409], 1031 is "Deutsch (Deutschland)" [0x407]
begin
  Case LangId of
    1033: begin
            Case StringId of
              // Buttons
              101: Result := '< &Back';
              102: Result := '&Forward >';
              103: Result := '&Cancel';
              104: Result := '&Finish';

              // Top bar
              200: Result := 'Welcome to hafpatch';
              210: Result := 'Blaaa';

              // In case of error use default message
              else Result := 'No translation resource found';
            end;
          end;
    1031: begin
            Case StringId of
              // Buttons
              101: Result := '< &Zurück';
              102: Result := '&Weiter >';
              103: Result := '&Abbrechen';
              104: Result := '&Fertigstellen';

              // Top bar
              200: Result := 'Willkommen bei hafpatch';
              210: Result := 'Blaaa';

              // In case of error use english language
              else Result := GetLangStr(StringId, 1033);
            end;
          end;
    else GetLangStr(StringId, 1033);
  end;
end;

end.
