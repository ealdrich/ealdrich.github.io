.. slideconf::
   :slide_classes: appear


==============================================================================
Asset Allocation
==============================================================================


Utility
==============================================================================
Investors usually care about maximizing utility.

.. rst-class:: to-build

- Suppose all investors have utility function 

.. rst-class:: to-build

.. math::

   U(\mu, \sigma) & = \mu - \gamma \sigma^2.

.. rst-class:: to-build

- :math:`\mu` and :math:`\sigma` are the mean and standard deviation
  of asset returns.

.. rst-class:: to-build

- What is the utility of holding a risk-free asset :math:`U(\mu_f,
  \sigma_f)`?

.. rst-class:: to-build

.. math::

   U(\mu_f ,\sigma_f) = r_f.



Certainty Equivalent
==============================================================================
For a risky portfolio, :math:`U(\mu_f, \sigma_f)` can be thought of as
a certainty equivalent return.

.. rst-class:: to-build

- The return that a risk-free asset would have to offer to provide the
  same utility level as a risky asset.




Risk Aversion
==============================================================================
The parameter :math:`\gamma` is a measure of risk
preference.  

.. rst-class:: to-build

- If :math:`\gamma > 0` individuals are risk averse - volatility
  detracts from utility.  

.. rst-class:: to-build

- If :math:`\gamma = 0` individuals are risk neutral - volatility
  doesn't enter into the utility function.

  .. rst-class:: to-build

  - In this case, investors rank portfolios by their expected return
    and don't care about portfolio riskiness.  


Risk Aversion
==============================================================================
- If :math:`\gamma < 0` individuals are risk lovers - volatility is
  rewarded in the utility function.

  .. rst-class:: to-build

  - In this case, investors enjoy and get utility by taking on risk.

.. rst-class:: to-build

- We will generally assume investors are risk averse, with the
  magnitude of :math:`\gamma` dictating the amount of risk aversion.




Mean-Variance Criterion
==============================================================================
Under this utility model, investors prefer higher expected returns
and lower volatility.  

.. rst-class:: to-build

- Let portfolio :math:`A` have mean and volatility :math:`\mu_A` and
  :math:`\sigma_A`.

.. rst-class:: to-build

- Let portfolio :math:`B` have mean and volatility :math:`\mu_B` and
  :math:`\sigma_B`.

.. rst-class:: to-build

- If :math:`\mu_A \geq \mu_B` *and* :math:`\sigma_A \leq
  \sigma_B`, then :math:`A` is preferred to :math:`B`.




Mean-Variance Criterion
==============================================================================
:math:`\qquad`

.. ifslides::

  .. image:: /_static/pg164_1.jpg
     :width: 8.5in
     :align: center

.. ifnotslides::

  .. image:: /_static/pg164_1.jpg
     :width: 6in



Indifference Curves
==============================================================================
Portfolios in quadrant I are preferred to :math:`P`, which is preferred to
portfolios in quadrant IV.

.. rst-class:: to-build

- What about quadrants II and III?  

.. rst-class:: to-build

- If a portfolio :math:`Q` has a mean and volatility that differ from
  :math:`P` but yields the same utility level, then either

.. rst-class:: to-build

.. math::

   \mu_Q > \mu_p \text{  and  } \sigma_Q > \sigma_p

.. rst-class:: to-build

or

.. rst-class:: to-build

.. math::

   \mu_Q < \mu_p \text{  and  } \sigma_Q < \sigma_p.

.. rst-class:: to-build

- That is, Q must be in quadrants II or III.



Indifference Curves
==============================================================================

- The portfolios that yield the same utility as :math:`P` constitute
  an indifference curve.

.. rst-class:: to-build

- We conclude that the indifference curve must cut through quadrants
  II and III.




Indifference Curve Plot
==============================================================================
:math:`\qquad`

.. ifslides::

  .. image:: /_static/pg165_2.jpg
     :width: 7in
     :align: center

.. ifnotslides::

  .. image:: /_static/pg165_2.jpg
     :width: 6in



Portfolios of Assets
==============================================================================
Suppose an individual can invest in two assets: a risky portfolio
:math:`P` and a risk-free asset :math:`F`.  

.. rst-class:: to-build

- :math:`\omega` will be the fraction wealth invested in
  :math:`P`.  

.. rst-class:: to-build

- :math:`1-\omega` will be the fraction wealth invested in
  :math:`F`.  

.. rst-class:: to-build

- We will typically assume that portfolio weights sum to
  1.  

.. rst-class:: to-build

