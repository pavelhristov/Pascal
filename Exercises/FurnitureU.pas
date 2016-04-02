unit FurnitureU;

interface

type
  //Define the class;
  TFurniture = Class(TObject)

  Public
    Function GetKind: String; Virtual;
  end;

  TChair = Class(TFurniture)
    Function GetKind: String; Override;
  end;

  TTable = Class(TFurniture)
    Function GetKind: String; Override;
  end;

  TCoffeeTable = Class(TTable)
    Function GetKind: String; Override;
  end;

  TKitchenTable = Class(TTable)
    Function GetKind: String; Override;
  end;

implementation

{ TFurniture }

function TFurniture.GetKind: String;
begin
  Result:= 'Furniture ';
end;

{ TChair }

function TChair.GetKind: String;
begin
  Result:= 'A Chair, ' + inherited GetKind;
end;

{ TTable }

function TTable.GetKind: String;
begin
  Result:= 'A Table, ' + inherited GetKind;
end;

{ TCoffeeTable }

function TCoffeeTable.GetKind: String;
begin
  Result:= 'A Coffee Table, ' + inherited GetKind;
end;

{ TKitchenTable }

function TKitchenTable.GetKind: String;
begin
  Result:= 'A Kitchen Table, ' + inherited GetKind;
end;

end.
