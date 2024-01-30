import pandas as pd
import sqlalchemy as sqa
import sqlalchemy.orm as orm
import orm_dp as orm_dp

engine = (sqa.create_engine("sqlite:///Banco_de_Dados_Relacional/5.06.orm-dp/database/dp.db"))
Sessao = orm.sessionmaker(bind = engine)
sessao = Sessao()

rank_ocorrencias_dp = pd.DataFrame(
    sessao.query(
        orm_dp.dp.nome.label("Departamento de polícia"),
        sqa.func.sum(orm_dp.ocorrencias.quantidade).label("Total")
    ).join(
        orm_dp.ocorrencias,
        orm_dp.ocorrencias.codigo_dp == orm_dp.dp.codigo_dp
    ).join(
        orm_dp.municipio,
        orm_dp.ocorrencias.codigo_ibge == orm_dp.municipio.codigo_ibge
    ).where(
        orm_dp.municipio.regiao == "Capital"
    ).group_by(
        orm_dp.dp.nome
    ).order_by(
        sqa.func.sum(orm_dp.ocorrencias.quantidade).label("Total").desc()
    ).all()
)

rank_ocorrencias_municipio = pd.DataFrame(
    sessao.query(
        orm_dp.municipio.municipio.label("Município"),
        sqa.func.sum(orm_dp.ocorrencias.quantidade).label("Total")
    ).join(
        orm_dp.ocorrencias,
        orm_dp.ocorrencias.codigo_ibge == orm_dp.municipio.codigo_ibge
    ).where(
        orm_dp.ocorrencias.ocorrencia == "roubo_veiculo"
    ).group_by(
        orm_dp.municipio.municipio
    ).order_by(
        sqa.func.sum(orm_dp.ocorrencias.quantidade).label("Total").desc()
    ).all()
)

rank_ocorrencias_dp = pd.DataFrame(
    sessao.query(
        orm_dp.dp.nome.label("Departamento de polícia"),
        sqa.func.sum(orm_dp.ocorrencias.quantidade).label("Total")
    ).join(
        orm_dp.ocorrencias,
        orm_dp.ocorrencias.codigo_dp == orm_dp.dp.codigo_dp
    ).join(
        orm_dp.municipio,
        orm_dp.ocorrencias.codigo_ibge == orm_dp.municipio.codigo_ibge
    ).where(
        orm_dp.municipio.regiao == "Interior", 
        sqa.or_(
            orm_dp.ocorrencias.ocorrencia == "roubo_veiculo", 
            orm_dp.ocorrencias.ocorrencia == "furto_veiculo"
        )
    ).group_by(
        orm_dp.dp.nome
    ).order_by(
        sqa.func.sum(orm_dp.ocorrencias.quantidade).label("Total").desc()
    ).all()
)

print("Ranking de Ocorrências por departamento de polícia.")
print(rank_ocorrencias_dp)

print("Ranking de Ocorrências de roubo de carro por munícipio.")
print(rank_ocorrencias_municipio)

print("Ranking de Ocorrências de roubo ou furto de veículos em regiões do interior por departamento de polícia.")
print(rank_ocorrencias_dp)
