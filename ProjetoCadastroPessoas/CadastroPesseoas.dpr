program CadastroPesseoas;

uses
  Forms,
  uCadastroPessoas in 'uCadastroPessoas.pas' {frCadastroPessoas};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrCadastroPessoas, frCadastroPessoas);
  Application.Run;
end.
