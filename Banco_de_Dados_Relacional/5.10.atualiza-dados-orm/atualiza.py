import sqlalchemy as sqa
import orm_dp as orm_dp

engine = (sqa.create_engine("sqlite:///Banco_de_Dados_Relacional/5.06.orm-dp/database/dp.db"))
metadado = sqa.MetaData(bind=engine)
sqa.MetaData.reflect(metadado)

tabela_municipio = metadado.tables[orm_dp.municipio.__tablename__]
atualiza_regiao = sqa.update(tabela_municipio).values(
    {"regiao": "Capital"}
).where(
    tabela_municipio.c.municipio == "Rio de Janeiro"
)

try:
    engine.execute(atualiza_regiao)
    print("Dados atualizados.")
except ValueError:
    ValueError()