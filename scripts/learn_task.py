import time, pathlib, json, random

def train():
    # ダミーの学習進捗
    metrics = {"epoch": [], "loss": []}
    for e in range(1, 6):
        time.sleep(0.5)
        metrics["epoch"].append(e)
        metrics["loss"].append(round(1.0/(e+0.5)+random.random()*0.05, 4))
        print(f"epoch {e} done")
    pathlib.Path("artifacts").mkdir(exist_ok=True)
    with open("artifacts/metrics.json", "w", encoding="utf-8") as f:
        json.dump(metrics, f, ensure_ascii=False, indent=2)
    print("training done. metrics saved to artifacts/metrics.json")

if __name__ == "__main__":
    train()
