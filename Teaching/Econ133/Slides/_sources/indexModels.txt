.. slideconf::
   :slide_classes: appear

==============================================================================
Index Models
==============================================================================


Motivation
==============================================================================
Recall that for portfolio optimization with :math:`N` assets we must
estimate all means, variances and covariances:

.. rst-class:: to-build

.. math::

   \# \,\, \text{of estimates} & = \frac{N(N+3)}{2}.

.. rst-class:: to-build

Suppose you have a dataset consisting of 5 years of monthly returns
for each asset (i.e. 60 observations per asset):

.. rst-class:: to-build

============  ====  ====  =======  =========
:math:`N`       50   100     1000       3000
============  ====  ====  =======  =========
\# Estimates  1325  5150  501,500  4,504,500
Data          3000  6000   60,000    180,000
============  ====  ====  =======  =========

.. rst-class:: to-build

Note: it is impossible to estimate :math:`P` parameters with :math:`N`
data observations if :math:`N < P`.



Motivation
==============================================================================
The return to an asset can *always* be decomposed into two parts:

.. rst-class:: to-build

.. math::

  r_i & = E[r_i] + \epsilon_i = \mu_i + \epsilon_i,

.. rst-class:: to-build

where :math:`\epsilon_i` has zero mean (:math:`\mu_{\epsilon_i} = 0`)
and standard deviation :math:`\sigma_{\epsilon_i}`.

.. rst-class:: to-build

- The first term of the equation above is the expected return.  

.. rst-class:: to-build

- The second term is the unexpected, or unanticipated return (also
  referred to as a shock).

.. rst-class:: to-build

- This decomposition is not dependent on a model or special
  assumptions.




Single-Factor Model
==============================================================================
Suppose there is a market factor :math:`m` that influences the returns
to all firms.

.. rst-class:: to-build

- Assume we can further decompose the shock, :math:`\epsilon_i`, into
  two parts:

.. rst-class:: to-build

.. math::

   \epsilon_i = \beta_i m + \varepsilon_i.


Single-Factor Model
==============================================================================
In this case the return can be written as a single-factor model:
  
.. rst-class:: to-build

.. math:: r_i & = \mu_i + \beta_i m + \varepsilon_i.
   :label: sfm
  
.. rst-class:: to-build

- :math:`m` and :math:`\varepsilon_i` have means :math:`\mu_m = \mu_{\varepsilon_i}
  = 0`, standard deviations :math:`\sigma_m` and
  :math:`\sigma_{\varepsilon_i}`, and are uncorrelated (:math:`Cov(m, \varepsilon_i) = 0`).

.. rst-class:: to-build

- :math:`\epsilon_i` is still unanticipated since :math:`\mu_{\epsilon_i} = \mu_m + \mu_{\varepsilon_i} = 0`.

.. rst-class:: to-build

- :math:`\beta_i` is a measure of the sensitivity of :math:`r_i` to :math:`m`.




Decomposing Risk
==============================================================================
We can now compute variances using the model: 

.. rst-class:: to-build

.. math::

  \sigma^2_i & \equiv Var(r_i) = Var(\mu_i + \beta_i m +
  \varepsilon_i) \qquad

.. rst-class:: to-build

.. math::

  & \qquad = \beta^2_i Var(m) + Var(\varepsilon_i) + 2\beta_iCov(m,\varepsilon_i)

.. rst-class:: to-build

.. math::

  & = \beta^2_i \sigma^2_m + \sigma^2_{\varepsilon_i}. \qquad \qquad
  \qquad \quad \,

.. rst-class:: to-build

- We made use of :math:`Var(\mu_i) = 0` and :math:`Cov(m,\varepsilon_i) = 0`.

.. rst-class:: to-build

