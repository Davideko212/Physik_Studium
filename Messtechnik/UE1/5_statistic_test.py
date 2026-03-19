import pandas as pd
from scipy.stats import ttest_ind

if __name__ == '__main__':
    df = pd.read_csv('Legosteine_bereinigt.tsv', sep='\t|;', header=0, index_col=False, engine="python")
    columns_for_ttest = []

    for colname in df.columns:
        if "Roter Stein" not in colname:
            continue
        print(colname)
        columns_for_ttest.append(colname)
        df[colname] = df[colname].str.replace(",", ".")
        df[colname] = df[colname].astype(float)

        mean, std = df[colname].mean(), df[colname].std()
        print(f"Mittelwert: {mean}")
        print(f"Standardabweichung: {std}")
        print()

    t_test = ttest_ind(df[columns_for_ttest[0]], df[columns_for_ttest[1]])
    print(f"T-Statistik: {t_test[0]}")
    print(f"p-Wert: {t_test[1]}")
