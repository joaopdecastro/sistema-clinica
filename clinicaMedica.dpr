program clinicaMedica;

uses
  Vcl.Forms,
  unitPrincipal in 'unitPrincipal.pas' {formPrincipal},
  unitCadPaciente in 'unitCadPaciente.pas' {formCadPacientes},
  unitCadAgendamento in 'unitCadAgendamento.pas' {formCadAgendamentos},
  unitDM in 'unitDM.pas' {DM: TDataModule},
  unitConsultas in 'unitConsultas.pas' {Consultas},
  unitCadastroProfissionais in 'unitCadastroProfissionais.pas' {cadProfissionais};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TformCadPacientes, formCadPacientes);
  Application.CreateForm(TformCadAgendamentos, formCadAgendamentos);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TConsultas, Consultas);
  Application.CreateForm(TcadProfissionais, cadProfissionais);
  Application.Run;
end.