- :math:`Var(r_i)` arises from two separate sources.

  .. rst-class:: to-build

  - :math:`\beta^2_i \sigma^2_m`: risk due to :math:`m`. Since this is common to
    all assets, it is the systematic component.

  .. rst-class:: to-build

  - :math:`\sigma^2_{\varepsilon_i}`: idiosyncratic component specific to each
    asset.
  
  



Decomposing Risk
==============================================================================
We can use the model to compute covariances between assets: 

.. rst-class:: to-build

.. math::

  Cov(r_i,r_j) & = Cov(\mu_i + \beta_i m + \varepsilon_i, \mu_j + \beta_j m + \varepsilon_j)

.. rst-class:: to-build

.. math::

  & = \beta_i \beta_j Cov(m,m) \qquad \quad

.. rst-class:: to-build

.. math::

  & = \beta_i \beta_j \sigma^2_m. \qquad \qquad \quad \enspace

.. rst-class:: to-build

- :math:`Var(\mu_i) = Var(\mu_j) = Cov(\mu_i,\mu_j) = 0`, since :math:`\mu_i`
  and :math:`\mu_j` are constants.

.. rst-class:: to-build

- We assumed :math:`Cov(\varepsilon_i, \varepsilon_j) = 0`.

.. rst-class:: to-build

- Intuitively, unanticipated shocks to different assets shouldn't be
  correlated.




Using an Index as a Factor
==============================================================================
So what *is* :math:`m`?  

.. rst-class:: to-build

- We would like to find a macroeconomic variable correlated with all
  assets.

.. rst-class:: to-build

- It is common to use a market index portfolio, such as the S\&P 500
  (we expect the return of a broad index to be correlated with
  individual assets).



Using an Index as a Factor
==============================================================================
In particular, let's use :math:`m = r_m - \mu_m`, where :math:`r_m` is
the return to the S\&P 500 (:math:`m` stands for market).

.. rst-class:: to-build

- In this case

.. rst-class:: to-build

.. math::

    E[m] & = E[r_m - \mu_m] \quad

.. rst-class:: to-build

.. math::

    & \quad = E[r_m] - \mu_m \,

.. rst-class:: to-build

.. math::

    & = \mu_m - \mu_m \,

.. rst-class:: to-build

.. math::

    & = 0. \qquad \enspace
  
.. rst-class:: to-build
  
- So our assumption of :math:`E[m] = 0` is satisfied.




Single-Index Model
==============================================================================
Substituting this factor into the single-factor model of
Equation :eq:`sfm`:  

.. rst-class:: to-build

.. math::

  r_i & = \mu_i + \beta_i (r_m - \mu_m) + \varepsilon_i.

.. rst-class:: to-build

We then manipulate the equation:

.. rst-class:: to-build

.. math::

  r_i & = r_f - r_f + \mu_i + \beta_i(r_m - r_f + r_f - \mu_m) +
  \varepsilon_i \qquad \quad

.. rst-class:: to-build

.. math::

  & = r_f + \underbrace{(\mu_i - r_f) - \beta_i (\mu_m -
  r_f)}_{\alpha_i} + \beta_i (r_m - r_f) + \varepsilon_i \,

.. rst-class:: to-build

.. math::  \Rightarrow r_{i,e} = \alpha_i + \beta_i r_{m,i} + \varepsilon_i.
   :label: sim




Single-Index Model
==============================================================================
Equation :eq:`sim` is the single-index model.

.. rst-class:: to-build

- Note: :math:`\alpha_i = rp_i - \beta_i rp_m`.




Expected Return-Beta Relationship
==============================================================================
Taking expectations of Equation :eq:`sim`, we find

.. rst-class:: to-build

.. math::

  rp_i & = \alpha_i + \beta_i rp_m,

.. rst-class:: to-build

since :math:`E[\varepsilon_i] = 0`.

.. rst-class:: to-build

- :math:`\beta_i` is known as the security *Beta* and is a measure of
  the sensitivity of asset :math:`i` to the market index.

.. rst-class:: to-build

