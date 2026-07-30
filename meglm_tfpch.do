*==============================================================================
* How Bank Regulations Impact Efficiency and Performance?
* Hassan, M. and Giouvris, E. (2020),
*   Journal of Financial Economic Policy, 12(4), 545-575.
*   DOI: 10.1108/JFEP-06-2019-0119
*
* Original Stata estimation code for the regulation -> TFP-change regressions.
* Mixed-effects Poisson GLM (log link) of Malmquist TFP change (tfpch) on the
* four World Bank regulation/supervision indices plus freedom and market-
* structure controls, estimated across pre-crisis, crisis and post-crisis
* regimes.
*
* NOTE: The underlying panel is not distributed with this repository (licensing
* restrictions). Provide your own copy as the .dta file below.
*==============================================================================

version 15
clear all
set more off

* --- Load the panel (adjust the path as needed) -----------------------------
use "Bank Regulation and Performance 2000-2017.dta", clear

* Regressors:
*   caprq   capital regulatory requirements index
*   prmont  private monitoring index
*   actrs   activity restrictions index
*   spower  official supervisory power index
*   ecfrdm  economic freedom
*   finfrdm financial freedom
*   conc5   5-bank asset concentration
local X caprq prmont actrs spower ecfrdm finfrdm conc5

*------------------------------------------------------------------------------
* 1. Post-crisis era (2007 onwards)
*------------------------------------------------------------------------------
meglm tfpch `X' if year>=2007, family(poisson) link(log)

*------------------------------------------------------------------------------
* 2. Pre-crisis era (before 2007)
*------------------------------------------------------------------------------
meglm tfpch `X' if year<2007, family(poisson) link(log)

*------------------------------------------------------------------------------
* 3. Global financial crisis window (2007-2011)
*------------------------------------------------------------------------------
meglm tfpch `X' if year>=2007 & year<=2011, family(poisson) link(log)

*------------------------------------------------------------------------------
* 4. Post-2011 (recovery / Basel III implementation)
*------------------------------------------------------------------------------
meglm tfpch `X' if year>2011, family(poisson) link(log)

*==============================================================================
* End of file
*==============================================================================
