.. slideconf::
   :slide_classes: appear


==============================================================================
Risk and Risk Premiums
==============================================================================

Probabilistic Returns
==============================================================================
Since we don't know future returns, we will treat them as random
variables.  

.. rst-class:: to-build

- We can model them as discrete random variables, taking one of a
  finite set of possible values in the future: :math:`r(s)`, :math:`s
  = 1, \ldots, S`.  

  .. rst-class:: to-build

  - In this case the probability of each value is :math:`p(s)`,
    :math:`s=1,\ldots,S`.

.. rst-class:: to-build
    
- We can model them as continuous random variables, taking one of an
  infinite set of possible values in the future: :math:`r(s)`,
  :math:`s \in \mathcal{S}` (e.g. :math:`\mathcal{S} = (-\infty, \infty)`).

  .. rst-class:: to-build

  - In this case the probability of each value (kind of) is
    :math:`f(s)`, :math:`s \in \mathcal{S}`.
    




Expected Returns
==============================================================================
Our best guess for the future return is the expected value: 

.. rst-class:: to-build

.. math::

   E[r] & \equiv \mu = \sum_{s=1}^S r(s) p(s),

.. rst-class:: to-build

 or

.. rst-class:: to-build

.. math::

   E[r] & \equiv \mu = \int_{s \in \mathcal{S}} r(s) f(s) dr(s).



Return Volatility
==============================================================================
The amount of uncertainty in potential returns can be measured by the
variance or standard deviation.

.. rst-class:: to-build

- Volatility of returns specifically refers to standard deviation, NOT
  VARIANCE.

.. rst-class:: to-build

.. math::

   Std(r) & \equiv \sigma = \sqrt{\sum_{s=1}^S (r(s) - \mu)^2 p(s)},

.. rst-class:: to-build

or

.. rst-class:: to-build

.. math::

   Std(r) & \equiv \sigma = \sqrt{\int_{s \in \mathcal{S}} (r(s) -
   \mu_r)^2 f(s) dr(s)}.


Expectation and Variance Example
==============================================================================

=================  ============  =======
State              Probability   Return
=================  ============  =======
Severe Recession   0.05          -0.37
Mild Recession     0.25          -0.11
Normal Growth      0.40          0.14
Boom               0.30          0.30
=================  ============  =======

.. rst-class:: to-build
 
What are :math:`\mu` and :math:`\sigma`?

.. rst-class:: to-build

.. math::

   \mu & = 0.05*(-0.37) + 0.25*(-0.11) \\
   & \qquad \qquad + 0.40*0.14 + 0.30*0.30 = 0.10

.. rst-class:: to-build

.. math::

   E[r^2] & = 0.05*(-0.37)^2 + 0.25*(-0.11)^2 \\
   & \qquad \qquad + 0.40*(0.14)^2 + 0.30*(0.30)^2 = 0.04471

.. rst-class:: to-build

.. math::

   \sigma & = \sqrt{E[r^2] - \mu^2} = 0.04471 - 0.10^2 = 0.03471



Assumption of Normality
==============================================================================
It will often be convenient to assume asset returns are normally
distributed.

.. rst-class:: to-build

- In this case, we will treat returns as continuous random variables.

.. rst-class:: to-build

- We can use the normal density function to compute probabilities of
  possible events.

.. rst-class:: to-build

- We will not assume that returns of different assets come from the
  same normal, but instead FROM DIFFERENT normal distributions.




Differing Normal Distributions
==============================================================================
As an example, suppose that  

.. rst-class:: to-build

- Amazon stock (AMZN) has an expected monthly return of 3\% and a
  volatility (standard deviation) of 8\%.

.. rst-class:: to-build

- Coca-Cola stock (KO) has an expected monthly return of 1\% and a
  volatility (standard deviation) of 4\%.

.. rst-class:: to-build

What do their probability distributions look like?



Amazon Distribution
==============================================================================
.. ifslides::

  .. image:: /_static/amazon.png
     :width: 7.5in
     :align: center

.. ifnotslides::

  .. image:: /_static/amazon.png
     :width: 6in



Coca-Cola Distribution
==============================================================================
.. ifslides::

  .. image:: /_static/amazon_coke.png
     :width: 7.5in
     :align: center

.. ifnotslides::

  .. image:: /_static/amazon_coke.png
     :width: 6in



Implications of Normality
==============================================================================
The assumption of normality is convenient because 

.. rst-class:: to-build

- If we form a portfolio of assets that are normally distributed, then
  the distribution of the portfolio return is also normally
  distributed.

  .. rst-class:: to-build

  - Recall that if :math:`X_i \sim \mathcal{N}(\mu_i, \sigma_i)`,
    :math:`i = 1,\ldots,N`, then :math:`W = \sum_{i=1}^N w_i X_i` is
    also normally distributed (where :math:`w_i` are constant
    weights).

.. rst-class:: to-build

- The mean and the variance (or standard deviation) fully characterize
  the distribution of returns.

.. rst-class:: to-build

- The variance or standard deviation alone is an appropriate measure
  of risk (no other measure is needed).




Estimating Means and Volatilities
==============================================================================
Typically we don't know the true mean and standard deviation of Amazon
and Coca-Cola.  What do we do?

.. rst-class:: to-build

- Use historical data to estimate them.  

.. rst-class:: to-build

- Collect :math:`N+1` past prices of each asset for a particular
  interval of time (daily, monthly, quarterly, annually).  

.. rst-class:: to-build

- Compute :math:`N` returns using the formula

.. rst-class:: to-build

