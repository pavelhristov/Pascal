unit MyShapesU;

interface
  Uses
    ExtCtrls;

  Type

    TMyShape = Class(TObject)
      Public
        Procedure Draw (AnImage:TImage; ABorder: Integer); Virtual; Abstract;
      Protected
        Procedure Clear (AnImage: TImage);
      end;

    TMyEllipse = Class (TMyShape)
      Public
        Procedure Draw (AnImage: TImage; ABorder: Integer); Override;
      end;

    TMyRectangle = Class(TMyShape)
      Public
        Procedure Draw (AnImage: TImage; ABorder: Integer); Override;
      end;

implementation

{ TMyEllipse }

procedure TMyEllipse.Draw(AnImage: TImage; ABorder: Integer);
begin
  inherited;
    AnImage.Canvas.Rectangle(0, 0, AnImage.Width, AnImage.Height);
    AnImage.Canvas.Ellipse(ABorder, ABorder, AnImage.Width - ABorder, AnImage.Height - ABorder);
end;

{ TMyRectangle }

procedure TMyRectangle.Draw(AnImage: TImage; ABorder: Integer);
begin
  inherited;
    AnImage.Canvas.Rectangle(0, 0, AnImage.Width, AnImage.Height);
    AnImage.Canvas.Rectangle(ABorder, ABorder, AnImage.Width - ABorder, AnImage.Height - ABorder);
end;

{ TMyShape }

procedure TMyShape.Clear(AnImage: TImage);
begin
  AnImage.Canvas.Rectangle(0, 0, AnImage.Width, AnImage.Height);
end;

end.
