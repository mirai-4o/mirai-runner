import datetime, pathlib, sys

def main():
    now = datetime.datetime.now().isoformat()
    out = pathlib.Path("logs"); out.mkdir(exist_ok=True)
    with open(out / "oss_sync.log", "a", encoding="utf-8") as f:
        f.write(f"[{now}] OSS sync placeholder OK\n")
    print("OSS sync done:", now)

if __name__ == "__main__":
    main()