- :math:`\beta_i rp_m` is the systematic risk premium, since it is the
  premium one could expect for taking on systematic risk.

.. rst-class:: to-build

- :math:`\alpha_i` is the non-market premium. It is the risk premium
  expected above that provided by the market.

.. rst-class:: to-build

In equilibrium we expect :math:`\alpha_i = 0`.



Why :math:`\alpha` Must Be Zero
==============================================================================
Why do we expect :math:`\alpha_i = 0`?  

.. rst-class:: to-build

- Suppose :math:`\alpha_i > 0`.  

.. rst-class:: to-build

- We expect individuals to buy more of asset :math:`i`, putting more
  weight on it in their individual portfolios relative to the market
  portfolio.

.. rst-class:: to-build

- If everyone did this, the market portfolio would put higher weight
  on asset :math:`i`.

  .. rst-class:: to-build

  - *Everyone* deviates from the market portfolio by holding more of
    asset :math:`i`.

  .. rst-class:: to-build

  - But since *everyone* constitutes the market, the market portfolio
    shifts by the exact amount that they want to hold asset :math:`i`.
  


Single-Index Regression
==============================================================================
We express the single-index model as a regression: 

.. rst-class:: to-build

.. math::

  r_{i,e}(t) & = \alpha_i + \beta_i r_{m,e}(t) + \varepsilon_i(t),

.. rst-class:: to-build

where the :math:`t` denotes that the relationship must hold for all
observations through time.

.. rst-class:: to-build

- We estimate the model by collecting historical
  observations for :math:`r_m`, :math:`r_i` and :math:`r_f` and then
  computing the	regression  estimates for :math:`\alpha_i` 
  and :math:`\beta_i`.



Security Characteristic Line
==============================================================================
The regression estimates of :math:`\alpha_i` and :math:`\beta_i` are denoted by
:math:`\hat{\alpha}_i` and :math:`\hat{\beta}_i`.

.. rst-class:: to-build

- The *fitted values* of the regression are

.. rst-class:: to-build

.. math:: \hat{r}_{i,e}(t) & = \hat{\alpha}_i + \hat{\beta}_i r_{m,e}(t).
   :label: scl

.. rst-class:: to-build

- :math:`\hat{r}_{i,e}(t)` are the values of the regression line.

.. rst-class:: to-build

- They are the values we *expect* :math:`r_{i,e}` to take for given
  values of :math:`r_{m,e}`.



Security Characteristic Line
==============================================================================
- Residuals are not included since they are *unexpected* (deviations
  from the line).

.. rst-class:: to-build

- Equation :eq:`scl` is known as the *Security Characteristic Line* or
  SCL.
  

Advantages of the Model
==============================================================================
Suppose we want to use the Index Model to produce the estimates
required for portfolio optimization.

.. rst-class:: to-build

- Assume there are :math:`N` assets in the portfolio. 

.. rst-class:: to-build

- From the model, 

.. rst-class:: to-build

.. math::

   \mu_{i,e} & = \alpha_i + \beta_i \mu_{m,e}

.. rst-class:: to-build

.. math::

   \sigma^2_i & = \beta^2_i \sigma^2_m + \sigma^2_{\varepsilon_i}

.. rst-class:: to-build

and

.. rst-class:: to-build

.. math::

   \sigma_{ij} & = \beta_i \beta_j \sigma^2_m.





Advantages of the Model
==============================================================================
Let's count the number of parameters we must estimate.  

.. rst-class:: to-build

- :math:`N` estimates of :math:`\alpha_i`.  

.. rst-class:: to-build

- :math:`N` estimates of :math:`\beta_i`.  

.. rst-class:: to-build

- :math:`N` estimates of :math:`\sigma^2_{\varepsilon_i}`.  

.. rst-class:: to-build

- One estimate of :math:`\mu_m`.  

.. rst-class:: to-build

- One estimate of :math:`\sigma_m`.  




