import sqlalchemy as sqlalchemy
import sqlalchemy.orm as orm

engine = sqlalchemy.create_engine("sqlite:///Banco_de_Dados_Relacional//5.06.orm-dp//database//dp.db")
base = orm.declarative_base()

class dp(base):
    __tablename__ = "dp"
    codigo_dp = sqlalchemy.Column(sqlalchemy.INTEGER, primary_key = True, index = True)
    nome = sqlalchemy.Column(sqlalchemy.VARCHAR(100), nullable = False)
    endereco = sqlalchemy.Column(sqlalchemy.VARCHAR(100), nullable = False)

class responsavel_dp(base):
    __tablename__ = "responsavel_dp"
    codigo_dp = sqlalchemy.Column(sqlalchemy.INTEGER, primary_key = True, index = True)
    delegado = sqlalchemy.Column(sqlalchemy.VARCHAR(100), nullable = False)

class municipio(base):
    __tablename__ = "municipio"
    codigo_ibge = sqlalchemy.Column(sqlalchemy.INTEGER, primary_key = True, index = True)
    municipio = sqlalchemy.Column(sqlalchemy.VARCHAR(100), nullable = False)
    regiao = sqlalchemy.Column(sqlalchemy.VARCHAR(25), nullable = False)

class ocorrencias(base):
    __tablename__ = "ocorrencias"
    id_registro = sqlalchemy.Column(sqlalchemy.INTEGER, primary_key = True, index = True)
    codigo_dp = sqlalchemy.Column(sqlalchemy.INTEGER, sqlalchemy.ForeignKey("dp.codigo_dp", ondelete = "NO ACTION", onupdate = "CASCADE"), index = True)
    codigo_ibge = sqlalchemy.Column(sqlalchemy.INTEGER, sqlalchemy.ForeignKey("municipio.codigo_ibge", ondelete = "NO ACTION", onupdate = "CASCADE"), index = True)
    ano = sqlalchemy.Column(sqlalchemy.CHAR(4), nullable = False)
    mes = sqlalchemy.Column(sqlalchemy.CHAR(2), nullable = False)
    ocorrencia = sqlalchemy.Column(sqlalchemy.VARCHAR(100), nullable = False)
    quantidade = sqlalchemy.Column(sqlalchemy.INTEGER, nullable = False)

try:
    base.metadata.create_all(engine)
    print("Tabelas criadas com sucesso.")
except ValueError:
    ValueError()