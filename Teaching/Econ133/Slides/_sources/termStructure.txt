.. slideconf::
   :slide_classes: appear

==============================================================================
The Term Structure of Interest Rates
==============================================================================


Yield Curve
==============================================================================
Bonds of different maturities often have different yields to maturity.

.. rst-class:: to-build

- The relationship between yield and maturity is summarized
  graphically in the *yield curve*.

.. rst-class:: to-build

- Consider several examples below.

:math:`\qquad`

.. ifslides::

  .. rst-class:: to-build

  .. image:: /_static/TermStructure/bod34698_1012_lg.jpg
     :width: 6in
     :align: center

.. ifnotslides::

  .. image:: /_static/TermStructure/bod34698_1012_lg.jpg
     :width: 6in



Yield Curve Slope
==============================================================================
An upward sloping yield curve is evidence that short-term interest
rates are going to rise.

.. rst-class:: to-build

- Consider two investment strategies.  
  
  .. rst-class:: to-build

  - Buy and hold a two-year zero-coupon bond, offering 6\% return each
    year.

  .. rst-class:: to-build

  - Buy a one-year bond today, offering a 5\% return over the coming
    year, and roll the investment into another one-year zero-coupon
    bond a year from now, offering an interest rate of :math:`r_2`.  
  
  .. rst-class:: to-build

  - These investments should be equivalent. Why?




