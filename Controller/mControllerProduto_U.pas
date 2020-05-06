unit mControllerProduto_U;

interface

type
  TnClassProduto = record
    Codigo: Integer;
    Nome: String;
  end;

  TControlllerProduto = class
    private
      FProduto: TnClassProduto;
      FParam: string;

      procedure GetParam;
      procedure ValidarDados;
    public
      constructor Create(_AProduto: TnClassProduto);
      function GetValue: string;

      property Param: string read FParam;
  end;

implementation

uses
  System.SysUtils;

{ TControlllerProduto }

constructor TControlllerProduto.Create(_AProduto: TnClassProduto);
begin
  FProduto := _AProduto;
  GetParam;;
end;

procedure TControlllerProduto.ValidarDados;
begin
  if FProduto.Codigo < 1 then
    raise Exception.Create('Erro: C�digo do produto n�o informado.');

  if FProduto.Nome = '' then
    raise Exception.Create('Erro: Nome do produto n�o informado.');
end;

procedure TControlllerProduto.GetParam;
begin
  FParam := 'CODIGO';
  if FProduto.Nome <> '' then
    FParam := FParam + ', NOME';
end;

function TControlllerProduto.GetValue: string;
begin
  ValidarDados;

  Result := '';
  if FProduto.Codigo > 0 then
  Result := IntToStr(FProduto.Codigo);
  if FProduto.Nome <> '' then
    Result := Result + ', ''' + FProduto.Nome + '''';
end;

end.
