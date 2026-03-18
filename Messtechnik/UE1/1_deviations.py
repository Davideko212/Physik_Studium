import matplotlib.pyplot as plt
import pandas as pd

if __name__ == '__main__':
    df = pd.read_csv('Legosteine_unbereinigt.tsv', sep='\t|;', header=0, index_col=False, engine="python")
    for colname in df.columns:
        if colname == "Zeitstempel":
            continue
        print(colname)
        df[colname] = df[colname].str.replace(",", ".")
        df[colname] = df[colname].astype(float)
        print(df[colname].std())
