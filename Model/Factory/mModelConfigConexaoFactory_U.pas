unit mModelConfigConexaoFactory_U;

interface

  type
    TnConexao = record
      Driver: string;
      Caminho: string;
      User: string;
      Password: string;
    end;

    TModelConfigConexaoFactory = class
      private
        FArquivoINI: string;
      public
        constructor Create; reintroduce;
        function GetConexao: TnConexao;
    end;

implementation

uses
  System.SysUtils, System.Classes, IniFiles;

{ TModelConfigConexaoFactory }

constructor TModelConfigConexaoFactory.Create;
var
  AConteudo: TStringList;
begin
  FArquivoINI := ExtractFilePath(ParamStr(0)) + 'config.ini';
  if not FileExists(FArquivoINI) then
  begin
    AConteudo := TStringList.Create;
    try
      AConteudo.Add('[FIREBIRD]');
      AConteudo.Add('Driver=FB');
      AConteudo.Add('Caminho=localhost/3050:' + ExtractFilePath(ParamStr(0)) + '\Banco\BASEMAICON.FDB');
      AConteudo.Add('User=SYSDBA');
      AConteudo.Add('Password=masterkey');
      AConteudo.SaveToFile(FArquivoINI);
    finally
      FreeAndNil(AConteudo);
    end;
  end;
end;

function TModelConfigConexaoFactory.GetConexao: TnConexao;
var
  Configuracoes : TIniFile;
begin
  Configuracoes := TIniFile.Create(FArquivoINI);
  Try
    Result.Driver   := Configuracoes.ReadString('FIREBIRD', 'Driver',   Result.Driver);
    Result.Caminho  := Configuracoes.ReadString('FIREBIRD', 'Caminho',   Result.Caminho);
    Result.User     := Configuracoes.ReadString('FIREBIRD', 'User',     Result.User);
    Result.Password := Configuracoes.ReadString('FIREBIRD', 'Password', Result.Password);
  Finally
    Configuracoes.Free;
  end;
end;

end.
