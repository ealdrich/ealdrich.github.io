.. slideconf::
   :slide_classes: appear


==============================================================================
Indexes and Funds
==============================================================================


Indexes
==============================================================================
Indexes are weighted averages of asset characteristics.

.. rst-class:: to-build

- For example, it might be a weighted average of stock prices, stock
  returns, or bond yields.

.. rst-class:: to-build

- The two most widely cited indexes are:

  .. rst-class:: to-build

  - `The Dow Jones Industrial Average (DJIA)
    <http://en.wikipedia.org/wiki/Djia>`_.

  .. rst-class:: to-build

  - `The Standard and Poor's Composite 500 (S\&P 500)
    <http://en.wikipedia.org/wiki/S%26P_500>`_.

.. rst-class:: to-build

- These are reported every day in `common news outlets
  <http://wsj.com>`_.


Dow Jones
==============================================================================
The Dow Jones Industrial Average (DJIA) is the oldest U.S. index,
dating to 1896.

.. rst-class:: to-build

- Since 1926 it has included 30 large stocks.

.. rst-class:: to-build

- Originally a simple average of the prices.

.. rst-class:: to-build

- Percentage change in the Dow was originally the return on a
  portfolio consisting of one share invested in each of the stocks
  in the index.


Dow Jones
==============================================================================
- The DJIA is a price-weighted average: the amount of money invested
  in each asset of the portfolio is proportional to the share price.

.. rst-class:: to-build

- Due to splits and changes in the composition of the index, the DJIA
  is no longer a simple weighted average of prices.


Price-Weighted Indexes
==============================================================================
Consider a price-weighted index of two stocks, :math:`X` and :math:`Y`
.

.. rst-class:: to-build

- The price of :math:`X` is originally $25 and increases to $30.

.. rst-class:: to-build

- The price of :math:`Y` is originally $100 and decreases to $90.

.. rst-class:: to-build

Then

.. rst-class:: to-build

- Initial index value = :math:`\frac{\$25+\$100}{2} = \$62.5`.

.. rst-class:: to-build

- Final index value = :math:`\frac{\$30+\$90}{2} = \$60`.

.. rst-class:: to-build

- Percentage change = :math:`\frac{-\$2.5}{\$62.5} = -0.04 = -4\%`.



Price-Weighted Indexes
==============================================================================
Note that price-weighted indexes give higher priced stocks more
weight.

.. rst-class:: to-build

- The percentage change in stock :math:`X` is:

.. rst-class:: to-build

.. math::

   \frac{\$30 - \$25}{\$25} = 0.2 = 20\%

.. rst-class:: to-build

- The percentage change in stock :math:`Y` is:

.. rst-class:: to-build

.. math::

   \frac{\$90 - \$100}{\$100} = -0.1 = -10\%



Price-Weighted Indexes
==============================================================================
- The overall percentage change in the index is

.. rst-class:: to-build

.. math::

   \% \text{change in index} = \frac{p^0_X}{p^0_X+p^0_Y} \Delta_X +
    \frac{p^0_Y}{p^0_X+p^0_Y} \Delta_Y

.. rst-class:: to-build

.. math::

   = 0.2 * 0.2 + 0.8 * (-0.1) = -0.04.

.. rst-class:: to-build

- :math:`p^0_i` is the initial price of stock :math:`i`.

.. rst-class:: to-build

- :math:`\Delta_i` is the percentage change in the price of stock :math:`i`.



Splits and Price-Weighted Averages
==============================================================================
Suppose that stock :math:`Y` split, causing its price to fall to \$50.

.. rst-class:: to-build

- This would cause a large fall in the value of the index, unless an
  adjustment is made to the divisor.

.. rst-class:: to-build

- That is, the index value before the split is

.. rst-class:: to-build

.. math::

   \frac{\$25 + \$100}{2} = \$62.5.

.. rst-class:: to-build
 
- The post-split divisor, :math:`d`, should be the value such that  

.. rst-class:: to-build

.. math::

  \frac{\$25 + \$50}{d} = \$62.5.


Splits and Price-Weighted Averages
==============================================================================
- Hence, :math:`d` falls from 2 to 1.2.

.. rst-class:: to-build

- Notice that since the split causes the price of :math:`Y` to fall,
  it's relative weight in the portfolio will fall.

.. rst-class:: to-build

- Movements in the price of :math:`Y` will have a smaller impact on
  the index.



