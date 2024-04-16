const String database_name = 'financas';

//tabela de usuarios
const String user_table = 'usuario';
const String iduser = 'iduser';
const String nome = 'nome';
const String cpf = 'cpf';
const String email = 'email';
const String telefone = 'telefone';
const String ativo = 'ativo';

const String CREATE_TABLE_USER = '''
    CREATE TABLE $user_table
    (
      $iduser INTEGER PRIMARY KEY AUTOINCREMENT,
      $nome VARCHAR(100),
      $cpf VARCHAR(50),
      $email VARCHAR(100),
      $telefone VARCHAR(50),
      $ativo INTEGER DEFAULT 1
    )
''';

//tabela de bancos
const String bank_table = 'banco';
const String idbank = 'id';
const String bank = 'nome_banco';

const String CREATE_TABLE_BANK = '''
    CREATE TABLE $bank_table
    (
    $idbank INTEGER PRIMARY KEY AUTOINCREMENT,
    $bank VARCHAR(100)
    )
''';

//tabela categorias
const String category_table = 'categoria';
const String idcategory = 'id';
const String category = 'nome_categoria';

const String CREATE_TABLE_CATEGORY = '''
  CREATE TABLE $category_table
  (
    $idcategory INTEGER PRIMARY KEY AUTOINCREMENT,
    $category VARCHAR(100)
  )
''';

const int DATABASE_VERSION = 1;