Yield Curve Slope
==============================================================================
Suppose you begin with \$890 to invest (the price of a two-year
zero-coupon bond with 6\% YTM.

.. rst-class:: to-build

- Equating the returns to each strategy gives:

.. rst-class:: to-build

.. math::

   \$890 \times (1.06)^2 & = \$890 \times (1.05) \times (1+r_2)

.. rst-class:: to-build

.. math::

   \Rightarrow 1 + r_2 & = \frac{1.06^2}{1.05} = 1.0701

.. rst-class:: to-build

.. math::

   \Rightarrow r_2 & = 0.0701.




Two Investment Strategies
==============================================================================
:math:`\qquad`

.. ifslides::

  .. image:: /_static/TermStructure/pg484_1.jpg
     :width: 8in
     :align: center

.. ifnotslides::

  .. image:: /_static/TermStructure/pg484_1.jpg
     :width: 6in



Spot Rates and Short Rates
==============================================================================
We distinguish between two types of interest rates. 

.. rst-class:: to-build

- Spot rate: the rate offered *today* on zero-coupon bonds of
  different maturities.
  
  .. rst-class:: to-build

  - In the previous example, the one-year spot rate is 5\% and the two
    year spot rate is 6\%.

.. rst-class:: to-build
  
- Short rate: the rate for given time interval (one year) offered at
  different points in time.
  
  .. rst-class:: to-build

  - In the previous example, the first-year short rate is 5\% (same as
    the spot!) and the second-year short rate is 7.01\%.
  



Spot Rates and Short Rates
==============================================================================
The spot rate for a given period should be the geometric average of
short rates over that interval.

.. rst-class:: to-build

- Let :math:`y_2` be the two-year spot rate.  

.. rst-class:: to-build

- Let :math:`r_1` and :math:`r_2` be the first-year and second-year
  short rates.

.. rst-class:: to-build

- Don't forget that :math:`y_1 = r_1`. 

.. rst-class:: to-build

.. math::

   (1+y_2)^2 & = (1+r_1)\times(1+r_2)

.. rst-class:: to-build

.. math::

   \Rightarrow 1+y_2 & = \sqrt{(1+r_1) \times (1+r_2)}.


Spot Rates and Short Rates
==============================================================================
So, if the yield curve slopes up (:math:`y_2 > y_1 = r_1`), we
conclude that short-term rates will rise (:math:`r_2 > r_1`).

.. rst-class:: to-build

- Reverse reasoning holds for a downward sloping yield curve.




Spot Rate and Short Rate Example
==============================================================================
Assume the following spot rates and short rates: 

.. rst-class:: to-build

- Spots: :math:`y_1 = 0.05`, :math:`y_2 = 0.06` and :math:`y_3 =
  0.07`.

.. rst-class:: to-build

- Shorts: :math:`r_1 = y_1` and :math:`r_2 = 0.0701`.  

.. rst-class:: to-build

- What is the three-year short rate, :math:`r_3`? 




Spot Rate and Short Rate Example
==============================================================================  
Buying a three-year zero-coupon bond should be identical to buying a
two-year zero and rolling into a one-year zero.

.. rst-class:: to-build

.. math::

   (1+y_3)^3 & = (1+y_2)^2 \times (1+r_3)

.. rst-class:: to-build

.. math::

   \Rightarrow 1.07^3 & = 1.06^2 \times (1+r_3)

.. rst-class:: to-build

.. math::

   \Rightarrow r_3 & = \frac{1.07^3}{1.06^2} - 1 = 0.09025.




Spot Rate and Short Rate Example
==============================================================================
We know

.. rst-class:: to-build

.. math::

   (1+y_2)^2 & = (1+r_1) \times (1+r_2).

.. rst-class:: to-build

So the full decomposition is 

.. rst-class:: to-build

.. math::

   (1+y_3)^3 & = (1+y_2)^2 \times (1+r_3)

.. rst-class:: to-build

.. math::

   & = (1+r_1) \times (1+r_2) \times (1+r_3)

.. rst-class:: to-build

.. math::

   \Rightarrow 1.07^3 & = 1.05 \times 1.0701 \times 1.09025.




Spot Rate and Short Rate Example
==============================================================================
:math:`\qquad`

.. ifslides::

  .. image:: /_static/TermStructure/pg486_3.jpg
     :width: 8in
     :align: center

.. ifnotslides::

  .. image:: /_static/TermStructure/pg486_3.jpg
     :width: 6in




General Short Rates
==============================================================================
We can generalize the previous results.  

.. rst-class:: to-build

- Investing in an :math:`n` period zero-coupon bond should be the same
  as investing in an :math:`n-1` zero and rolling into a one-period
  zero at time :math:`n-1`.

.. rst-class:: to-build

.. math::

  (1+y_n)^n & = (1+y_{n-1})^{n-1} \times (1+r_n)

.. rst-class:: to-build

.. math::

   \Rightarrow 1+r_n & = \frac{(1+y_n)^n}{(1+y_{n-1})^{n-1}}.




Forward Rates
==============================================================================
In the development above, we assumed no uncertainty. 

.. rst-class:: to-build

- All future rates were known at time zero. 

.. rst-class:: to-build
  
- In reality, we don't have perfect knowledge of time :math:`n` short
  rates at time zero.




Forward Rates
==============================================================================
To distinguish between actual short rates that occur in the future, we
define the forward rate to be
  
.. rst-class:: to-build

.. math::

   \Rightarrow 1+f_n & = \frac{(1+y_n)^n}{(1+y_{n-1})^{n-1}}.
  
.. rst-class:: to-build

- The time :math:`t=n` forward rate is the break-even interest rate
  that equates the returns of an n-period zero-coupon bond with an
  :math:`(n-1)` -period zero rolled into a one-period zero.
  
.. rst-class:: to-build

- It may not be equal to the expected future short rate.




Expectations Hypothesis
==============================================================================
The *Expectations Hypothesis* of the yield curve says that expected
short rates equal forward rates:

.. rst-class:: to-build

.. math::

   E[r_n] & = f_n

.. rst-class:: to-build

.. math::

   \Rightarrow (1+y_n)^n & = (1+y_{n-1})^{n-1}(1+E[r_n]).

.. rst-class:: to-build

- If the yield curve slopes upward, short rates are expected to rise:
  :math:`E[r_n] > E[r_{n-1}] > r_1 = y_1`.

.. rst-class:: to-build

- If the yield curve slopes downward, short rates are expected to
  fall: :math:`E[r_n] < E[r_{n-1}] < r_1 = y_1`.




Liquidity Preference Theory
==============================================================================
According to the *Liquidity Preference Theory* of the yield curve,
investors must be compensated for holding longer-term bonds.  

.. rst-class:: to-build

- Longer-term bonds are subject to greater risk, and so investors
  should demand a premium for holding them.

.. rst-class:: to-build
  
- In reality, a *premium* means that investors will only buy them for
  a lower price (which means greater yield).




Liquidity Preference Theory
==============================================================================
The Liquidity Preference Theory can be expressed as forward rates
being equal to expected short rates plus a premium, :math:`\phi`:

.. rst-class:: to-build

.. math::

  f_n & = E[r_n] + \phi

.. rst-class:: to-build

.. math::

  \Rightarrow (1+y_n)^n & = (1+y_{n-1})^{n-1}(1+E[r_n] + \phi).

.. rst-class:: to-build

- According to this theory, expected short rates *can be* constant if
  the yield curve is upward sloping.

.. rst-class:: to-build

- If the yield curve is downward sloping, expected short rates must be
  falling. Why?




Liquidity Preference Example
==============================================================================
Suppose you buy a two-year bond and that  

.. rst-class:: to-build

- Short rates for the next two years are constant at 8\%: :math:`r_1 =
  E[r_2] = 0.08`.

.. rst-class:: to-build

- The liquidity premium for year two is 1\%: :math:`\phi = 0.01`.




Liquidity Preference Example
==============================================================================
What is the yield to maturity of the two year bond? 

.. rst-class:: to-build

.. math::

   (1+y_2)^2 & = (1+r_1)(1+f_2) \hspace{1.25in}

.. rst-class:: to-build

.. math::

   & = (1+r_1)(1+E[r_2]+\phi)

.. rst-class:: to-build

.. math::

   & = (1.08)(1.09) \hspace{0.8in}

.. rst-class:: to-build

.. math::

   \Rightarrow 1+y_2 & = \sqrt{1.08 \times 1.09} \hspace{1.4in}

.. rst-class:: to-build

.. math::

   & = 1.085. \hspace{1.2in}

.. rst-class:: to-build

- So the yield curve slopes up (:math:`y_2 > y_1`) even though
  expected short rates are constant.




Expectations Hypothesis Example
==============================================================================
However, if there is no liquidity premium

.. rst-class:: to-build

.. math::

   (1+y_2)^2 & = (1+r_1)(1+f_2) \hspace{0.95in}

.. rst-class:: to-build

.. math::

   & = (1+r_1)(1+E[r_2]) \hspace{0.02in}

.. rst-class:: to-build

.. math::

   & = (1.08)(1.08) \hspace{0.5in}

.. rst-class:: to-build

.. math::

   \Rightarrow 1+y_2 & = \sqrt{1.08 \times 1.08} \hspace{1.1in}

.. rst-class:: to-build

.. math::

   & = 1.08. \hspace{1in}

.. rst-class:: to-build

- Now the yield curve is flat.



Implications of the Theories
==============================================================================
The slope of the yield curve *always* determines whether *forward
rates* are rising or falling.

.. rst-class:: to-build

- :math:`y_2 > y_1` means :math:`f_2 > f_1` (by the definition of
  forward rates!).

.. rst-class:: to-build

- If the Expectations Hypothesis holds, :math:`E[r_2] = f_2`, so
  :math:`y_2 > y_1` means :math:`E[r_2] > r_1 = f_1 = y_1`.




Implications of the Theories
==============================================================================
- If the Liquidity Preference Theory holds, we have no guarantee that
  :math:`E[r_2] > r_1` if :math:`y_2 > y_1`.
  
  .. rst-class:: to-build

  - Short rates could be constant with a moderate liquidity premium.

  .. rst-class:: to-build

  - Short rates could be rising some, with a small liquidity premium.

  .. rst-class:: to-build

  - Short rates could be falling, with a large liquidity premium.

  .. rst-class:: to-build
  
  - What about if :math:`y_2 < y_1`?




Exp. Hypothesis vs. Liquidity Pref Theory
==============================================================================
:math:`\qquad`

.. ifslides::

  .. image:: /_static/TermStructure/bod34698_1014_lg.jpg
     :width: 4.8in
     :align: center

.. ifnotslides::

  .. image:: /_static/TermStructure/bod34698_1014_lg.jpg
     :width: 6in




Historical Term Spread
==============================================================================
:math:`\qquad`

.. ifslides::

  .. image:: /_static/TermStructure/bod34698_1015_lg.jpg
     :width: 8in
     :align: center

.. ifnotslides::

  .. image:: /_static/TermStructure/bod34698_1015_lg.jpg
     :width: 6in

