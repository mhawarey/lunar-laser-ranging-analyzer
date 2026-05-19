# Lunar Laser Ranging Analyzer

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A desktop Tkinter analysis tool for **Lunar Laser Ranging (LLR)** normal-point data. Fits the secular Earth–Moon recession (3.82 cm/yr), removes geometric variations (synodic + 18.6-year nodal), and derives a residual-RMS-based bound on the gravitational **Equivalence Principle** parameter |Δa/a| — currently 3 × 10⁻¹⁴ from APOLLO-era data.

## Features

- Synthetic LLR dataset generator covering 1970 → 2026 with epoch-dependent station precision (25 cm at Apollo deployment → sub-cm at APOLLO/Apache Point).
- Weighted least-squares decomposition: synodic (×2 harmonics), 18.6-yr nodal, secular drift.
- Recession-rate estimate with 1-σ uncertainty.
- Equivalence-Principle limit calibrated to the Hofmann & Müller (2018) result.
- CSV import for real normal-point data (e.g., from CDDIS / IERS).

## Why this matters

LLR is the longest-running gravitational-physics experiment in human history. Every reflector pulse since 1969 tightens our bounds on the strong Equivalence Principle, time-variation of *G*, geodetic precession, and lunar interior structure. Yet open analysis tooling for it is essentially non-existent outside the JPL/IERS pipelines. This repo makes the core analysis hands-on.

## Quick start

```bash
pip install -r requirements.txt
python lunar_laser_ranging_analyzer.py
```

## References

- Williams, J. G. & Boggs, D. H. (2016). *Secular tidal changes in lunar orbit and Earth rotation.* JGR Planets, 121(8), 1438–1456.
- Hofmann, F. & Müller, J. (2018). *Relativistic tests with lunar laser ranging.* Classical and Quantum Gravity, 35, 035015.
- Murphy, T. W. (2013). *Lunar laser ranging: the millimeter challenge.* Reports on Progress in Physics, 76, 076901.

## Author

**Dr. Mosab Hawarey**
>
PhD, Geodetic & Photogrammetric Engineering (ITU) | MSc, Geomatics (Purdue) | MBA (Wales) | BSc, MSc (METU)

- GitHub: https://github.com/mhawarey
- Personal: https://hawarey.org/mosab
- ORCID: https://orcid.org/0000-0001-7846-951X

## License

MIT License
