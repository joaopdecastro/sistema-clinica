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
      EditMask = '(##) #####-####;1;_'
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
      EditMask = '###.###.###-##;1;_'
      Size = 14
    end
  end
  object tbAgendamentos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = conexao
    TableName = 'clinica.agendamentos'
    Left = 184
    Top = 16
    object tbAgendamentosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbAgendamentosid_paciente: TIntegerField
      FieldName = 'id_paciente'
      Origin = 'id_paciente'
      Required = True
    end
    object tbAgendamentosdata: TDateField
      FieldName = 'data'
      Origin = '`data`'
      Required = True
      EditMask = '##/##/####;1;_'
    end
    object tbAgendamentoshora: TStringField
      FieldName = 'hora'
      Origin = 'hora'
      Required = True
      EditMask = '##:##;1;_'
      Size = 8
    end
    object tbAgendamentosespecialidade: TStringField
      FieldName = 'especialidade'
      Origin = 'especialidade'
      Required = True
      Size = 25
    end
    object tbAgendamentosmedico: TStringField
      FieldName = 'medico'
      Origin = 'medico'
      Required = True
      Size = 30
    end
  end
  object dsPacientes: TDataSource
    DataSet = tbPacientes
    Left = 112
    Top = 72
  end
  object dsAgendamentos: TDataSource
    DataSet = tbAgendamentos
    Left = 184
    Top = 72
  end
end
