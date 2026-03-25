import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
from scipy.stats import ttest_ind, norm

if __name__ == '__main__':
    df = pd.read_csv('Legosteine_bereinigt.tsv', sep='\t|;', header=0, index_col=False, engine="python")
    columns_for_ttest = []

    fig, ax = plt.subplots(figsize=(10, 6))
    colors = ["steelblue", "tomato"]

    for color, colname in zip(colors, [c for c in df.columns if "Roter Stein" in c]):
        columns_for_ttest.append(colname)
        df[colname] = df[colname].str.replace(",", ".").astype(float)

        data = df[colname].round(1)
        mean, std = df[colname].mean(), df[colname].std()
        full_range = np.arange(data.min(), data.max() + 0.1, 0.1)

        ax.hist(data, bins=full_range, density=True, alpha=0.3, color=color)
        x = np.linspace(data.min(), 71, 300)
        ax.plot(x, norm.pdf(x, mean, std), color=color, linewidth=2, label=f"{colname} (μ={mean:.2f}, σ={std:.2f})")
        ax.axvline(mean, color=color, linestyle="--", linewidth=1)

    t_test = ttest_ind(df[columns_for_ttest[0]], df[columns_for_ttest[1]])
    p = t_test[1]

    y_max = ax.get_ylim()[1]
    x1 = df[columns_for_ttest[0]].mean()
    x2 = df[columns_for_ttest[1]].mean()
    bracket_y = y_max * 0.95

    ax.annotate("", xy=(x2, bracket_y), xytext=(x1, bracket_y), arrowprops=dict(arrowstyle="-", color="black", lw=1.5))
    ax.annotate("", xy=(x1, bracket_y), xytext=(x1, bracket_y * 0.9), arrowprops=dict(arrowstyle="-", color="black", lw=1.5))
    ax.annotate("", xy=(x2, bracket_y), xytext=(x2, bracket_y * 0.9), arrowprops=dict(arrowstyle="-", color="black", lw=1.5))

    ax.text((x1 + x2) / 2, bracket_y * 1.01, f"p={p:.4f}", ha="center", va="bottom", fontsize=10)

    ax.set_xlabel("Gemessene Länge [mm]")
    ax.set_ylabel("Dichte")
    ax.legend()
    plt.tight_layout()
    plt.show()
