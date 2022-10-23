unit unitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    conexao: TFDConnection;
    tbPacientes: TFDTable;
    dsPacientes: TDataSource;
    dsAgendamentos: TDataSource;
    tbPacientesid: TFDAutoIncField;
    tbPacientesnome: TStringField;
    tbPacientestelefone: TStringField;
    tbPacientesdata_cadastro: TDateField;
    tbPacientescpf: TStringField;
    dsProfissionais: TDataSource;
    tbProfissionais: TFDTable;
    tbProfissionaisid: TFDAutoIncField;
    tbProfissionaisnome: TStringField;
    tbProfissionaisespecialidade: TStringField;
    tbAgendamentos: TFDTable;
    tbAgendamentosid: TFDAutoIncField;
    tbAgendamentosdataconsulta: TDateField;
    tbAgendamentosidpaciente: TIntegerField;
    tbAgendamentosidprofissional: TIntegerField;
    queryAgendamento: TFDQuery;
    dsQueryAgendamento: TDataSource;
    procedure tbPacientesAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.tbPacientesAfterInsert(DataSet: TDataSet);
begin
  tbPacientesdata_cadastro.Value := Date();
end;

end.
