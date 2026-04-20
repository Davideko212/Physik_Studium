import math

def P_lambda(lmbd: int, k: int) -> float:
    return pow(lmbd, k) / math.factorial(k) * math.exp(-lmbd)

if __name__ == "__main__":
    sum = 0

    for k in range(0, 50):
        sum += P_lambda(40, k)
    
    print(sum)
    print(1 - sum)
