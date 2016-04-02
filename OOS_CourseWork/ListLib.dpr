library ListLib;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SysUtils,
  Classes,
  ListU in 'ListU.pas';

{$R *.res}

  Procedure Init(var p: PList);  stdcall;
    begin
      p := nil;
    end;

  Procedure InList(var list: PList; x: Te; var fl:boolean);   stdcall;
    var
      pt,l,lp: PList;
    begin
      fl := False;
      new(pt);
      If pt <> nil Then begin
        fl := True;
        pt^.info := x;
        l := list;
        lp := list;
        While (l <> nil) and (l^.info < x) Do begin
          lp := l;
          l := l^.next;
        end;
        If l = lp Then begin
          pt^.next := list;
          list := pt;
        end Else begin
          pt^.next := lp^.next;
          lp^.next := pt;
        end;
      end;
    end;

  Procedure OutList(var list: plist; x:te ;var fl:boolean);  stdcall;
    var
      l, lp: plist;
    begin
      fl:=False;
      l:=list;
      lp:=list;
      While (l <> nil) and (l^.info <> x) Do begin
        lp:=l;
        l:=l^.next;
      end;
      If l <> nil Then begin
        fl:=True;
        If l=lp Then
          list := l^.next
        Else
          lp^.next:=l^.next;
        dispose(l);
      end;
    end;

  Procedure WriteItem(x: Te; var K:string);  stdcall;
    begin
      k:=k + IntToStr(x) + ' ';
    end;

  Procedure Scan(list: PList; var k:string);  stdcall;
    var
      pt: PList;
    begin
    pt := list;
      While pt <> nil Do begin
        WriteItem(pt^.info,k);
        pt := pt^.next;
      end;
    end;
    
  Function Empty(p: PList):boolean;   stdcall; 
    begin
      Empty := p = nil;
    end;

  Exports
  Init, InList, OutList, WriteItem, Scan, Empty;
  
begin
end.
