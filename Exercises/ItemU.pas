unit ItemU;

interface
  type
  TItem = Class(TObject)
  Private
    FCount: Integer;
  Protected
    Procedure AddItem(aNoToAdd: Integer); Overload;
  Public
    Procedure AddItem; Overload;
    Function GetCount: Integer;
    Procedure ZeroCount;
  end;

  TItemBox = Class(TItem)
  Public
    Procedure AddBox;
  end;

implementation

  {TItem}

  Procedure TItem.AddItem;
    begin
      Inc(FCount);
    end;

  Procedure TItem.AddItem(aNoToAdd:Integer);
    begin
      Inc(FCount,aNoToAdd);
    end;

  Function TItem.GetCount: Integer;
    begin
      Result:=FCount;
    end;

  Procedure TItem.ZeroCount;
    begin
      FCount:=0;

    end;

  {TItemBox}

  Procedure TItemBox.AddBox;
    const
      NoInBox = 4;
    begin
        AddItem(NoInBox);
    end;

end.
