.. slideconf::
   :slide_classes: appear


==============================================================================
Portfolio Optimization
==============================================================================


Types of Risk
==============================================================================
We classify risk using two broad categories.  

.. rst-class:: to-build

- Systematic risk (also called market or non-diversifiable risk) which
  is common to all assets in the market.

.. rst-class:: to-build

- Idiosyncratic risk (also called firm-specific, non-systematic or
  diversifiable risk) which is unique to a particular asset.



Benefits of Diversification
==============================================================================
Idiosyncratic risk can be eliminated through portfolio
diversification.  

.. rst-class:: to-build

- Imagine holding one stock in your portfolio. The risk of your
  portfolio will be equal to the sum of the stock's systematic and
  idiosyncratic risks.

.. rst-class:: to-build

- Now add another stock to the portfolio. If the two stocks are
  perfectly correlated, then they will always move together and your
  portfolio will have the same risk properties as before.




Benefits of Diversification
==============================================================================
- What if the idiosyncratic components of the two stocks are
  uncorrelated?  

  .. rst-class:: to-build

  - Systematic shocks will cause them to move together.  

  .. rst-class:: to-build

  - Idiosyncratic shocks will occur at different times and magnitudes,
    so the stocks will not move together as much.  

  .. rst-class:: to-build

  - Sometimes when one falls in price another will rise price,
    counteracting each other and reducing risk.
    


Benefits of Diversification
==============================================================================
- What if the idiosyncratic components of the two stocks are
  negatively correlated?

  .. rst-class:: to-build

  - Systematic shocks will cause them to move together.  

  .. rst-class:: to-build

  - Idiosyncratic shocks will cause them to move in opposite
    directions, reducing risk.
  


Limits to Diversification
==============================================================================
Adding more and more assets to a portfolio compounds the
diversification effect.

.. rst-class:: to-build

- In theory, it should be possible to eliminate all idiosyncratic risk
  by increasing the number of assets in a portfolio.

.. rst-class:: to-build

- Systematic risk, however, cannot be eliminated since it is common to
  all assets.




Limits to Diversification
==============================================================================
:math:`\qquad`

.. ifslides::

  .. image:: /_static/bod34698_0601_lg.jpg
     :width: 8in
     :align: center

.. ifnotslides::

  .. image:: /_static/bod34698_0601_lg.jpg
     :width: 6in



Portfolios of Two Risky Assets
==============================================================================
Suppose you can invest in two risky assets.  

.. rst-class:: to-build

- A debt asset (bonds) denoted by :math:`D`.  

.. rst-class:: to-build

- An equity asset (stocks) denoted by :math:`E`.  

.. rst-class:: to-build

- :math:`\omega_d` is the fraction of wealth invested in :math:`D`.  

.. rst-class:: to-build

- :math:`\omega_e` is the fraction of wealth invested in :math:`E`.  

.. rst-class:: to-build

- We require :math:`\omega_d + \omega_e = 1`, so that :math:`\omega_e
  = 1 - \omega_d`.




Returns to Portfolios of Risky Assets
==============================================================================
Suppose the returns to :math:`D` and :math:`E` are :math:`r_d` and
:math:`r_e`, respectively.  

.. rst-class:: to-build

- The portfolio return is the weighted average of returns

.. rst-class:: to-build

.. math::

   r_p  = \omega_d r_d + \omega_e r_e.

.. rst-class:: to-build

- By the properties of expectations, the portfolio expected return is

.. rst-class:: to-build

.. math::

   \mu_p = \omega_d \mu_d + \omega_e \mu_e.

.. rst-class:: to-build

- By the properties of variance, the portfolio variance is

.. rst-class:: to-build

.. math::

   \sigma^2_p = \omega^2_d \sigma^2_d + \omega^2_e \sigma^2_e + 2
   \omega_d \omega_e Cov(r_d, r_e).



Covariance Matrix
==============================================================================
It is often useful to express the variance and covariance information
in matrix form

.. rst-class:: to-build

.. math::

  \Sigma = \left[\begin{array}{cc} \sigma^2_d & \sigma_{d,e}
        \\ \sigma_{e,d} & \sigma^2_e \end{array} \right],

.. rst-class:: to-build