Advantages of the Model
==============================================================================
That's a total of :math:`3N+2` estimates.  

.. rst-class:: to-build

- We'll see this is much better than :math:`\frac{N(N+3)}{2}`
  estimates without the model.
  



Advantages of the Model
==============================================================================
Suppose you have a dataset consisting of 5 years of monthly returns
for each asset (i.e. 60 observations per asset):

.. rst-class:: to-build

========================  ====  ====  =======  =========
:math:`N`                   50   100     1000       3000
========================  ====  ====  =======  =========
\# Estimates No Model     1325  5150  501,500  4,504,500
\# Estimates Index Model   152   302     3002       9002
Data                      3000  6000   60,000    180,000
========================  ====  ====  =======  =========

.. rst-class:: to-build

Clearly estimation is much more reasonable with the single-index model
for large :math:`N`.



Cost of the Model
==============================================================================
The index model restricts the relationship among the asset variances
and covariances to be of a specific form.

.. rst-class:: to-build

- It is precisely this imposed structure that relieves us of the
  estimation burden.

.. rst-class:: to-build

- However, it oversimplifies the true nature of the world.

.. rst-class:: to-build

- For example, it dichotomizes security risk into two components:
  market and asset specific.

.. rst-class:: to-build

- But neglects to account for industry specific risk, etc.

.. rst-class:: to-build

- In this sense, the model may fail to capture important aspects of
  market.


Index Model Portfolios
==============================================================================
Suppose you hold a portfolio of :math:`N` assets with
weights :math:`\omega_i`, :math:`i=1,\ldots,N`.

.. rst-class:: to-build

- Then

.. rst-class:: to-build

.. math::

   r_{p,e} & = \sum_{i=1}^N \omega_i r_{i,e} = \sum_{i=1}^N \omega_i
   (\alpha_i + \beta_i r_{m,e} + \varepsilon_i) \qquad

.. rst-class:: to-build

.. math::

   & \,= \underbrace{\sum_{i=1}^N \omega_i \alpha_i}_{\alpha_p} +
   \underbrace{\left(\sum_{i=1}^N \omega_i \beta_i \right)}_{\beta_p}
   r_{m,e} + \underbrace{\sum_{i=1}^N \omega_i \varepsilon_i}_{\varepsilon_p}

.. rst-class:: to-build

.. math::

   & = \alpha_p + \beta_p r_{m,e} + \varepsilon_p. \qquad \qquad
   \qquad \quad



Index Model Portfolio Coefficients
==============================================================================
The mathematics highlight some very nice results.  

.. rst-class:: to-build

- :math:`\alpha_p`: The non-market return of the portfolio is a
  weighted average of the non-market returns of individual assets.

.. rst-class:: to-build

- :math:`\beta_p`: The sensitivity of the portfolio to the market
  excess return is a weighted average of the sensitivities of
  individual assets.

.. rst-class:: to-build

- :math:`\varepsilon_p`: The portfolio shock is a weighted average of
  individual shocks.



Index Model Portfolio Risk
==============================================================================
Since the portfolio is described by a single index model, its risk can
be decomposed as

.. rst-class:: to-build

.. math::

   \sigma^2_p & = \beta^2_p \sigma^2_m + \sigma^2_{\varepsilon_p}.

.. rst-class:: to-build

Note that,

.. rst-class:: to-build

.. math::

  \beta^2_p & = \left(\sum_{i=1}^N \omega_i \beta_i\right)^2

.. rst-class:: to-build

*not*

.. rst-class:: to-build

.. math::

  \beta^2_p & = \sum_{i=1}^N \omega^2_i \beta^2_i.



Index Model Portfolio Risk
==============================================================================
The variance of :math:`\varepsilon_p` can be written as

.. rst-class:: to-build

.. math:: \sigma^2_{\varepsilon_p} & \equiv Var(\varepsilon_p) =
	  Var\left(\sum_{i=1}^N \omega_i \varepsilon_i \right)
  :label: simsigeps1

