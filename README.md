# Flower visitors in purpose-designed cover crop mixtures (Amazon–Cerrado transition, Brazil)

Data and analysis code for the article *Cover crop mixture identity drives pollinator community structure during the dry season in the Amazon–Cerrado transition, Brazil* (working title; manuscript in preparation).

AGROCarbon research group, Centro de Ciências de Chapadinha, Universidade Federal do Maranhão (UFMA), Chapadinha, MA, Brazil.

## Study

- **Site:** Chapadinha, Maranhão, Brazil (3.74° S, 43.36° W), Amazon–Cerrado transition, Aw climate, dry season.
- **Treatments:** three cover crop mixtures sown on 19 July 2025: Carbon (M1), Pollinator (M2) and Multipurpose (M3).
- **Design:** randomized complete blocks, 4 blocks, 2 plots of 5 × 5 m per mixture per block (24 plots).
- **Sampling:** 13 timed visual observations (4 min per plot) from 24 August to 1 October 2025 (36 to 74 days after sowing). Flower visitors were identified visually to morphogroups; no insects were collected. Air temperature, relative humidity, wind speed and light intensity (lux) were recorded at each observation.
- **Analyses:** the 1 October 2025 evaluation (end of flowering, almost no visits) is excluded, so the analyses use 12 evaluations (36 to 66 days after sowing) and 5,740 visitors.

## Repository structure

```
.
├── README.md
├── LICENSE.txt                 MIT licence (code)
├── CITATION.cff                how to cite this repository
├── data/
│   ├── README.md               data dictionary (columns, units, known issues)
│   └── raw/
│       ├── Polinizadores_2025_polinizador_visitante_floral_14092026.xlsx   field data (sheet DADOS)
│       └── cover_crop_biomass_per_plot_2025.csv                            cover crop fresh biomass per plot
└── code/
    ├── Analise_polinizadores_v2.ipynb        full analysis (Google Colab, Python runtime with R cells via rpy2)
    └── session_info.R                        records R and package versions after a run
```

The raw files are kept exactly as recorded in the field. All cleaning (date typo, numbers stored as text, English names of mixtures and taxa, exclusion of 1 October) is done inside the notebook, so every step from raw data to results is traceable.

## How to reproduce the analysis

1. Open `code/Analise_polinizadores_v2.ipynb` in Google Colab.
2. Create the folder `/content/dados` and upload the two files from `data/raw/` into it.
3. Skip the first code cell (section 1), which downloads the same files from the authors' Google Drive, and run the notebook from section 2 onwards.
4. The notebook writes clean tables to `out/data`, statistical tables to `out/tables` and figures (journal submission format, English) to `out/figs`.
5. The last two cells upload the results to the authors' Google Drive and build the results document; they need Drive access and can be skipped.
6. Run `code/session_info.R` in a final `%%R` cell to save `out/sessionInfo.txt` and `out/package_versions.csv`.

Main R packages: readxl, dplyr, tidyr, stringr, ggplot2, patchwork, scales, glmmTMB, emmeans, multcomp, multcompView, car, performance, DHARMa, vegan, indicspecies, iNEXT, bipartite, png. Exact versions are listed in `sessionInfo.txt` after a run.

## Licence

Code: MIT licence (see `LICENSE.txt`). Data: Creative Commons Attribution 4.0 International (CC BY 4.0). Please cite the article when using the data.

## Contact

Grazieli Brito da Silva (first author) and Gustavo André de Araújo Santos (corresponding author, gustavo.andre@ufma.br).