- :math:`r_p` will denote the return on asset :math:`P`, with
  :math:`\mu_p = E[r_p]` and :math:`\sigma_p^2 = Var(r_p)`.

.. rst-class:: to-build

- :math:`r_f` will denote the return on asset :math:`F`, with
  :math:`\mu_f = r_f` and :math:`\sigma_f^2 = 0`.




Portfolio Return
==============================================================================
Let :math:`C` denote the portfolio that *combines* the two assets.

.. rst-class:: to-build

- :math:`C` is a weighted average of :math:`P` and :math:`F`:

.. rst-class:: to-build

.. math::

   C = \omega P + (1-\omega) F.

.. rst-class:: to-build

- The return to :math:`C`, is

.. rst-class:: to-build

.. math::

   r_c = \omega r_p + (1-\omega) r_f.


Portfolio Return
==============================================================================
By the linearity of expectations:

.. rst-class:: to-build

.. math::

   \mu_c = E[r_c] \qquad \qquad \qquad

.. rst-class:: to-build

.. math::

   \quad \enspace \, = \omega E[r_p] + (1 - \omega)E[r_f] 

.. rst-class:: to-build

.. math::

   = \omega \mu_p + (1-\omega) r_f \enspace \,

.. rst-class:: to-build

.. math::

   = r_f + \omega(\mu_p - r_f). \enspace \,

.. rst-class:: to-build

- The term in the parentheses is the risk premium of :math:`P`.



Portfolio Volatility
==============================================================================
According to the properties of variance, 

.. rst-class:: to-build

.. math::

   \sigma^2_c = Var(r_c) \qquad \qquad \qquad \qquad \qquad \qquad
   \qquad \qquad \enspace

.. rst-class:: to-build

.. math::

   \quad \enspace \; \, = \omega^2 Var(r_p) + (1 - \omega)^2 Var(r_f) + 2
   \omega (1 - \omega) Cov(r_p, r_f)

.. rst-class:: to-build

.. math::

   = \omega^2 Var(r_p) \qquad \qquad \qquad \qquad \qquad \qquad
   \quad \enspace \; \: \,

.. rst-class:: to-build

.. math::

   = \omega^2 \sigma^2_p. \qquad \qquad \qquad \qquad \qquad \qquad
   \qquad \quad \enspace \; \,

.. rst-class:: to-build

- The third equality follows because :math:`r_f` is a constant.

.. rst-class:: to-build

- Thus,

.. rst-class:: to-build

.. math::

   \sigma_c = \omega \sigma_p.



Portfolios and Risk Aversion
==============================================================================
Portfolio :math:`C` earns a base return of :math:`r_f` plus the risk
premium associated with :math:`P`, weighted by the amount of wealth
the investor allocates to :math:`P`.  

.. rst-class:: to-build

- More risk averse investors (small :math:`\omega`) expect a rate of
  return closer to :math:`r_f`.

.. rst-class:: to-build

- Less risk averse investors (high :math:`\omega`) expect a rate
  closer to :math:`\mu_p - r_f`.

.. rst-class:: to-build

-  More risk averse investors have smaller portfolio volatilities.

.. rst-class:: to-build

- Less risk averse investors have higher portfolio volatilities.




Portfolio Weight
==============================================================================
Since :math:`\sigma_c = \omega \sigma_p`,

.. rst-class:: to-build

.. math::

   \omega =\frac{\sigma_c}{\sigma_p}.




Sharpe Ratio
==============================================================================
Thus

.. rst-class:: to-build

.. math::

   \mu_c = r_f + \omega (\mu_p - r_f) \qquad

.. rst-class:: to-build

.. math::

   = r_f + \frac{\sigma_c}{\sigma_p} (\mu_p - r_f) \:

.. rst-class:: to-build

.. math::

   = r_f + \frac{\mu_p - r_f}{\sigma_p} \sigma_c \enspace \; \,

.. rst-class:: to-build

.. math::

   = r_f + \text{SR}_p \sigma_c. \qquad \enspace

.. rst-class:: to-build

- :math:`\text{SR}_p` is the Sharpe Ratio of portfolio :math:`P`.



Capital Allocation Line
==============================================================================
The Capital Allocation Line (CAL) depicts the set of portfolios
available to an investor (a budget constraint). 

.. rst-class:: to-build

- It plots pairs of :math:`\sigma_c` and :math:`\mu_c` that the
  investor can choose by selecting :math:`\omega`.

.. rst-class:: to-build

- This is simply a plot of the equation

.. rst-class:: to-build

.. math::

   \mu_c = r_f + \text{SR}_p \sigma_c.

.. rst-class:: to-build

