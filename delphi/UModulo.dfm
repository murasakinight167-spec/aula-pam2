object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object FDConexão: TFDConnection
    Params.Strings = (
      'Database=D:\Aplicativo Mobile Git\aula-pam2\lanchonete_pam.db'
      'User_Name=root'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 288
    Top = 24
  end
  object FDQUsuarios: TFDQuery
    Connection = FDConexão
    SQL.Strings = (
      'select * from usuarios;')
    Left = 40
    Top = 184
    object FDQUsuariosusuid: TFDAutoIncField
      FieldName = 'usuid'
      Origin = 'usuid'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object FDQUsuariosusunome: TWideMemoField
      FieldName = 'usunome'
      Origin = 'usunome'
      BlobType = ftWideMemo
    end
    object FDQUsuariosusulogin: TWideMemoField
      FieldName = 'usulogin'
      Origin = 'usulogin'
      BlobType = ftWideMemo
    end
    object FDQUsuariosususenha: TWideMemoField
      FieldName = 'ususenha'
      Origin = 'ususenha'
      BlobType = ftWideMemo
    end
    object FDQUsuariosusulogado: TBooleanField
      FieldName = 'usulogado'
      Origin = 'usulogado'
    end
  end
end
