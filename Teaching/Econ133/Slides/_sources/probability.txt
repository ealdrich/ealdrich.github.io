.. slideconf::
   :slide_classes: appear

===========
Probability
===========


Random Variables
================
Suppose :math:`X` is a random variable which can take values :math:`x
\in \mathcal{X}`.

  .. rst-class:: to-build

  - :math:`X` is a discrete r.v. if :math:`\mathcal{X}` is countable.

    .. rst-class:: to-build

    - :math:`p(x)` is the probability of a value :math:`x` and is
      called the probability mass function.

  .. rst-class:: to-build

  - :math:`X` is a continuous r.v. if :math:`\mathcal{X}` is
    uncountable.

    .. rst-class:: to-build

    - :math:`f(x)` is called the probability density function and can
      be thought of as the probability of a value :math:`x`.


Probability Mass Function
=========================
For a discrete random variable the *probability mass function* (PMF)
is

.. math::

   p(a) = P(X = a),

where :math:`a \in \mathbb{R}`.


Probability Density Function
============================
If :math:`B = (a,b)`

.. math::

   P(X \in B) = P(a \leq X \leq b) = \int_a^b f(x) dx.

.. rst-class:: to-build

Strictly speaking

.. rst-class:: to-build

.. math::

   P(X = a) = \int_a^a f(x) dx = 0,

.. rst-class:: to-build

but we may (intuitively) think of :math:`f(a) = P(X=a)`.


Properties of Distributions
===========================
For discrete random variables

  .. rst-class:: to-build

  - :math:`p(x) \geq 0`, :math:`\forall x \in \mathcal{X}`.

  .. rst-class:: to-build

  - :math:`\sum_{x\in \mathcal{X}} p(x) = 1`.

.. rst-class:: to-build

For continuous random variables

  .. rst-class:: to-build

  - :math:`f(x) \geq 0`, :math:`\forall x \in \mathcal{X}`.

  .. rst-class:: to-build

  - :math:`\int_{x\in \mathcal{X}} f(x)dx = 1`.


Cumulative Distribution Function
================================
For discrete random variables the cumulative distribution function
(CDF) is

  .. rst-class:: to-build

  - :math:`F(a) = P(X \leq a) = \sum_{x \leq a} p(x).`

.. rst-class:: to-build

For continuous random variables the CDF is

  .. rst-class:: to-build

  - :math:`F(a) = P(X \leq a) = \int_{-\infty}^a f(x) dx.`


Expected Value
==============
For a discrete r.v. :math:`X`, the expected value is

.. rst-class:: to-build

.. math::

   E[X] = \sum_{x\in \mathcal{X}} x p(x).

.. rst-class:: to-build

For a continuous r.v. :math:`X`, the expected value is

.. rst-class:: to-build

.. math::

   E[X] = \int_{x\in \mathcal{X}} x \, f(x) dx.


Expected Value
==============
If :math:`Y = g(X)`, then

.. rst-class:: to-build

- For discrete r.v. :math:`X`

.. rst-class:: to-build

.. math::

   E[Y] = E[g(X)] = \sum_{x \in \mathcal{X}} g(x)p(x).

.. rst-class:: to-build

    .. rst-class:: to-build

    - For continuous r.v. :math:`X`

.. rst-class:: to-build

.. math::

   E[Y] = E[g(X)] = \int_{x \in \mathcal{X}} g(x)f(x)dx.