- Clearly, the intercept will be :math:`r_f` and the slope will be
  :math:`\text{SR}_p`.




Capital Allocation Line Example
==============================================================================
Suppose  

.. rst-class:: to-build

- :math:`r_f = 0.07`.  

.. rst-class:: to-build

- :math:`\mu_p = 0.15`.  

.. rst-class:: to-build

- :math:`\sigma_p = 0.22`.  

.. rst-class:: to-build

What is the CAL?



Capital Allocation Line Plot
==============================================================================
:math:`\qquad`

.. ifslides::

  .. image:: /_static/pg172_1.jpg
     :width: 7.5in
     :align: center

.. ifnotslides::

  .. image:: /_static/pg172_1.jpg
     :width: 6in



Simple Portfolio Choice
==============================================================================
Individuals seek to maximize utility subject to the available choice
set.

.. rst-class:: to-build

.. math::

   \max_{\mu_c, \sigma_c} U(\mu_c, \sigma_c) = \max_{\mu_c, \sigma_c}
   \mu_c - \frac{1}{2} \gamma \sigma^2_c,

.. rst-class:: to-build

subject to

.. rst-class:: to-build

.. math::

   \mu_c & = r_f + \omega (\mu_p - r_f) \\
   \sigma_c & = \omega \sigma_p.



Simple Portfolio Choice (Cont.)
==============================================================================
Substituting the constraints, the maximization problem becomes

.. rst-class:: to-build

.. math::

  \max_{\omega} \left\{r_f + \omega (\mu_p - r_f) - \frac{1}{2}
  \gamma \omega^2 \sigma^2_p \right\}.

.. rst-class:: to-build

Taking the derivative of this equation w.r.t. :math:`\omega`,

.. rst-class:: to-build

.. math::

   \mu_p - r_f  = \gamma \omega^* \sigma^2_p

.. rst-class:: to-build

.. math::

   \Rightarrow \omega^* = \frac{\mu_p - r_f}{\gamma \sigma^2_p} =
   \frac{\text{SR}_p}{\gamma \sigma_p}.



Simple Portfolio Choice
==============================================================================
Since the CAL is a choice set (budget constraint), we can find the
optimal portfolio by observing where an indifference curve is
tangent to the CAL.  

.. rst-class:: to-build

- Fix the utility value at :math:`\bar{U} = r_f`. 
  
.. rst-class:: to-build

- Use the relation :math:`\bar{U} = \mu_c - \frac{1}{2} \gamma
  \sigma^2_c` to solve for :math:`\mu_c`:

.. rst-class:: to-build

.. math::

   \mu_c = \bar{U} + \frac{1}{2} \gamma \sigma^2_c.




Simple Portfolio Choice
==============================================================================
- Using this equation, we find the pairs of :math:`\mu_c` and
  :math:`\sigma_c` that corresponds to utility :math:`\bar{U}`, which we
  plot.  

.. rst-class:: to-build

- Repeat this process, increasing the values of :math:`\bar{U}` until a
  tangent indifference curve is found. The tangency corresponds to
  the optimal portfolio.



Spreadsheet Optimization
==============================================================================
Given :math:`\gamma=2`, :math:`\mu=0.15`, :math:`\sigma=0.22` and
:math:`r_f=0.07`.

:math:`\qquad`

.. ifslides::

  .. image:: /_static/calSS.png
     :width: 8in
     :align: center

.. ifnotslides::

  .. image:: /_static/calSS.png
     :width: 6in



Graphical Optimization
==============================================================================
:math:`\qquad`

.. ifslides::

  .. image:: /_static/pg177_2.jpg
     :width: 6.5in
     :align: center

.. ifnotslides::

  .. image:: /_static/pg177_2.jpg
     :width: 6in



Capital Market Line
==============================================================================
Consider a value-weighted portfolio of all assets in the
market.  

.. rst-class:: to-build

- We will call this the market portfolio and denote it by
  :math:`M`.  
.. rst-class:: to-build

- The CAL which connects :math:`r_f` with :math:`M` is called the
  *Capital Market Line* (CML).  

.. rst-class:: to-build

- Because the true market portfolio is unobserved, we use a
  proxy - a well diversified portfolio that provides a good
  representation of the entire market. 

.. rst-class:: to-build

- Typically we use the S\&P 500.




Passive vs. Active Strategies
==============================================================================
Holding the market portfolio or a market proxy is known as a *passive
strategy*.

.. rst-class:: to-build

- It requires no security analysis.

.. rst-class:: to-build

- An *active strategy* is one that requires individual security
  analysis.