where :math:`\sigma_{d,e} = \sigma_{e,d} = Cov(r_d, r_e)`.  

.. rst-class:: to-build

- :math:`\Sigma` is referred to as a covariance matrix. 

.. rst-class:: to-build
  
- It can be generalized to more than two assets. 

.. rst-class:: to-build
  
- The diagonal terms always represent variances. 

.. rst-class:: to-build
  
- The off-diagonal terms represent covariances.




Correlation
==============================================================================
Define :math:`\rho_{xy} = Corr(X,Y)`.  Then recall that

.. rst-class:: to-build

.. math::

   \rho_{xy} = \frac{Cov(X,Y)}{\sigma_x \sigma_y}.

.. rst-class:: to-build

- Hence, :math:`Cov(X,Y) = \rho_{xy} \sigma_x \sigma_y`.

.. rst-class:: to-build

- Remember that :math:`\rho_{xy} \in [-1,1]`.




Portfolio Variance
==============================================================================
The previous relationship allows us to write portfolio variance as

.. math::

   \sigma^2_p & = \omega^2_d \sigma^2_d + \omega^2_e \sigma^2_e + 2
   \omega_d \omega_e \rho_{de} \sigma_d \sigma_e.
 
.. rst-class:: to-build

- Since :math:`\rho_{de} \in [-1,1]`, :math:`\sigma^2_p` is greatest
  when :math:`\rho_{de} = 1`.  Why?

.. rst-class:: to-build

- Note that when :math:`\rho_{de} = 1`,

.. rst-class:: to-build

.. math::

   \sigma^2_p = (\omega_d \sigma_d + \omega_e \sigma_e)^2

.. rst-class:: to-build

.. math::

   \Rightarrow \sigma_p = \omega_d \sigma_d + \omega_e \sigma_e.
 


Portfolio Standard Deviation
==============================================================================
- In this special case, the portfolio standard deviation is the
  weighted average of asset standard deviations.

.. rst-class:: to-build
  
- So the maximal possible portfolio standard deviation is the
  simple weighted average of component standard deviations.




Portfolio Variance
==============================================================================
Note that

.. rst-class:: to-build

- :math:`\mu_p` is the weighted average of asset means.

.. rst-class:: to-build

- :math:`\sigma_p` is less than the weighted average of asset
  volatilities when :math:`\rho_{de} \neq 1`.

.. rst-class:: to-build

- So the risk-return properties of the portfolio are better than those
  of the component assets.



Portfolio Variance Lower Bound
==============================================================================
Portfolio variance is made smaller with smaller values of
:math:`\rho_{de}`.

.. rst-class:: to-build

- When :math:`\rho_{de} = -1`,

.. rst-class:: to-build

.. math::

   \sigma^2_p = (\omega_d \sigma_d - \omega_e \sigma_e)^2

.. rst-class:: to-build

.. math::

   \Rightarrow \sigma_p = |\omega_d \sigma_d - \omega_e \sigma_e|.

.. rst-class:: to-build

- If we choose :math:`\omega_d = \frac{\sigma_e}{\sigma_e + \sigma_d}`
  (and :math:`\omega_e = 1-\omega_d`) then :math:`\sigma_p = 0`.

.. rst-class:: to-build

- This means that if assets are perfectly negatively correlated, the
  portfolio has zero variance.




Portfolio Variance Lower Bound
==============================================================================
.. ifslides::

  .. image:: /_static/pg205_1.jpg
     :width: 6.5in
     :align: center

.. ifnotslides::

  .. image:: /_static/pg205_1.jpg
     :width: 6in



Portfolio Frontier
==============================================================================
The lines in the figure above are known as *portfolio opportunity
sets* or *portfolio frontiers*.

.. rst-class:: to-build

- Since individuals prefer less risk and greater return, frontiers
  that are bowed to the northwest are better.  

.. rst-class:: to-build

- Clearly, the frontiers are better for smaller values of
  :math:`\rho_{de}`.




Portfolios of Three Assets
==============================================================================
Assume you can invest your money in three assets: 

.. rst-class:: to-build

- Two risky assets.

.. rst-class:: to-build

- A risk-free asset.

.. rst-class:: to-build

The portfolio frontier now consists of  

.. rst-class:: to-build

- The curved frontier between the two risky assets. We will call this
  the *risky frontier*.

