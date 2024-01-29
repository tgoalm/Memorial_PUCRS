import sqlalchemy as sqlalchemy
import sqlalchemy.orm as orm

engine = sqlalchemy.create_engine("sqlite:///Banco_de_Dados_Relacional//5.05.orm-vendas//database//vendas.db")
base = orm.declarative_base()

class cliente(base):
    __tablename__ = "cliente"
    cpf = sqlalchemy.Column(sqlalchemy.CHAR(14), primary_key=True, index = True)
    nome = sqlalchemy.Column(sqlalchemy.VARCHAR(100), nullable = False)
    email = sqlalchemy.Column(sqlalchemy.VARCHAR(50), nullable = False)
    genero = sqlalchemy.Column(sqlalchemy.VARCHAR(1))
    salario = sqlalchemy.Column(sqlalchemy.DECIMAL(10, 2))
    dia_mes_aniversario = sqlalchemy.Column(sqlalchemy.CHAR(5))
    bairro = sqlalchemy.Column(sqlalchemy.VARCHAR(50))
    cidade = sqlalchemy.Column(sqlalchemy.VARCHAR(50))
    uf = sqlalchemy.Column(sqlalchemy.CHAR(2))

class fornecedor(base):
    __tablename__ = "fornecedor"
    registro_fornecedor = sqlalchemy.Column(sqlalchemy.INTEGER, primary_key = True, index = True)
    nome_fantasia = sqlalchemy.Column(sqlalchemy.VARCHAR(100), nullable = False)
    razao_social = sqlalchemy.Column(sqlalchemy.VARCHAR(100), nullable = False)
    cidade = sqlalchemy.Column(sqlalchemy.VARCHAR(50))
    uf = sqlalchemy.Column(sqlalchemy.CHAR(2))

class produto(base):
    __tablename__ = "produto"
    codigo_barras = sqlalchemy.Column(sqlalchemy.INTEGER, sqlalchemy.ForeignKey("fornecedor.registro_fornecedor", ondelete = "NO ACTION", onupdate = "CASCADE"), index = True)
    registro_fornecedor = sqlalchemy.Column(sqlalchemy.INTEGER, primary_key = True, index = True)
    descricao_produto = sqlalchemy.Column(sqlalchemy.VARCHAR(100), nullable = False)
    genero = sqlalchemy.Column(sqlalchemy.VARCHAR(1))

class vendedor(base):
    __tablename__ = "vendedor"
    registro_vendedor = sqlalchemy.Column(sqlalchemy.INTEGER, primary_key = True, index = True)
    cpf = sqlalchemy.Column(sqlalchemy.CHAR(14), nullable = False)
    nome = sqlalchemy.Column(sqlalchemy.VARCHAR(100), nullable = False)
    email = sqlalchemy.Column(sqlalchemy.VARCHAR(50), nullable = False)
    genero = sqlalchemy.Column(sqlalchemy.VARCHAR(1))

class vendas(base):
    __tablename__ = "vendas"
    id_venda = sqlalchemy.Column(sqlalchemy.INTEGER, primary_key = True, index = True)
    cpf = sqlalchemy.Column(sqlalchemy.CHAR(14), sqlalchemy.ForeignKey("cliente.cpf", ondelete = "NO ACTION", onupdate = "CASCADE"), index = True)
    registro_vendedor = sqlalchemy.Column(sqlalchemy.INTEGER, sqlalchemy.ForeignKey("vendedor.registro_vendedor", ondelete = "NO ACTION", onupdate = "CASCADE"), index = True)
    codigo_barras = sqlalchemy.Column(sqlalchemy.INTEGER, sqlalchemy.ForeignKey("produto.codigo_barras", ondelete = "NO ACTION", onupdate = "CASCADE"), index = True)

try:
    base.metadata.create_all(engine)
    print("Tabelas criadas com sucesso.")
except ValueError:
    ValueError()