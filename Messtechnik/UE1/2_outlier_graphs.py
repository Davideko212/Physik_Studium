import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

if __name__ == '__main__':
    df = pd.read_csv('Legosteine_unbereinigt.tsv', sep='\t|;', header=0, index_col=False, engine="python")
    for colname in df.columns:
        if colname == "Zeitstempel":
            continue
        df[colname] = df[colname].str.replace(",", ".")
        df[colname] = df[colname].astype(float)

        data = df[colname].round(1)
        full_range = np.arange(data.min(), data.max() + 0.1, 0.1)

        mean, std = df[colname].mean(), df[colname].std()
        outliers = data[np.abs(data - mean) > std]
        normal = data[np.abs(data - mean) <= std]

        plt.hist(data, bins=full_range)
        plt.yscale("log")
        plt.vlines(outliers, ymin=-1, ymax=1, color='red', linewidth=2)
        plt.title(colname)
        plt.xlabel("Gemessene Länge [mm]")
        plt.ylabel("Anzahl Messungen")
        plt.show()