.. rst-class:: to-build

- Every capital allocation line (CAL) connecting the risk-free to a
  portfolio on the risky frontier.

.. rst-class:: to-build

- Steeper CALs are better since they offer portfolios of equivalent
  expected return with lower standard deviation.




Efficient Frontier
==============================================================================
.. ifslides::

  .. image:: /_static/pg206_1.jpg
     :width: 6.5in
     :align: center

.. ifnotslides::

  .. image:: /_static/pg206_1.jpg
     :width: 6in



Optimal CAL
==============================================================================
The optimal CAL is the steepest possible line that intersects both the
risk-free asset and a portfolio on the risky frontier.  

.. rst-class:: to-build

- The slope of the CAL is the Sharpe Ratio of the risky portfolio it
  intersects.

.. rst-class:: to-build

- So the investor's optimization problem is 

.. rst-class:: to-build

.. math::

   \max_{\omega} SR_p = \frac{\mu_p - r_f}{\sigma_p} \quad \text{subject to}

.. rst-class:: to-build

.. math::

   \mu_p = \omega_d \mu_d + (1-\omega_d) \mu_e

.. rst-class:: to-build

.. math::

   \sigma_p = \sqrt{\omega^2_d \sigma^2_d + (1-\omega_d)^2
   \sigma^2_e + 2 \omega_d (1-\omega_d) \rho_{de} \sigma_d
   \sigma_e}.




Optimal CAL
==============================================================================
To solve the problem we  

.. rst-class:: to-build

- Substitute the constraints.  

.. rst-class:: to-build

- Take the derivative with respect to :math:`\omega_d` and set the
  derivative equal to zero.

.. rst-class:: to-build

- Perform some tedious algebra.  




Optimal CAL
==============================================================================
The solution is 

.. rst-class:: to-build

.. math::

   \omega_d^* & = \frac{rp_d \sigma^2_e - rp_e
   \rho_{de} \sigma_d \sigma_e}{rp_e \sigma^2_d +
   rp_d \sigma^2_e - (rp_e + rp_d) \rho_{de}
   \sigma_d \sigma_e}.

.. rst-class:: to-build

- :math:`rp_d = \mu_d - r_f` and :math:`rp_e = \mu_e - r_f`.

.. rst-class:: to-build

- The optimal portfolio :math:`T` is known as the *tangency
  portfolio*.



Tangeny Portfolio
==============================================================================
.. ifslides::

  .. image:: /_static/pg208_1.jpg
     :width: 6.5in
     :align: center

.. ifnotslides::

  .. image:: /_static/pg208_1.jpg
     :width: 6in




Optimal CAL
==============================================================================
The optimal CAL is the investor's efficient choice set, since it
offers minimal variance portfolios for every choice of expected
return.

.. rst-class:: to-build

- We have said nothing about which portfolio the investor will
  actually consume; we have only identified the set from which the
  investor will choose.

.. rst-class:: to-build

- We must combine the optimal CAL with a specification of preferences
  to determine the investor's actual choice.

.. rst-class:: to-build

- The portfolio choice problem with three assets now reduces to the
  simple problem of choosing between one risky asset (the tangency
  portfolio) and the risk-free asset.




Investor Choice
==============================================================================
Let's assume again that agents' utility is given by 

.. rst-class:: to-build

.. math::

   U(\mu, \sigma) & = \mu - \frac{1}{2} \gamma \sigma^2.

.. rst-class:: to-build

Recall that when allocating wealth between a risky asset :math:`P` and
a risk-free asset, the optimal portfolio weight, :math:`\tau`, is

.. rst-class:: to-build

.. math::

   \tau & = \frac{\mu_p - r_f}{\gamma \sigma^2_p}.




Investor Choice
==============================================================================
If the agent invests in the tangency portfolio :math:`T` and the
risk-free,

.. math::

   \tau = \frac{\mu_T - r_f}{\gamma  \sigma^2_T}.

.. rst-class:: to-build

- Given that the tangency portfolio is a weighted average of assets
  :math:`D` and :math:`E`, with optimal weight :math:`\omega_d^*`

.. rst-class:: to-build

.. math::

   w_d & = \tau \omega_d^* \\
   w_e & = \tau (1-\omega_d^*).
