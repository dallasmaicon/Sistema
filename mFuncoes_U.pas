unit mFuncoes_U;

interface

uses
  Vcl.Forms;

procedure AbrirForm(_AForm: TForm);

implementation

procedure AbrirForm(_AForm: TForm);
begin
  _AForm.Position := poDesktopCenter;
  _AForm.KeyPreview := True;
  _AForm.ShowModal;
end;

end.
