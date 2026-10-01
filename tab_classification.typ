// Classification table — cluster:brio + cluster:similar
// Columns:
//   Real Platform: hardware used (BRIO / LEAP / CME / — for sim-only)
//   Simulator:     physics engine or custom sim (ODE / Custom / Physics+GP / —)
//   Algorithm:     primary learning/control method; — if paper is non-algorithmic
//   Knowledge Transfer: ✗ if none; otherwise explicit S2R methods
//     DR  = Domain Randomisation
//     Sys-ID = System Identification (parameter optimisation)
//     GP Res. = Gaussian-Process residual model
//
// Rows are ordered chronologically.

#figure(
  {
    set text(size: 9pt)
    table(
      columns: (2.4fr, 0.65fr, 0.8fr, 1.4fr, 1.1fr),
      align: (left + horizon, center + horizon, center + horizon,
              left + horizon, left + horizon),
      stroke: 0.5pt,
      inset: (x: 6pt, y: 5pt),

      // ── Header ────────────────────────────────────────────────────────────
      table.header(
        [*Citation Key*],
        [*Real\ Platform*],
        [*Simulator*],
        [*(Learning)\ Algorithm*],
        [*Knowledge\ Transfer*],
      ),

      // ── 1995 ──────────────────────────────────────────────────────────────
      `waldemarkUsingReinforcementLearning1995`,
        [BRIO], [Custom], [SRV-Net (RL)], [✗],

      // ── 2007 ──────────────────────────────────────────────────────────────
      `abdenebaouiDiplomThesisImplementationEvaluation2007`,
        [—], [ODE], [QCON], [✗],

      `abdenebaouiConnectionistArchitectureLearning2007`,
        [—], [ODE], [QCON], [✗],

      // ── 2009 ──────────────────────────────────────────────────────────────
      `metzenBRIOLabyrinthGameA2009`,
        [BRIO], [ODE], [SARSA(λ) + CMAC], [✗],

      `bergattQuantificationMinimizationSimulationRealityGap2009`,
        [BRIO], [ODE], [—], [Sys-ID],

      // ── 2010 ──────────────────────────────────────────────────────────────
      `ofjallLEAPPlatformEvaluation2010`,
        [LEAP], [—], [—], [✗],

      // ── 2016 ──────────────────────────────────────────────────────────────
      `ofjallCombiningVisionMachine2016`,
        [BRIO], [—], [PID + LWPR], [✗],

      // ── 2018 ──────────────────────────────────────────────────────────────
      `jhaLearningTasksComplex`,
        [CME], [Custom], [MF + MB RL], [✗],

      // ── 2019 ──────────────────────────────────────────────────────────────
      `baarSimtoRealTransferLearning2019`,
        [CME], [Custom], [RL], [DR],

      // ── 2021 ──────────────────────────────────────────────────────────────
      `otaDataEfficientLearningComplex2021`,
        [CME], [Physics+GP], [NMPC], [Sys-ID, GP Res.],

      // ── 2023 ──────────────────────────────────────────────────────────────
      `cyberrunner`,
        [BRIO], [—], [DreamerV3], [✗],

      // ── 2025 ──────────────────────────────────────────────────────────────
      `cyberrunner2`,
        [BRIO], [—], [DreamerV3 + PER], [✗],
    )
  },
  caption: [Classification of publications tackling the labyrinth game.],
) <tab:classification>
