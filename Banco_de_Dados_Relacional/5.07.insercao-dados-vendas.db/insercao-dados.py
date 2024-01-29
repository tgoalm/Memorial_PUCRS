import pandas as pd   
import sqlalchemy as sqa 
import sqlalchemy.orm as orm

endereco = "Banco_de_Dados_Relacional\\5.07.insercao-dados-vendas.db\\dados\\"
vendedor = pd.read_csv(endereco + "vendedor.csv", sep = ";")
tabela_vendedor = pd.DataFrame(vendedor)
engine = sqa.create_engine("sqlite:///Banco_de_Dados_Relacional/5.05.orm-vendas/database/vendas.db")
sessao = orm.sessionmaker(bind=engine)

sessao = sessao()
import orm_vendas as vd

for i in range(len(vendedor)):
    dados_vendedor = vd.vendedor(
        registro_vendedor = int(vendedor['registro_vendedor'][i]),
        cpf = vendedor['cpf'][i],
        nome = vendedor['nome'][i],
        genero = vendedor['genero'][i],
        email = vendedor['email'][i]
    )
    try:
        sessao.add(dados_vendedor)
        sessao.commit()
    except ValueError:
        ValueError()

print("Dados inseridos com sucesso na tabela Vendedor.")

produto = pd.read_excel(endereco + "produto.xlsx")
tabela_produto = pd.DataFrame(produto)
conn = engine.connect()
metadado = sqa.schema.MetaData(bind=engine)
DadosProduto = tabela_produto.to_dict(orient="records")
tbl_produto = sqa.Table(vd.produto.__tablename__, metadado, autoload = True)

try:
    conn.execute(tbl_produto.insert(), DadosProduto)
    sessao.commit()
except ValueError:
    ValueError()

print("Dados inseridos com sucesso na tabela Produto")
conn.close()