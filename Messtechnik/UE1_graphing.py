import matplotlib.pyplot as plt
import pandas as pd

if __name__ == '__main__':
    df = pd.read_csv('PMT1 - Legosteine messen - Formularantworten 1.tsv', sep='\t|;', header=0, index_col=False)
    deviation = df.std(axis=0, skipna=True, numeric_only=True)
    for colname in df.columns:
        print(colname)
        if colname == "Zeitstempel":
            continue
        df[colname] = df[colname].str.replace(",", ".")
        df[colname] = df[colname].astype(float)
