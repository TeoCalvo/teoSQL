import pandas as pd
import sqlalchemy
import os

import argparse
parser = argparse.ArgumentParser()
parser.add_argument("--date_start", "-s")
parser.add_argument("--date_end", "-e")
args = parser.parse_args()

EP_DIR = os.path.join( os.path.abspath('.'), 'ep07')
EP_DIR = os.path.dirname(os.path.abspath(__file__))

with open( os.path.join(EP_DIR, 'select.sql'), 'r' ) as open_file:
    query = open_file.read()

query_format = query.format( date_start=args.date_start,
                             date_end=args.date_end )

con = sqlalchemy.create_engine("sqlite:///" + "/home/teo/Área de trabalho/cursoSQL/olist.db")
# mostra as tabelas do banco
con.table_names()

df = pd.read_sql_query(query_format, con) # Dispara a query, executa, traz o dado e tranforma em DF
print("Os dados tem", df.shape[0], "linhas")

df_describe = df.describe().T.reset_index().rename(columns={"index":"stats"})
df_describe['date_start'] = args.date_start
df_describe['date_end'] = args.date_end

df_describe.to_sql('decribe_orders', con, index=False, if_exists='append')