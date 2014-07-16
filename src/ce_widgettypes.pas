unit ce_widgettypes;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, actnList, ce_synmemo, ce_project;

type

  // TODO-cinterface: document content access/modification

  (**
   * An implementer is informed when a new document is added, focused or closed.
   *)
  ICEMultiDocMonitor = interface
    procedure docNew(const aDoc: TCESynMemo);
    procedure docFocused(const aDoc: TCESynMemo); // docSelected or docActivated
    procedure docChanged(const aDoc: TCESynMemo);
    procedure docClose(const aDoc: TCESynMemo);
  end;

  (**
   * An implementer declares some actions on demand.
   *)
  ICEContextualActions = interface
    function contextName: string;
    function contextActionCount: integer;
    function contextAction(index: integer): TAction;
  end;

  (**
   * An implementer is informed when a project changes.
   *)
  ICEProjectMonitor = interface
    procedure projNew(const aProject: TCEProject);
    procedure projChange(const aProject: TCEProject);
    procedure projClose(const aProject: TCEProject);
    procedure projCompile(const aProject: TCEProject);
    procedure projRun(const aProject: TCEProject);

    // not used yet: (project group)
    procedure projFocused(const aProject: TCEProject); // projSelected or projActivated
  end;

implementation
end.
