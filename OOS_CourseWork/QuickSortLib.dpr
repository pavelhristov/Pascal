library QuickSortLib;

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
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

{$R *.res}

procedure partition(var a: array of Integer; f, l : integer; var i: integer);
var
  j: integer;
  p: integer;
begin
  i := f; j:= l; p := a[f];
  repeat
    while a[j] > p do j:=j-1;
    if i<j then begin
      A[i]:=A[j];
      A[j]:=p;
      i:=i+1;
    end;
    while  A[i] < p do i:=i+1;
    if i<j then begin
      A[j]:=A[i];
      A[i]:=p;
      j:=j-1;
    end;
  until i >= j;
end;

procedure quick_sort(var a: array of Integer; f, l : integer); stdcall;
var
  i: integer;
begin
  if f < l then begin
    partition(a,f,l,i);
    quick_sort(a, f, i);
    quick_sort(a, i+1, l);
  end;
end;

procedure straight_selection(var a:array of Integer; n:Integer);stdcall;
var
  i, j, k: Integer;
  x: integer;
begin
  for i := 0 to n-2 do begin
    k := i;
    x := a[i];
    for j := i+1 to n do begin
      if a[j] < x then begin
        k := j;
        x := a[j];
      end;
    end;
    a[k] := a[i];
    a[i] := x;
  end;
  ShowMessage('Sort Complete');
end;

Exports
  Quick_Sort, Straight_Selection;
  
begin
end.