.. rst-class:: to-build

.. math:: & = \sum_{i=1}^N \omega^2_i Var(\varepsilon_i) \qquad \quad \enspace
  :label: simsigeps2

.. rst-class:: to-build

.. math:: & = \sum_{i=1}^N \omega^2_i \sigma^2_{\varepsilon_i} \qquad
	  \qquad \quad
  :label: simsigeps3

.. rst-class:: to-build

Equation :eq:`simsigeps2` follows from Equation :eq:`simsigeps1`
because we assume that :math:`Cov(\varepsilon_i, \varepsilon_j) = 0` for :math:`i
\neq j`.



Index Model Diversification
==============================================================================
In the special case of an equally-weighted portfolio

.. rst-class:: to-build

.. math::

  \sigma^2_{\varepsilon_p} = \frac{1}{N^2} \sum_{i=1}^N \sigma^2_{\varepsilon_i} = \frac{1}{N} \overline{\sigma^2_{\varepsilon_p}},

.. rst-class:: to-build

where

.. rst-class:: to-build

.. math::

  \overline{\sigma^2_{\varepsilon_p}} = \frac{1}{N} \sum_{i=1}^N \sigma^2_{\varepsilon_i}.

.. rst-class:: to-build

Clearly,

.. rst-class:: to-build

.. math::

   \lim_{N \to \infty} \overline{\sigma^2_{\varepsilon_p}} & = 0.




Index Model Diversification
==============================================================================
Recall

.. rst-class:: to-build

.. math::

   \sigma^2_p & = \beta^2_p \sigma^2_m + \sigma^2_{\varepsilon_p}.

.. rst-class:: to-build

Thus,

.. rst-class:: to-build

.. math::

  \lim_{N \to \infty} \sigma^2_p & = \lim_{N \to \infty} \beta^2_p
  \sigma^2_m + \lim_{N \to \infty} \sigma^2_{\varepsilon_p}

.. rst-class:: to-build

.. math::

  & = \beta^2_p \sigma^2_m.




Index Model Diversification
==============================================================================
:math:`\qquad`

.. ifslides::

  .. image:: /_static/IndexModels/pg254_1.jpg
     :width: 8in
     :align: center

.. ifnotslides::

  .. image:: /_static/IndexModels/pg254_1.jpg
     :width: 6in



Index Model Example
==============================================================================
Let's estimate an index model.

.. rst-class:: to-build

- Use SPY (S\&P 500 SPDR) as a surrogate for market returns.

.. rst-class:: to-build

- Estimate the model for SWY (Safeway).

.. rst-class:: to-build

- Download 5 years of monthly data from Yahoo Finance, between 1 Jan
  2007 and 31 Dec 2012.

.. rst-class:: to-build

- Use adjusted closing prices to compute returns.

.. rst-class:: to-build

- Estimate the regression.




Index Model Example
==============================================================================
:math:`\qquad`

.. ifslides::

  .. image:: /_static/IndexModels/spy-swy-tsplot.png
     :width: 8in
     :align: center

.. ifnotslides::

  .. image:: /_static/IndexModels/spy-swy-tsplot.png
     :width: 6in



Index Model Example
==============================================================================
==============  ========  ==============  ========
Parameter       Estimate  Standard Error   P-Value
==============  ========  ==============  ========
:math:`\alpha`  0.003903        0.007387     0.599
:math:`\beta`     0.7620          0.1319  1.92e-07
==============  ========  ==============  ========

The Adjusted :math:`R^2` is 0.3133.



Index Model Example
==============================================================================
.. ifslides::

  .. image:: /_static/IndexModels/spy-swy-reg.png
     :width: 6in
     :align: center

.. ifnotslides::

  .. image:: /_static/IndexModels/spy-swy-reg.png
     :width: 6in

