object DM: TDM
  OldCreateOrder = False
  Height = 323
  Width = 611
  object conexao: TFDConnection
    Params.Strings = (
      'Database=clinica'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object tbPacientes: TFDTable
    Active = True
    AfterInsert = tbPacientesAfterInsert
    IndexFieldNames = 'id'
    Connection = conexao
    TableName = 'pacientes'
    Left = 112
    Top = 16
    object tbPacientesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbPacientesnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 80
    end
    object tbPacientestelefone: TStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
      Size = 16
    end
    object tbPacientesdata_cadastro: TDateField
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
      Required = True
    end
    object tbPacientescpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      Size = 14
    end
  end
  object dsPacientes: TDataSource
    DataSet = tbPacientes
    Left = 112
    Top = 80
  end
  object dsAgendamentos: TDataSource
    DataSet = tbAgendamentos
    Left = 216
    Top = 80
  end
  object dsProfissionais: TDataSource
    DataSet = tbProfissionais
    Left = 320
    Top = 80
  end
  object tbProfissionais: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = conexao
    TableName = 'clinica.profissionais'
    Left = 320
    Top = 16
    object tbProfissionaisid: TFDAutoIncField
      DisplayWidth = 5
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbProfissionaisnome: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 88
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object tbProfissionaisespecialidade: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 33
      FieldName = 'especialidade'
      Origin = 'especialidade'
      Size = 30
    end
  end
  object tbAgendamentos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = conexao
    TableName = 'agendamentos'
    Left = 216
    Top = 24
    object tbAgendamentosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbAgendamentosdataconsulta: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataconsulta'
      Origin = 'dataconsulta'
    end
    object tbAgendamentosidpaciente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idpaciente'
      Origin = 'idpaciente'
    end
    object tbAgendamentosidprofissional: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idprofissional'
      Origin = 'idprofissional'
    end
  end
  object queryAgendamento: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      
        'select p.id, p.nome, a.dataconsulta, f.nome, f.especialidade fro' +
        'm pacientes p'
      '    join agendamentos a'
      '    on p.id = a.idpaciente'
      '    join profissionais f'
      '    on f.id = a.idprofissional'
      '    order by p.nome;')
    Left = 216
    Top = 136
    ParamData = <
      item
        Name = 'pConsulta'
        ParamType = ptInput
      end
      item
        Name = 'pId'
      end
      item
        Name = 'pData'
      end
      item
        Name = 'pIdPaciente'
      end
      item
        Name = 'pIdProfissional'
      end>
  end
  object dsQueryAgendamento: TDataSource
    DataSet = queryAgendamento
    Left = 216
    Top = 192
  end
end
