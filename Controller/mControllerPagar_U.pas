unit mControllerPagar_U;

interface

uses
  System.SysUtils;

type
  TnClassPagar = record
    Codigo: Integer;
    Titulo: String;
    Fornecedor: String;
    Venciomento: TDate;
    Observacao: string;
    Valor: currency;
  end;

  TControlllerPagar = class
    private
      FPagar: TnClassPagar;
      FParam: string;

      procedure GetParam;
      procedure ValidarDados;
    public
      constructor Create(_AProduto: TnClassPagar);
      function GetValue: string;

      property Param: string read FParam;
  end;

implementation

uses
  Vcl.Dialogs, mControllerConexao_U, Data.DB;

{ TControlllerCliente }

constructor TControlllerPagar.Create(_AProduto: TnClassPagar);
begin
  FPagar := _AProduto;
  GetParam;;
end;

procedure TControlllerPagar.ValidarDados;
begin
  if FPagar.Titulo = '' then
    raise Exception.Create('Erro: T�tulo de Conta a Pagar n�o informado.');

  if FPagar.Venciomento <= 0 then
    raise Exception.Create('Erro: Vencimento informado � inv�lido');

  if FPagar.Fornecedor = '' then
    raise Exception.Create('Erro: Fornecedor n�o infromado.')
  else
  begin
//    ValidarFornecedor;
  end;

end;


procedure TControlllerPagar.GetParam;
begin
  FParam := 'CODIGO';
  if FPagar.Titulo <> '' then
    FParam := FParam + ', TITULO';
  if FPagar.Venciomento > 0 then
    FParam := FParam + ', DATAVENCIMENTO';
  if FPagar.Fornecedor <> '' then
    FParam := FParam + ', CODIGOFORNECEDOR';
  FParam := FParam + ', VALOR, OBSERVACAO, DATACADASTRO';
end;

function TControlllerPagar.GetValue: string;
begin
  ValidarDados;

  Result := '';
  Result := '(select coalesce(max(CODIGO), 0) + 1 AS TOTAL FROM CONTASPAGAR)';
  if FPagar.Titulo <> '' then
    Result := Result + ', ''' + FPagar.Titulo + '''';
  if FPagar.Venciomento > 0 then
    Result := Result + ', ''' + FormatDateTime('mm-dd-yyyy', FPagar.Venciomento) + '''';
  if FPagar.Fornecedor <> '' then
    Result := Result + ', ' + FPagar.Fornecedor;
  Result := Result + ', ' + CurrToStr(FPagar.Valor);
  Result := Result + ', ''' + FPagar.Observacao + '''';
  Result := Result + ', ''' + FormatDateTime('mm-dd-yyyy', Now) + '''';
end;

end.
