We compare IsoHash2 and Saucy/Bliss here

# Recreate

```sh
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.lock
quarto preview
quarto render
```

Generated output is in `_site/`.
GitHub Pages builds and deploys through `.github/workflows/pages.yml`.

## Data

| File in `data/` | Contents |
|---|---|
| `instance_metadata.csv` | GBD instance ID, family, tracks, size and source paths |
| `isohash2_normalized_mi31.csv` | IsoHash2, normalized, `max_iters=31` |
| `isohash2_unlimited_results.csv` | Historical IsoHash2, `max_iters=0` (until stabilization; still a 1-hour CPU limit) |
| `saucybliss_normalized.csv` | Saucy/Bliss, normalized; 12-hour CPU and wall-time limits |
| `split_example.csv` | Results for the example pair |