Standard and Poor's Composite 500
==============================================================================
The S\&P 500 stock index has two advantages over the Dow:  

.. rst-class:: to-build

- It is comprised of 500 large stocks, and hence is more broadly based
  and a better indicator of the market as a whole.

.. rst-class:: to-build

- It is a value-weighted, rather than price-weighted, index.  

.. rst-class:: to-build

- The market value or market capitalization of a firm is simply its
  total value on the market: price per share times the number of
  shares outstanding.

.. rst-class:: to-build

- A value-weighted index weights each stock in the index according to
  its market cap.



Value-Weighted Indexes
==============================================================================
If stock :math:`X` currently has 20 shares trading in the market and
stock :math:`Y` only has 1 share, the market caps for :math:`X` and
:math:`Y` are  

.. rst-class:: to-build

.. math::

   MC^0_X & = 20 * \$25 = \$500

.. rst-class:: to-build

.. math::

   MC^0_Y & = 1*\$100=\$100.

.. rst-class:: to-build

- A value-weighted index of the two stocks would give :math:`X` five times
  the weight as :math:`Y`.

.. rst-class:: to-build

- Compare to the price-weighted index which gives :math:`Y` four times
  the weight.

.. rst-class:: to-build

- Initially, the total stock on the market is equal to \$500 + \$100 =
  \$600.



Value-Weighted Indexes
==============================================================================
After the price changes, market caps become  

.. rst-class:: to-build

.. math::

   MC^1_X & = 20 * \$30 = \$600

.. rst-class:: to-build

.. math::

   MC^1_Y & = 1*\$90=\$90.

.. rst-class:: to-build

- The total value of stock is now \$690.

.. rst-class:: to-build

- If the initial value of the value weighted index was \$100, after
  the price changes it would be :math:`\$100*\frac{\$690}{\$600} =
  \$115`.


Value-Weighted Indexes
==============================================================================
- In this case the value of the index rises since it gives a
  relatively higher weight to :math:`X`.

.. rst-class:: to-build

.. math::

   \% \text{change in index} & = \frac{MC^0_X}{MC^0_X + MC^0_Y}
   \Delta_X + \frac{MC^0_Y}{MC^0_X + MC^0_Y} \Delta_Y

.. rst-class:: to-build

.. math::

   = \frac{5}{6} * 0.2 + \frac{1}{6} * (-0.1) = 0.15.



Equally-Weighted Indexes
==============================================================================
One of the advantages of price-weighted and value-weighted indexes
is that they correspond to buy-and-hold portfolio strategies:

.. rst-class:: to-build

- A price-weighted index is equivalent to buying and holding one share
  (or an equal number of shares) of each stock in the index.

.. rst-class:: to-build

- A value-weighted index is equivalent to buying and holding each
  share of the index in proportion to its market cap.




Equally-Weighted Indexes (Cont.)
==============================================================================
In contrast, one could form an equally-weighted index, where all
stocks receive the exact same weight.

.. rst-class:: to-build

- This does not correspond to a buy-and-hold strategy.  

.. rst-class:: to-build

- Consider starting with with equal amounts of money invested in
  stocks :math:`X` and :math:`Y`.

.. rst-class:: to-build

- If the price of :math:`X` increases by 20\% and the price of
  :math:`Y` falls by 10\%, the dollar amount invested in each stock is no longer equal.

.. rst-class:: to-build

- To keep the investment equally weighted, you would have to sell some
  shares of :math:`X` and buy shares of :math:`Y`.



Other Indexes
==============================================================================
There are a wide number of published indexes:  

.. rst-class:: to-build

- `Nasdaq Composite <http://en.wikipedia.org/wiki/Nasdaq_Composite>`_.

.. rst-class:: to-build

- `NYSE Composite <http://en.wikipedia.org/wiki/NYSE_Composite>`_.

.. rst-class:: to-build

- `Wilshire 5000 <http://en.wikipedia.org/wiki/Wilshire_5000>`_.

.. rst-class:: to-build

- Sub-indexes of the S\&P 500 and others above. 

.. rst-class:: to-build
  
To hold these as part of a portfolio one could  

.. rst-class:: to-build

- Buy shares of a `mutual fund
  <http://en.wikipedia.org/wiki/Mutual_fund>`_ that tracks the index.

.. rst-class:: to-build

- Buy shares of an `Exchange Traded Fund (ETF)
  <http://en.wikipedia.org/wiki/Exchange-traded_fund>`_ which is a
  portfolio of the shares in the index.


