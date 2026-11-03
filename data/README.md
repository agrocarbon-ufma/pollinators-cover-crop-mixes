# Data dictionary

## `raw/Polinizadores_2025_polinizador_visitante_floral_14092026.xlsx`

Field data of flower visitors and microclimate. Use the sheet **DADOS**: the header is on row 4 (read with `skip = 3` in R or `header=3` in pandas). Long format, one row per plot × evaluation × taxon, zeros included: 4,368 rows × 12 columns (24 plots × 13 evaluations × 14 morphogroups). The sheets **MODELO** (blank field form) and **20.09** (draft of one day) are not used.

| Column (Portuguese) | English | Content | Unit |
|---|---|---|---|
| Data | Date | 13 evaluations, 24 Aug to 1 Oct 2025 | date |
| Bloco | Block | 1 to 4 (column name has a trailing space) | – |
| Parcela | Plot | Plot number within the block (1 to 7); plot ID = block + plot, e.g. B1P2 | – |
| Tratamento | Mixture | Carbono = Carbon, Polinizador = Pollinator, Multipropósito = Multipurpose | – |
| Grupo Funcional | Functional group | Polinizador = pollinator; Visitante Floral = other flower visitor | – |
| Nome científico | Scientific name | Taxon or morphotype (table below) | – |
| Polinizadores | Common name | Morphogroup name used in the field | – |
| Quantidade de Polinizadores | Count | Individuals observed in 4 min | individuals |
| Velocidade do Vento (m/s) | Wind speed | 0 to 3.7 | m s⁻¹ |
| Temperatura (C) | Air temperature | 25 to 47.8 | °C |
| Umidade (%) | Relative humidity | 22 to 86 | % |
| Luminosidade | Light intensity | 57.8 to 1,993 | lux |

Morphogroups (total individuals over 13 evaluations):

| Functional group | Scientific name | Common name (field) | English | Total |
|---|---|---|---|---|
| Pollinator | Apidae/Apoidea (morfotipo 1) | Abelhas Pequenas e Negras | Apoidea morphotype 1 (small black bees) | 2,593 |
| Pollinator | Apis mellifera | Abelha Melífera | Western honey bee | 1,039 |
| Pollinator | Apidae/Apoidea (morfotipo 2) | Abelhas Grandes e Negras | Apoidea morphotype 2 (large black bees) | 553 |
| Pollinator | Xylocopa sp. | Abelhas Carpinteiras | Carpenter bees | 477 |
| Pollinator | Trigona pallens | Abelhas Trigona Pallens | Stingless bee | 381 |
| Pollinator | Halictidae - morfotipo verde | Abelhas Verdes | Halictidae (green morphotype) | 3 |
| Pollinator | Bombus sp. | Mamangavas | Bumble bees | 0 |
| Other flower visitor | Syrphidae | Mosca-das-flores | Hoverflies | 521 |
| Other flower visitor | Coleoptera | Besouros | Beetles | 127 |
| Other flower visitor | Hymenoptera (morfotipo 1) | Maribondo preto pequeno | Small black wasps | 76 |
| Other flower visitor | Hymenoptera (morfotipo 2) | Maribondo preto grande | Large black wasps | 8 |
| Other flower visitor | Hymenoptera (morfotipo 3) | Maribondo cabloco | Wasp morphotype 3 | 6 |
| Other flower visitor | Lepidoptera | Borboletas | Butterflies | 7 |
| Other flower visitor | Lepidoptera | Mariposas | Moths | 4 |

Known issues, handled in the notebook (the raw file is not edited):

- One date was typed as text, "13/09/20258"; it is read as 13 September 2025.
- Wind, temperature and some light values are stored as text; they are converted to numbers.
- Butterflies and moths share the scientific name Lepidoptera and are summed as one taxon.
- *Bombus* sp. has no records and is removed.
- The 1 October 2025 evaluation (end of flowering) is excluded from all analyses (`DATAS_EXCLUIDAS` in the cleaning cell).
- Light at block 3, plot 2 on 11 September 2025 is 57.8 lux, much lower than the other plots that day; the value is kept as recorded.

## `raw/cover_crop_biomass_per_plot_2025.csv`

Cover crop fresh biomass per plot, 28 rows × 8 columns.

| Column | Content | Unit |
|---|---|---|
| Block | 1 to 4 | – |
| Plot | Plot number within the block (matches `Parcela` above) | – |
| ID | Plot ID, e.g. B1P2 | – |
| Code | Field code: system + mixture (e.g. R+M1) | – |
| System | Soybean or Rotation | – |
| Mix | M1 = Carbon, M2 = Pollinator, M3 = Multipurpose; empty for the 4 control plots without a mixture (S+F, not evaluated for flower visitors) | – |
| Fresh_mass_g_m2 | Fresh biomass, 0.5 m² quadrat | g m⁻² |
| Fresh_mass_kg_ha | Fresh biomass | kg ha⁻¹ |
