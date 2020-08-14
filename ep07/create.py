import pandas as pd
import sqlalchemy
import os
from tqdm import tqdm
import time

import argparse
parser = argparse.ArgumentParser()
parser.add_argument("--date_start", "-s", default="2016-06-01")
parser.add_argument("--date_end", "-e", default="2017-01-01")
args = parser.parse_args()

EP_DIR = os.path.join( os.path.abspath('.'), 'ep07')
EP_DIR = os.path.dirname(os.path.abspath(__file__))

with open( os.path.join(EP_DIR, 'create_table.sql'), 'r' ) as open_file:
    query = open_file.read()

query_format = query.format( date_start=args.date_start,
                             date_end=args.date_end )

queries = query_format.split(";")[:-1]

con = sqlalchemy.create_engine("sqlite:///" + "/home/teo/Área de trabalho/cursoSQL/olist.db")

for q in tqdm(queries):
    con.execute(q)