Properties of Expectation
=========================
For random variables :math:`X` and :math:`Y` and constants :math:`a,b
\in \mathbb{R}`, the expected value has the following properties (for
both discrete and continuous r.v.'s):  

  .. rst-class:: to-build

  - :math:`E[aX + b] = aE[X] + b.`  

  .. rst-class:: to-build

  - :math:`E[X + Y] = E[X] + E[Y].`

.. rst-class:: to-build

Realizations of :math:`X`, denoted by :math:`x`, may be larger or
smaller than :math:`E[X]`.  

  .. rst-class:: to-build

  - If you observed many realizations of :math:`X`, :math:`E[X]` is
    roughly an average of the values you would observe.


Properties of Expectation - Proof
=================================
.. math::

   E[aX + b] & = \int_{-\infty}^{\infty} (ax+b)f(x) dx \\
   & = \int_{-\infty}^{\infty} a x f(x) dx +
   \int_{-\infty}^{\infty} b f(x) dx \\
   & = a \int_{-\infty}^{\infty} x f(x) dx + b
   \int_{-\infty}^{\infty} f(x) dx \\
   & = a\,E[X] + b.


Variance
========
Generally speaking, variance is defined as

.. math::

  Var(X) = E\left[(X - E[X])^2\right].

.. rst-class:: to-build

If :math:`X` is discrete: 


.. rst-class:: to-build

.. math::

   Var(X) = \sum_{x\in \mathcal{X}} (x - E[X])^2 p(x).

.. rst-class:: to-build

If :math:`X` is continuous:

.. rst-class:: to-build

.. math::
  Var(X) & = \int_{x\in \mathcal{X}} (x - E[X])^2 f(x) dx


Variance
========
Using the properties of expectations, we can show :math:`Var(X) =
E[X^2] - E[X]^2`:

.. rst-class:: to-build

.. math::

   Var(X) & = E\left[(X - E[X])^2\right] \\
   & = E\left[X^2 - 2XE[X] + E[X]^2\right] \\
   & = E[X^2] - 2E[X]E[X] + E[X]^2 \\
   & = E[X^2] - E[X]^2.


Standard Deviation
==================
The standard deviation is simply 

.. math::

   Std(X) = \sqrt{Var(X)}.

.. rst-class:: to-build

  .. rst-class:: to-build

  - :math:`Std(X)` is in the same units as :math:`X`.  

  .. rst-class:: to-build

  - :math:`Var(X)` is in units squared.


Covariance
==========
For two random variables :math:`X` and :math:`Y`, the covariance is
generally defined as 

.. math::

  Cov(X,Y)  = E\left[(X-E[X])(Y-E[Y])\right]

.. rst-class:: to-build

Note that :math:`Cov(X,X) = Var(X)`.


Covariance
==========
Using the properties of expectations, we can show 

.. math::

   Cov(X,Y) = E[XY] - E[X]E[Y].

.. rst-class:: to-build

This can be proven in the exact way that we proved

.. rst-class:: to-build

.. math::

   Var(X) = E[X^2] - E[X]^2.

.. rst-class:: to-build

In fact, note that

.. rst-class:: to-build

.. math::

   Cov(X,X) & = E[XY] - E[X]E[Y] \\
   & = E[X^2] - E[X]^2 = Var(X).


Properties of Variance
======================
Given random variables :math:`X` and :math:`Y` and constants
:math:`a,b \in \mathbb{R}`,    

.. rst-class:: to-build

.. math::
   Var(aX + b) = a^2Var(X).

.. rst-class:: to-build

.. math::

   Var(aX+bY) & = a^2Var(X) + b^2Var(Y) \\
   & \hspace{3in} + 2abCov(X,Y).

.. rst-class:: to-build

The latter property can be generalized to 

.. rst-class:: to-build

.. math::

   Var\left(\sum_{i=1}^n a_i X_i \right) & =
   \sum_{i=1}^n a_i^2Var(X_i) \\
   & \hspace{1in} + 2 \sum_{i=1}^{n-1} \sum_{j=i+1}^n
   a_i a_j Cov(X_i, X_j).


Properties of Variance - Proof
==============================

.. math::

   Var&(aX+bY) = E\left[(aX+bY)^2\right] - E\left[aX+bY\right]^2 \\
   & = E[a^2X^2 + b^2Y^2 + 2abXY] -
   \left(aE[X]+bE[Y]\right)^2 \\
   & = a^2 E[X^2] + b^2 E[Y^2] + 2abE[XY] \\
   & \hspace{1in} - a^2E[X]^2 - b^2E[Y]^2 -2abE[X]E[Y] \\
   & = a^2 \left(E[X^2] - E[X]^2\right) + b^2
   \left(E[Y^2] - E[Y]^2\right) \\
   & \hspace{1.5in} + 2ab \left(E[XY] - E[X]E[Y]\right) \\
   & = a^2Var(X) + b^2Var(Y) + 2abCov(X,Y).


Properties of Covariance
========================
Given random variables :math:`W`, :math:`X`, :math:`Y` and :math:`Z`
and constants :math:`a,b \in \mathbb{R}`,

.. rst-class:: to-build

.. math::
   Cov(X,a) = 0.

.. rst-class:: to-build

.. math::
   Cov(aX,bY) = abCov(X,Y).

.. rst-class:: to-build

.. math::

   Cov(W+X,Y+Z) & = Cov(W,Y) + Cov(W,Z) \\
   & \hspace{1.3in}+ Cov(X,Y) + Cov(X,Z).

.. rst-class:: to-build

The latter two can be generalized to 

.. rst-class:: to-build

.. math::

   Cov\left(\sum_{i=1}^n a_i X_i, \sum_{j=1}^m b_j Y_j\right) & =
   \sum_{i=1}^n \sum_{j=1}^m a_i b_j Cov(X_i, Y_j).


Correlation
===========
Correlation is defined as 

.. math::

  Corr(X,Y) = \frac{Cov(X,Y)}{Std(X) Std(Y)}.

.. rst-class:: to-build

- It is fairly easy to show that :math:`-1 \leq Corr(X,Y) \leq 1`.

.. rst-class:: to-build

- The properties of correlations of sums of random variables follow
  from those of covariance and standard deviations above.


Normal Distribution
===================
The normal distribution is often used to approximate the probability
distribution of returns.  

  .. rst-class:: to-build

  - It is a continuous distribution.  

  .. rst-class:: to-build

  - It is symmetric.  

  .. rst-class:: to-build

  - It is fully characterized by :math:`\mu` (mean) and :math:`\sigma`
    (standard deviation) -- i.e. if you only tell me :math:`\mu` and
    :math:`\sigma`, I can draw every point in the distribution.


Normal Density
==============
If :math:`X` is normally distributed with mean :math:`\mu` and
standard deviation :math:`\sigma`, we write

.. math::

  X \sim \mathcal{N}(\mu, \sigma).

.. rst-class:: to-build

The probability density function is

.. rst-class:: to-build

.. math::

  f(x) = \frac{1}{\sqrt{2\pi} \sigma}
  \exp\left\{\frac{1}{2\sigma^2}(x - \mu)^2\right\}.


Normal Distribution
===================
From `Wikipedia <http://en.wikipedia.org/wiki/Normal_distribution>`_:


.. ifslides::

  .. image:: /_static/Normal_Distribution_PDF.png
     :width: 7.5in

.. ifnotslides::

  .. image:: /_static/Normal_Distribution_PDF.png
     :width: 6in


Standard Normal Distribution
============================
Suppose :math:`X \sim \mathcal{N}(\mu, \sigma)`.

.. rst-class:: to-build

Then

.. rst-class:: to-build

.. math:: Z = \frac{X - \mu}{\sigma}

.. rst-class:: to-build

is a standard normal random variable: :math:`Z \sim
\mathcal{N}(0,1)`.

  .. rst-class:: to-build

  - That is, :math:`Z` has zero mean and unit standard deviation.  

.. rst-class:: to-build

We can reverse the process by defining

.. rst-class:: to-build

.. math::

  X = \mu + \sigma Z.


Standard Normal Distribution - Proof
====================================
.. math::

   E[Z] & = E\left[\frac{X - \mu}{\sigma}\right] \\
   & = \frac{1}{\sigma} E[X - \mu] \\
   & = \frac{1}{\sigma} (E[X] - \mu) \\
   & = \frac{1}{\sigma} (\mu - \mu) \\
   & = 0.


Standard Normal Distribution - Proof
====================================
.. math::

   Var(Z) & = Var\left(\frac{X - \mu}{\sigma}\right) \\
   & = Var\left(\frac{X}{\sigma} - \frac{\mu}{\sigma}\right) \\
   & = \frac{1}{\sigma^2} Var(X) \\
   & = \frac{\sigma^2}{\sigma^2} \\
   & = 1.


Sum of Normals
==============
Suppose :math:`X_i \sim \mathcal{N}(\mu_i, \sigma_i)` for :math:`i =
1,\ldots,n`.

.. rst-class:: to-build

Then if we denote :math:`W = \sum_{i=1}^n X_i` 

.. rst-class:: to-build

.. math::

  W \sim \mathcal{N}\left(\sum_{i=1}^n \mu_i, \sqrt{\sum_{i=1}^n
    \sigma_i^2 + 2\sum_{i=1}^j \sum_{j=1}^n Cov(X_i, X_j)}\right).

.. rst-class:: to-build

How does this simplify if :math:`Cov(X_i, X_j) = 0` for :math:`i \neq
j`?


Sample Mean
===========
Suppose we don't know the true probabilities of a distribution, but
would like to estimate the mean.  

.. rst-class:: to-build

- Given a sample of observations, :math:`\{x_i\}_{i=1}^n`, of random
  variable :math:`X`, we can estimate the mean by

.. rst-class:: to-build

.. math::

   \hat{\mu} = \frac{1}{n} \sum_{i=1}^n x_i.

.. rst-class:: to-build

- This is just a simple arithmetic average, or a probability
  weighted average with equal probabilities: :math:`\frac{1}{n}`.

.. rst-class:: to-build

- But the true mean is a weighted average using actual (most likely,
  unequal) probabilities. How do we reconcile this?


Sample Mean (Cont.)
===================
Given that the sample :math:`\{x_i\}_{i=1}^n` was drawn from the
distribution of :math:`X`, the observed values are inherently weighted by
the true probabilities (for large samples).  

  .. rst-class:: to-build

  - More values in the sample will be drawn from the higher probability
    regions of the distribution.

  .. rst-class:: to-build

  - So weighting all of the values equally will naturally give more
    weight to the higher probability outcomes.


Sample Variance
===============
Similarly, the sample variance can be defined as

.. math::

  \hat{\sigma}^2 & = \frac{1}{n-1} \sum_{i=1}^n (x_i - \hat{\mu})^2.

.. rst-class:: to-build

Notice that we use :math:`\frac{1}{n-1}` instead of
:math:`\frac{1}{n}` for the sample average.  

  .. rst-class:: to-build

  - This is because a simple average using :math:`\frac{1}{n}`
    underestimates the variability of the data because it doesn't
    account for extra error involved in estimating :math:`\hat{\mu}`.


Other Sample Moments
====================
Sample standard deviations, covariances and correlations are
computed in a similar fashion.

  .. rst-class:: to-build

  - Use the definitions above, replacing expectations with simple
    averages.

.. header:: ""
