unit mControllerCliente_U;

interface

type
  TnClassCliente = record
    Codigo: Integer;
    Nome: String;
    Endereco: string;
  end;

  TControlllerCliente = class
    private
      FCliente: TnClassCliente;
      FParam: string;

      procedure GetParam;
      procedure ValidarDados;
    public
      constructor Create(_AProduto: TnClassCliente);
      function GetValue: string;

      property Param: string read FParam;
  end;

implementation

uses
  System.SysUtils;

{ TControlllerCliente }

constructor TControlllerCliente.Create(_AProduto: TnClassCliente);
begin
  FCliente := _AProduto;
  GetParam;;
end;

procedure TControlllerCliente.ValidarDados;
begin
  if FCliente.Codigo < 1 then
    raise Exception.Create('Erro: C�digo do cliente n�o informado.');

  if (FCliente.Nome = '') or (FCliente.Nome.Length > 200) then
    raise Exception.Create('Erro: Nome do cliente n�o informado ou qunatidade de caracteres maior que o permitido.');

    if (FCliente.Endereco = '') or (FCliente.Endereco.Length > 255) then
    raise Exception.Create('Erro: Endere�o do cliente n�o informado ou quantidade de caracteres maior que o permitido.');
end;

procedure TControlllerCliente.GetParam;
begin
  FParam := 'CODIGO';
  if FCliente.Nome <> '' then
    FParam := FParam + ', NOME';
  if FCliente.Endereco <> '' then
    FParam := FParam + ', ENDERECO';
  FParam := FParam + ', DATACADASTRO';
end;

function TControlllerCliente.GetValue: string;
begin
  ValidarDados;

  Result := '(select coalesce(max(CODIGO), 0) + 1 AS TOTAL FROM CLIENTE)';
  if FCliente.Nome <> '' then
    Result := Result + ', ''' + FCliente.Nome + '''';
  if FCliente.Endereco <> '' then
    Result := Result + ', ''' + FCliente.Endereco + '''';
  Result := Result + ', ''' + FormatDateTime('mm-dd-yyyy', Now) + '''';
end;

end.
