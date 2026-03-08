import os
from pathlib import Path
from typing import Dict
import requests as r

RM_IP = "10.11.99.1"


def fetch_dir_structure(dir_id: str = "", recursive: bool = True) -> Dict:
    docs = r.get(f"http://{RM_IP}/documents/{dir_id}")
    ret = {}

    for item in docs.json():
        if item["Type"] == "CollectionType":
            if not recursive:
                ret[item["ID"]] = {"CollectionName": item["VissibleName"]}
                continue
            recur = fetch_dir_structure(item["ID"])
            recur["CollectionName"] = item["VissibleName"]
            ret[item["ID"]] = recur
        else:
            ret[item["ID"]] = item["VissibleName"]

    return ret


def backup_dir_structure(dir_id: str = "", out_dir: Path = Path(".")):
    fetched = fetch_dir_structure(dir_id, False)

    for item in fetched:
        print(fetched[item])
        if isinstance(fetched[item], dict):
            backup_dir_structure(item, out_dir.joinpath(fetched[item]["CollectionName"]))
            continue

        if fetched[item][-4:] != ".pdf":
            fetched[item] += ".pdf"
        path = Path(out_dir, fetched[item])
        if not os.path.exists(out_dir):
            os.makedirs(out_dir)

        b64_pdf = r.get(f"http://{RM_IP}/download/{item}/pdf").content
        with open(path, "wb") as f:
            f.write(b64_pdf)


if __name__ == "__main__":
    try:
        r.get(f"http://{RM_IP}/")
    except:
        print("ERROR: ReMarkable Tablet unreachable")
        exit()
    backup_dir_structure()
