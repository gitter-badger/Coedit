program coedit;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, Forms, lazcontrols, runtimetypeinfocontrols,
  ce_sharedres, ce_observer, ce_libman, ce_tools, ce_dcd, ce_main,
  ce_writableComponent, ce_symstring, ce_staticmacro, ce_inspectors,
  ce_editoroptions, ce_dockoptions, ce_shortcutseditor, ce_mru;

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TCEMainForm, CEMainForm);
  Application.Run;
end.

