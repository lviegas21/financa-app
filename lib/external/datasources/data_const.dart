const String database_name = 'financas';

//tabela de usuarios
const String user_table = 'usuario';
const String iduser = 'iduser';
const String nome = 'nome';
const String cpf = 'cpf';
const String email = 'email';
const String telefone = 'telefone';
const String receita = 'receita';
const String saldo = 'saldo';
const String despesas = 'despesas';
const String investimentos = 'investimentos';
const String data = 'data';
const String status = 'status';
const String ativo = 'ativo';

const String CREATE_TABLE_USER = '''
    CREATE TABLE $user_table
    (
      $iduser INTEGER PRIMARY KEY AUTOINCREMENT,
      $nome VARCHAR(100) NOT NULL,
      $cpf VARCHAR(50) NOT NULL,
      $email VARCHAR(100) NOT NULL,
      $telefone VARCHAR(50) NOT NULL,
      $receita NUMERIC NOT NULL DEFAULT 0,
      $saldo NUMERIC NOT NULL DEFAULT 0,
      $despesas NUMERIC NOT NULL DEFAULT 0,
      $investimentos NUMERIC NOT NULL DEFAULT 0,
      $data DATE NOT NULL,
      $status VARCHAR(50) NOT NULL,
      $ativo INTEGER NOT NULL DEFAULT 1
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
    $bank VARCHAR(100) NOT NULL
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
    $category VARCHAR(100) NOT NULL
  )
''';

const int DATABASE_VERSION = 1;
