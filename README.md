# How Bank Regulations Impact Efficiency and Performance?

Replication and analysis materials for the peer-reviewed article:

> **Hassan, M.** and **Giouvris, E.** (2020), *"How bank regulations impact efficiency and performance?"*,
> **Journal of Financial Economic Policy**, Vol. 12 No. 4, pp. 545–575. Emerald Publishing.
> **DOI:** [10.1108/JFEP-06-2019-0119](https://www.emerald.com/insight/content/doi/10.1108/JFEP-06-2019-0119/full/html)

📄 **Read the published article (Version of Record):** <https://www.emerald.com/insight/content/doi/10.1108/JFEP-06-2019-0119/full/html>

---

## Abstract

This study examines the impact of regulation, and other micro- and macroeconomic factors on
banks' productivity growth, in an international sample of **2,155 banks from 93 countries**.
Results show that high capital requirements enhance productivity growth in North and Latin
American banks, but not in European, African or Asian banks. Supervisory powers drive bank
productivity growth in all regions except Europe and Central Asia. Restrictions on real estate,
insurance and securities activities impede productivity change in all income-level groups but not
in high-income economies. The results also show that market volatility and the Z-score drive
technological change and scale-efficiency growth, but negatively impact pure technical efficiency.

**JEL classification:** C33, G18, G21, G24, G28
**Keywords:** Bank regulation and supervision; Total factor productivity; Bank efficiency;
Productivity growth; Basel II and III accords; Financial sector stability; 2007–2011 financial crisis.

---

## What is in this repository

| Path | Contents |
|------|----------|
| [`notebooks/bank_regulation_efficiency_performance.ipynb`](notebooks/bank_regulation_efficiency_performance.ipynb) | Jupyter notebook reproducing the descriptive statistics, sample composition, productivity dynamics and the regulation–productivity regressions. Output cells (tables and figures) are retained so results are visible **without** the raw data. |
| [`stata/meglm_tfpch.do`](stata/meglm_tfpch.do) | The original Stata estimation code (`meglm ... family(poisson) link(log)`) for the sub-period TFP regressions. |
| [`requirements.txt`](requirements.txt) | Python dependencies for running the notebook. |

## Methodology in brief

Bank-level **Total Factor Productivity (TFP)** change and its Malmquist components (efficiency,
technological, pure-technical and scale-efficiency change) are estimated with a non-parametric
frontier (DEA-based Malmquist index). Productivity change is then regressed on four World Bank
*Bank Regulation and Supervision Survey* dimensions — **capital requirements**, **private
monitoring**, **activity restrictions** and **official supervisory power** — alongside economic
and financial freedom and market-structure controls, using a Poisson model with a log link across
the pre-crisis, 2007–2011 crisis, and post-crisis regimes.

## Data availability

> ⚠️ **The underlying bank-level panel is not included in this repository.**

The dataset is built from licensed and third-party sources (bank financials from BankScope/Orbis,
the World Bank Bank Regulation and Supervision Surveys, the World Bank Global Financial Development
Database, and the Heritage Foundation Index of Economic Freedom) whose licences do not permit
redistribution. The notebook therefore reads from a local file that is **not tracked by git**:

```
data/Bank Regulation and Performance 2000-2017.dta
```

Only aggregated summaries, tables and figures derived from the data appear in the committed
notebook output. Researchers with access to the source databases can reconstruct the panel and
place it at the path above to re-run the analysis.

## Reproducing the analysis

```bash
python -m pip install -r requirements.txt
# place the Stata data file at:  data/Bank Regulation and Performance 2000-2017.dta
jupyter notebook notebooks/bank_regulation_efficiency_performance.ipynb
```

## Citation

If you use these materials, please cite the article:

```bibtex
@article{Hassan2020BankRegulations,
  author  = {Hassan, Mohamad and Giouvris, Evangelos},
  title   = {How bank regulations impact efficiency and performance?},
  journal = {Journal of Financial Economic Policy},
  volume  = {12},
  number  = {4},
  pages   = {545--575},
  year    = {2020},
  doi     = {10.1108/JFEP-06-2019-0119},
  url     = {https://www.emerald.com/insight/content/doi/10.1108/JFEP-06-2019-0119/full/html},
  publisher = {Emerald Publishing}
}
```

A [`CITATION.cff`](CITATION.cff) file is also provided for GitHub's "Cite this repository" feature.

## Authors

- **Mohamad Hassan** — School of Management, Royal Holloway, University of London
- **Evangelos Giouvris** — School of Management, Royal Holloway, University of London

## Licence

- **Code** (the notebook and Stata `.do` file): [MIT License](LICENSE).
- **Documentation, text, tables and figures**: [Creative Commons Attribution 4.0 International (CC-BY-4.0)](LICENSE-CC-BY-4.0.md).

The published article itself is © Emerald Publishing Limited and is **not** redistributed here;
please access the Version of Record via the DOI link above.
