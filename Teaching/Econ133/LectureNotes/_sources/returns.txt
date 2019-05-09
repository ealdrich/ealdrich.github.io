.. slideconf::
   :slide_classes: appear


==============================================================================
Rates of Return
==============================================================================


Holding Period Return
==============================================================================
Consider a stock with beginning price :math:`P_0`, ending price
:math:`P_1` and a dividend payment of :math:`d`.

.. rst-class:: to-build

- The *holding period return* is 

.. rst-class:: to-build

.. math::

   HPR & = \frac{P_1 - P_0 + d}{P_0} \\

.. rst-class:: to-build

.. math::

   & = \underbrace{\frac{P_1 - P_0}{P_0}}_\text{capital gains yield} +
   \underbrace{\frac{d}{P_0}}_\text{dividend yield}.

.. rst-class:: to-build

This definition can be used for assets other than stocks (e.g. a bond
with a coupon payment).



Holding Period Return Example
==============================================================================
- On Nov 9th 2012, Apple stock closed at :math:`P_0 = \$547.06`.

.. rst-class:: to-build

- On Nov 12th, Apple payed a dividend of :math:`d = \$2.65` per share
  and the price closed at :math:`P_1 = \$542.83`.

.. rst-class:: to-build

- What was the HPR?

.. rst-class:: to-build

.. math::

   HPR & = \frac{\$542.83 - \$547.06}{\$547.06} + \frac{\$2.65}{\$547.06}

.. rst-class:: to-build

.. math::

   & = \frac{-\$4.23}{\$547.06} + \frac{\$2.65}{\$547.06}

.. rst-class:: to-build

.. math::

   & = \frac{-\$1.58}{\$547.06} = -0.00289.

Gross and Net Returns
==============================================================================
Forget dividends or cash payouts for a moment.

.. rst-class:: to-build

- The *capital gains yield* is

.. rst-class:: to-build

.. math::

   \underbrace{\frac{P_1 - P_0}{P_0}}_\text{net return}\,\,\, & =
   \underbrace{\frac{P_1}{P_0}}_\text{gross return} - \,\,\,\,\, 1.


Gross and Net Returns
==============================================================================
What's the difference between net and gross returns?  

.. rst-class:: to-build

- The net return is the fraction of your invested money that you gain
  by holding the asset, excluding the original money.

.. rst-class:: to-build

- The gross return is the total gain, including your original
  money. It is the factor by which you multiply your original invested
  amount to determine the final invested amount.
 



Multi-period Returns
==============================================================================
Suppose an asset has net returns :math:`\{r_t\}_{t=0}^{T}`. Consider two
forms of average returns: 

.. rst-class:: to-build

.. math::

   \text{Arithmetic Average} & = \frac{1}{T} \sum_{t=0}^T r_t

.. rst-class:: to-build

and 

.. rst-class:: to-build

.. math::

   \text{Geometric Average} & = \left(\prod_{t=0}^T
   (1+r_t)\right)^{\frac{1}{T}}.

.. rst-class:: to-build

The geometric average is the *constant* return that would
have to be earned each period to yield the same final value of the
asset.



Annualized Returns - EAR
==============================================================================
Suppose you enter into a contract to pay or receive a net rate of
return :math:`r` on an asset for each of :math:`n` periods in a year.

.. rst-class:: to-build

- :math:`n=12`  is a monthly contract.

.. rst-class:: to-build

- :math:`n=4` is a quarterly contract.

.. rst-class:: to-build

- The Effective Annual Rate (EAR) is 

.. rst-class:: to-build

.. math::

   1 + \text{EAR} & = (1 + r)^n.




Annualized Returns - APR
==============================================================================
Suppose you enter into a contract to pay or receive a net rate of
return :math:`r` on an asset for each of :math:`n` periods in a year.

.. rst-class:: to-build

- The Annual Percentage Rate (APR) is 

.. rst-class:: to-build

.. math::

   \text{APR} & = n \times r.

.. rst-class:: to-build

The APR ignores compounding (as seen in the following example).



Annualized Returns - Example
==============================================================================
You invest \$100 in an asset that pays 5\% return each quarter for
one year.

.. rst-class:: to-build

.. math::

   Q1: \$100 \times 1.05 = \$105

.. rst-class:: to-build

.. math::

   Q2: \$105 \times 1.05 = \$110.25

.. rst-class:: to-build

.. math::

   Q3: \$110.25 \times 1.05 = \$115.76

.. rst-class:: to-build

.. math::

   Q4: \$115.76 \times 1.05 = \$121.55

.. rst-class:: to-build

.. math::

   EAR: (1.05)^4 - 1 = 0.2155

.. rst-class:: to-build

.. math::

   APR: 0.05 \times 4 = 0.2

.. rst-class:: to-build

.. math::

   HPR: \frac{\$121.55 - \$100}{\$100} = 0.2155.



