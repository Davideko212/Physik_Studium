import math
import matplotlib.pyplot as plt

LAMBDA = 40
THRESHOLD = 49
K_MAX = 75


def P_lambda(lmbd: int, k: int) -> float:
    return pow(lmbd, k) / math.factorial(k) * math.exp(-lmbd)


if __name__ == "__main__":
    k_values = list(range(0, K_MAX + 1))
    probs = [P_lambda(LAMBDA, k) for k in k_values]

    p_no_alarm = sum(P_lambda(LAMBDA, k) for k in range(0, THRESHOLD))
    p_alarm = 1 - p_no_alarm

    colors = ["red" if k >= THRESHOLD else "blue" for k in k_values]
    fig, ax = plt.subplots(figsize=(12, 6))
    bars = ax.bar(k_values, probs, color=colors, width=0.8, zorder=3)

    ax.set_xlabel("Anzahl Impulse $k$ in 1 Sekunde", fontsize=13)
    ax.set_ylabel("Wahrscheinlichkeit $P_{40}(k)$", fontsize=13)
    ax.set_title(
        "Poisson-Verteilung der Impulszahl ($\\lambda = 40$)\n"
        "und Wahrscheinlichkeit für Alarmsignal ($k \\geq 50$)",
        fontsize=14, fontweight="bold", pad=14,
    )

    ax.set_xlim(-1, K_MAX + 1)
    ax.set_ylim(0, max(probs) * 1.15)
    ax.grid(axis="y", linestyle="--", linewidth=0.6, alpha=0.6, zorder=0)
    ax.tick_params(labelsize=11)
    plt.show()