.. math::

   r_t & = \frac{P_t - P_{t-1}}{P_{t-1}}.

.. rst-class:: to-build

We don't include dividends in the return calculation above, because we
use ADJUSTED closing prices, which account for dividend payments
directly in the prices.



Estimating Means and Volatilities
==============================================================================
Compute the sample mean of returns

.. rst-class:: to-build

.. math::

   \hat{\mu} & = \frac{1}{N} \sum_{t=1}^N r_t.

.. rst-class:: to-build

Compute the sample standard deviation of returns

.. rst-class:: to-build

.. math::

   \hat{\sigma}^2 & = \frac{1}{N-1} \sum_{t=1}^N (r_t -
   \hat{\mu})^2.

.. rst-class:: to-build

The "hats" indicate that we have estimated :math:`\mu` and
:math:`\sigma`: these are not the true, unknown values.



Estimating Means and Volatilities - Example
==============================================================================
Let's collect the :math:`N = 13` closing prices for Amazon and
Coca-Cola between 3 Jan 2012 and 2 Jan 2013.

.. rst-class:: to-build

- We will only keep the first closing price on the first trading day
  of each month.

.. rst-class:: to-build

- We can then compute 12 monthly returns by computing the difference
  in month prices at the beginning of each month, dividing by the
  price of the previous month.

.. rst-class:: to-build

- This will give us 12 returns that we can use to estimate the means
  and standard deviations.
  



Amazon Monthly Prices
==============================================================================
.. ifslides::

  .. image:: /_static/amzn-monthly.png
     :width: 7.5in
     :align: center

.. ifnotslides::

  .. image:: /_static/amzn-monthly.png
     :width: 6in



Coca-Cola Monthly Prices
==============================================================================
.. ifslides::

  .. image:: /_static/ko-monthly.png
     :width: 7.5in
     :align: center

.. ifnotslides::

  .. image:: /_static/ko-monthly.png
     :width: 6in



Computing Returns and Moments
==============================================================================
.. ifslides::

  .. image:: /_static/amzn-coke-xls.png
     :width: 8.5in
     :align: center

.. ifnotslides::

  .. image:: /_static/amzn-coke-xls.png
     :width: 6in




Risk-Free Returns
==============================================================================
We will typically assume that a risk-free asset is available for
purchase.  

.. rst-class:: to-build

- We will denote the risk-free return as :math:`r_f`. 

.. rst-class:: to-build

- If an asset is risk free, its return is certain and has no
  variability:

.. rst-class:: to-build

.. math::

   E[r_f] & = r_f \\
   Var(r_f) & = 0.




T-Bills as Risk-Free Assets
==============================================================================
The return on a short-term government t-bill is usually considered
risk free:

.. rst-class:: to-build

- Although the price changes over time, the risk of default is
  extremely low.

.. rst-class:: to-build

- Also, the holding period return can be determined at the beginning
  of the holding period (unlike other risky assets).




Compensation for Risk
==============================================================================
If you can invest in a risk-free asset, why would you purchase a
risky asset instead?  

.. rst-class:: to-build

- Risky assets compensate for risk through higher expected
  return.  

.. rst-class:: to-build

- If risky assets didn't offer higher expected return, everyone would
  sell them, leading to a price decline today and a higher expected
  return:

.. rst-class:: to-build

.. math::

   \uparrow E[r_t] & = \frac{E[P_t] - \downarrow
   P_{t-1}}{\downarrow P_{t-1}}

.. rst-class:: to-build

- There is no guarantee that the actual return will be higher -- only
  its expected value.




Risk Premium \& Excess Returns
==============================================================================
The amount by which the expected return of some risky asset :math:`A`
exceeds the risk-free return is known as the *risk premium*:

.. rst-class:: to-build

.. math::

   \text{rp}_{A,t} & = E[r_{A,t}] - r_{f,t}.

.. rst-class:: to-build

The *excess return* measures the difference between a previously
observed holding period return of :math:`A` and the risk-free:

.. rst-class:: to-build

.. math::

   \text{er}_{A,t-1} & = r_{A,t-1} - r_{f,t-1}.



Risk Premium \& Excess Returns
==============================================================================
- Note that excess returns can only be computed with past returns.

.. rst-class:: to-build

- We estimate risk premia with the sample mean of historical excess
  returns.




Sharpe Ratio
==============================================================================
The *Sharpe Ratio* is a measure of how much risk premium investors
require, per unit of risk:

.. rst-class:: to-build

.. math::

   \text{SR}_{A,t} & = \frac{\mu_{A,t} - r_{f,t}}{\sigma_{A,t}}

.. rst-class:: to-build

- The Sharpe Ratio is a measure of risk aversion. 

.. rst-class:: to-build

- It is often referred to as the price of risk. 

.. rst-class:: to-build
  
- The Sharpe Ratio for a broad market index of assets (like the
  S\&P 500) is referred to as the market price of risk.  

.. rst-class:: to-build

- The true Sharpe Ratio is unknown, since we don't know
  :math:`\mu_{A,t}` and :math:`\sigma_{A,t}`, but we can estimate
  these with historical returns.




Risk Premium Example
==============================================================================
Suppose the monthly risk-free rate is 0.2\%. What is the estimated
risk premium and Sharpe Ratio for Amazon stock?

.. rst-class:: to-build

.. math::

   rp_{AMZN} = 0.03 - 0.002 = 0.028

.. rst-class:: to-build

.. math::

   SR_{AMZN} = \frac{rp_{AMZN}}{0.08} = 0.35
