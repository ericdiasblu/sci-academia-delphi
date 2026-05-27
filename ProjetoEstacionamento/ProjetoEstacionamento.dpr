program ProjetoEstacionamento;

uses
  Forms,
  uProjetoEstacionamento in 'uProjetoEstacionamento.pas' {frEstacionamento};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrEstacionamento, frEstacionamento);
  Application.Run;
end.