EAR and APR
==============================================================================
What is the relationship between EAR and APR?

.. rst-class:: to-build

- Since

.. rst-class:: to-build

.. math::

   r = \frac{\text{APR}}{n}

.. rst-class:: to-build

we have

.. rst-class:: to-build

.. math::

   1 +\text{EAR} & = \left(1 + \frac{APR}{n}\right)^n.

.. rst-class:: to-build

We can rearrange the equation above to get

.. rst-class:: to-build

.. math::

   \text{APR} & = \left[(1+\text{EAR})^{\frac{1}{n}} - 1\right]
   \times n.



Continuous Compounding
==============================================================================
Continuous compounding is what occurs when we allow the number of
periods in the year, :math:`n`, to become large.  

.. rst-class:: to-build

- For daily returns, :math:`n=365`.  

.. rst-class:: to-build

- For hourly returns, :math:`n=8760`.  

.. rst-class:: to-build

- For returns each minute, :math:`n=525,000`.  

.. rst-class:: to-build

- For returns each second, :math:`n=31,536,000`.




Continuous Compounding
==============================================================================
Continuous compounding is the limit, when :math:`n = \infty`. In this
case  

.. rst-class:: to-build

.. math::

   \lim_{n \to \infty} \left(1 + \frac{\text{APR}}{n}\right)^n =
   e^{\text{APR}}.

.. rst-class:: to-build

So, under continuous compounding

.. rst-class:: to-build

.. math::

   1 + \text{EAR} & = e^{\text{APR}}

.. rst-class:: to-build

or

.. rst-class:: to-build

.. math::

   \text{APR} & = \ln(1+\text{EAR}).



Inflation
==============================================================================
Inflation is the increase of the general price level over
time.  

.. rst-class:: to-build

- Inflation erodes the purchasing power of a given amount of
  money over time.  

.. rst-class:: to-build

- In the presence of inflation, an asset that yields a return of
  :math:`r` doesn't actually generate :math:`r` units of additional real
  purchasing power for each dollar invested.




Nominal vs. Real Returns
==============================================================================
In the previous slides we computed nominal returns.

.. rst-class:: to-build

- Let us momentarily change notation and refer to the nominal return
  of an asset as :math:`R`.

.. rst-class:: to-build

- Then the real return of the asset is the nominal return discounted
  by inflation:

.. rst-class:: to-build

.. math::

   1+r & = \frac{1+R}{1+\pi}.

.. rst-class:: to-build

- :math:`r` is the net real return and :math:`\pi` is net inflation.


Nominal vs. Real Returns
==============================================================================
- This relationship is approximated by 

.. rst-class:: to-build

.. math::

   r \approx R - \pi.

.. rst-class:: to-build

See the proof on the next slide.



Nominal vs. Real Returns - Proof
==============================================================================
The proof requires an approximation. For some small number :math:`\epsilon >
0`,

.. math::

   \ln(1+\epsilon) & \approx \epsilon.

.. rst-class:: to-build

Thus,

.. rst-class:: to-build

.. math::

   1+r & = \frac{1+R}{1+\pi}

.. rst-class:: to-build

.. math::

   \Rightarrow \ln(1+r) & = \ln\left(\frac{1+R}{1+\pi}\right)

.. rst-class:: to-build

.. math::

   \Rightarrow \ln(1+r) & = \ln(1+R) - \ln(1+\pi)

.. rst-class:: to-build

.. math::

   \Rightarrow r & \approx R - \pi.


Nominal vs. Real Returns - Example
==============================================================================
Suppose you can invest in a CD that pays 8% return over the next year
and that inflation is 5% during the same period.

.. rst-class:: to-build

- :math:`R = 0.08`.

.. rst-class:: to-build

- :math:`\pi = 0.05`.

.. rst-class:: to-build

- :math:`r \approx 0.08 - 0.05 = 0.03`.

.. rst-class:: to-build

The actual real rate of return is

.. rst-class:: to-build

.. math::

   r = \frac{1.08}{1.05} - 1 = 0.0286.

Expected Inflation
==============================================================================
In practice, future inflation is not known, even though the nominal
rate of return may be known with certainty.

.. rst-class:: to-build

- Think of a fixed-income asset.

.. rst-class:: to-build

- In this case

.. rst-class:: to-build

.. math::

   R = r + E[\pi].

.. rst-class:: to-build

- :math:`E[\pi]` is expected inflation. 



Expected Inflation
==============================================================================
- The returns to typical government bonds are nominal. 

.. rst-class:: to-build

- In 1997, the U.S. Treasury introduced "Treasury Inflation-Protected
  Securities" (TIPS).

.. rst-class:: to-build

- These have coupon and principle payments that
  are corrected for observed inflation over time.

.. rst-class:: to-build

- The difference between these rates of return on these two
  instruments can be treated as a measure of expected inflation.


