object formCadPacientes: TformCadPacientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Pacientes'
  ClientHeight = 475
  ClientWidth = 787
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 27
    Top = 109
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label3: TLabel
    Left = 119
    Top = 109
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label4: TLabel
    Left = 25
    Top = 165
    Width = 75
    Height = 13
    Caption = 'Nome Completo'
  end
  object Label5: TLabel
    Left = 25
    Top = 221
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Label6: TLabel
    Left = 224
    Top = 221
    Width = 85
    Height = 13
    Caption = 'Data de Cadastro'
  end
  object Label7: TLabel
    Left = 371
    Top = 109
    Width = 76
    Height = 13
    Caption = 'Buscar Paciente'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 787
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 28
      Width = 202
      Height = 25
      Caption = 'Cadastro Pacientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 371
      Top = 28
      Width = 390
      Height = 33
      DataSource = DM.dsPacientes
      TabOrder = 0
    end
  end
  object txtid: TDBEdit
    Left = 27
    Top = 128
    Width = 70
    Height = 21
    DataField = 'id'
    DataSource = DM.dsPacientes
    TabOrder = 1
  end
  object txtcpf: TDBEdit
    Left = 119
    Top = 128
    Width = 226
    Height = 21
    DataField = 'cpf'
    DataSource = DM.dsPacientes
    TabOrder = 2
  end
  object txtname: TDBEdit
    Left = 25
    Top = 184
    Width = 317
    Height = 21
    DataField = 'nome'
    DataSource = DM.dsPacientes
    TabOrder = 3
  end
  object txttelefone: TDBEdit
    Left = 27
    Top = 240
    Width = 176
    Height = 21
    DataField = 'telefone'
    DataSource = DM.dsPacientes
    TabOrder = 4
  end
  object txtdata: TDBEdit
    Left = 224
    Top = 240
    Width = 121
    Height = 21
    DataField = 'data_cadastro'
    DataSource = DM.dsPacientes
    ReadOnly = True
    TabOrder = 5
  end
  object txtgrid: TDBGrid
    Left = 368
    Top = 165
    Width = 393
    Height = 284
    DataSource = DM.dsPacientes
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'ID'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome Paciente'
        Visible = True
      end>
  end
  object txtBusca: TEdit
    Left = 371
    Top = 128
    Width = 390
    Height = 21
    TabOrder = 6
    OnChange = txtBuscaChange
  end
end
