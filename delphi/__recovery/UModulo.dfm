object dm: Tdm
  Height = 480
  Width = 640
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    AcceptEncoding = 'b'
    BaseURL = 'http://localhost/Aula-Pweb/api'
    Params = <>
    SynchronizedEvents = False
    Left = 184
    Top = 32
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 184
    Top = 96
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'text/html'
    Left = 184
    Top = 168
  end
  object RRDSAUsuarios: TRESTResponseDataSetAdapter
    Dataset = usuarios
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    Left = 184
    Top = 248
  end
  object usuarios: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 184
    Top = 328
    object usuariosid: TIntegerField
      FieldName = 'id'
    end
    object usuariosusunome: TStringField
      FieldName = 'usunome'
      Size = 100
    end
    object usuariosusulogin: TStringField
      FieldName = 'usulogin'
      Size = 100
    end
    object usuariosususenha: TStringField
      FieldName = 'ususenha'
      Size = 100
    end
    object usuariosusulogado: TBooleanField
      FieldName = 'usulogado'
    end
  end
end
