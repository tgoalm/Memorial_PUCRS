import pandas as pd   
import sqlalchemy as sqa 
import sqlalchemy.orm as orm

endereco = "Banco_de_Dados_Relacional\\5.08.insercao-dados-dp.db\\dados\\"

dp = pd.read_csv(endereco + "DP.csv", sep = ",")
responsavel_dp = pd.read_excel(endereco + "ResponsavelDP.xlsx")
municipio = pd.read_csv(endereco + "Municipio.csv", sep = ",")
ocorrencias = pd.read_excel(endereco + "ocorrencias.xlsx")

tabela_dp = pd.DataFrame(dp)
tabela_responsavel_dp = pd.DataFrame(responsavel_dp)
tabela_municipio = pd.DataFrame(municipio)
tabela_ocorrencias = pd.DataFrame(ocorrencias)

engine = sqa.create_engine("sqlite:///Banco_de_Dados_Relacional/5.06.orm-dp/database/dp.db")

conexao = engine.connect()
metadado = sqa.schema.MetaData(bind=engine)
Sessao = orm.sessionmaker(bind = engine)
sessao = Sessao()
import orm_dp as ormdp

Dados_dp = tabela_dp.to_dict(orient = "records")
tbl_dp = sqa.Table(ormdp.dp.__tablename__, metadado, autoload = True)

try:
    conexao.execute(tbl_dp.insert(), Dados_dp)
    sessao.commit()
except ValueError:
    ValueError()

print("Dados inseridos com sucesso na tabela dp.")

Dados_responsavel_dp = tabela_responsavel_dp.to_dict(orient = "records")
tbl_responsavel_dp = sqa.Table(ormdp.responsavel_dp.__tablename__, metadado, autoload = True)

try:
    conexao.execute(tbl_responsavel_dp.insert(), Dados_responsavel_dp)
    sessao.commit()
except ValueError:
    ValueError()

print("Dados inseridos com sucesso na tabela responsavel_dp.")

Dados_municipio = tabela_municipio.to_dict(orient = "records")
tbl_municipio = sqa.Table(ormdp.municipio.__tablename__, metadado, autoload = True)

try:
    conexao.execute(tbl_municipio.insert(), Dados_municipio)
    sessao.commit()
except ValueError:
    ValueError()

print("Dados inseridos com sucesso na tabela municipio.")

Dados_ocorrencias = tabela_ocorrencias.to_dict(orient = "records")
tbl_ocorrencias = sqa.Table(ormdp.ocorrencias.__tablename__, metadado, autoload = True)

try:
    conexao.execute(tbl_ocorrencias.insert(), Dados_ocorrencias)
    sessao.commit()
except ValueError:
    ValueError()

print("Dados inseridos com sucesso na tabela ocorrencias.")

conexao.close()
print("Carga de dados finalizada.")