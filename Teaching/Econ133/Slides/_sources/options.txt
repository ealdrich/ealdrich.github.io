.. slideconf::
   :slide_classes: appear

==============================================================================
Options
==============================================================================


Call Options
==============================================================================
A call option is a contract that allows the buyer the *option* to
purchase an asset for a pre-specified price on or before a particular
date.  It has the following
ingredients:  

.. rst-class:: to-build

- Underlying asset: The asset that may be bought or sold when the
  option is exercised.

.. rst-class:: to-build

- Maturity (exercise) date: The date at which the contract expires.

.. rst-class:: to-build

- Strike price: The pre-specified price at which the underlying can be
  purchased.




Call Options
==============================================================================
The buyer of the option is *not obligated* to buy the underlying asset
at the strike price.

.. rst-class:: to-build

- The *buyer* has the *option* to buy.

.. rst-class:: to-build

- The *seller* of the call option is *obligated* to sell the
  underlying if the buyer wants to exercise the option.

.. rst-class:: to-build

- If the price of the underlying asset is above the strike price on
  the maturity date, the buyer will exercise. Why?

.. rst-class:: to-build
  
- If the price of the underlying asset is below the strike price on
  the maturity date, the buyer will not exercise. Why?




Call Options
==============================================================================
The call option has no downside risk for the buyer.

.. rst-class:: to-build

- The buyer is better off if the underlying asset price rises.

.. rst-class:: to-build

- If the underlying asset price falls, the buyer doesn't lose
  anything.



Call Options
==============================================================================
However, the seller of the option *only* faces downside risk.  

.. rst-class:: to-build

- The seller is worse off if the underlying asset price rises.

.. rst-class:: to-build

- If the underlying asset price falls, the seller doesn't gain
  anything.

.. rst-class:: to-build

The seller must be compensated for taking the risk of having to sell
the underlying for a low price.

.. rst-class:: to-build

- The buyer pays a *premium* to purchase the option contract.




Call Option Example
==============================================================================
On March 8th 2013, stock for Chipotle Mexican Grill (CMG) sold for
\$321.84 and an option contract with a strike price of \$320.00 and
maturity date of March 15th 2013 cost \$5.30.  

.. rst-class:: to-build

- If the price of Chipotle is less than \$320.00 on March 15th, the
  option will not be exercised.

.. rst-class:: to-build

- If the price is \$325.00 on March 15th, the option holder (buyer)
  will exercise the contract.

.. rst-class:: to-build

- The gain to the buyer will be \$5.00.  




Call Option Example
==============================================================================
- Remember that the contract cost \$5.30, so the buyer has a net loss
  of \$0.30.

.. rst-class:: to-build

- If the price on March 15th is greater than \$325.30, the buyer will
  have a net gain.




Put Options
==============================================================================
A put option is a contract that allows the buyer the option to sell an
asset (the underlying) for a pre-specified price (the strike) on or
before a particular date (the maturity date).

.. rst-class:: to-build

- The buyer of the put benefits when the price of the underlying asset
  falls below the strike.

.. rst-class:: to-build

- The buyer of the option can buy the asset at the market price and
  sell it at the higher strike price (to the writer of the put
  option).

.. rst-class:: to-build

- If the price of the asset rises above the strike, the buyer will not
  exercise the option and has no downside loss.



Put Options
==============================================================================
- The put is an *option* (not an *obligation*) for the buyer to sell
  the asset at the strike price.

.. rst-class:: to-build
    
- The writer of the put is under *obligation* to buy the asset
  whenever the buyer chooses to exercise the option.




Put Option Example
==============================================================================
Consider again Chipotle stock which sold for \$321.84 on March
8th 2013.

.. rst-class:: to-build

- A put option with a strike price of \$320.00 and a maturity date of
  March 15th 2013 costs \$3.30.

.. rst-class:: to-build

- If the price of the stock is above \$320.00 on March 15th, the
  option will not be exercised.




Put Option Example
==============================================================================
- Suppose the price is below \$320.00 on March 15th: \$315.00.

.. rst-class:: to-build

- The buyer of the put will exercise the contract, buying the stock
  for \$315.00 on the market and selling to the put writer for
  \$320.00.

.. rst-class:: to-build

- The gross profit would be \$320.00 - \$315.00 = \$5.00.

.. rst-class:: to-build

- The net profit would be: \$5.00 - \$3.30.




Moneyness
==============================================================================
An option is  

.. rst-class:: to-build

- *In the money* when its strike price would produce profits for the
  holder.

.. rst-class:: to-build

- *Out of the money* when exercise would be unprofitable.

.. rst-class:: to-build

- *At the money* when the strike price is equal to the asset price.

.. rst-class:: to-build

The moneyness can be determined at any time, as if the option were
exercised at that instant.



American vs. European
==============================================================================
- An American option allows the buyer to exercise the contract on or
  before the maturity date.

.. rst-class:: to-build

- A European option only allows exercise on the maturity date.

.. rst-class:: to-build

- Since an American option encompasses all of the possibilities of a
  European option, it should always be more valuable and cost more.

.. rst-class:: to-build

- As the name denotes, virtually all options traded in the U.S. are of
  the American flavor.




Notation
==============================================================================
We use the following notation:

.. rst-class:: to-build

.. math::

   T = \text{Maturity date}

.. rst-class:: to-build

.. math::

   S_t = \text{Underlying asset price at time } t

.. rst-class:: to-build

.. math::

   X = \text{Strike Price}

.. rst-class:: to-build

.. math::

   C_t = \text{Value of a call option at time } t

.. rst-class:: to-build

.. math::

   P_t = \text{Value of a put option at time } t
 


Call Option Payoff (Buyer)
==============================================================================
The payoff to a call option holder (buyer) at expiration is 

.. rst-class:: to-build

.. math::

  C_T = \begin{cases} S_T - X, & \text{if  } S_T > X \\ 0, &
  \text{if  } S_T \leq X. \end{cases}

.. rst-class:: to-build

- If the asset price is above the strike, the holder can buy the
  underlying for :math:`X` and immediately sell it for :math:`S_T`,
  yielding a profit of :math:`S_T-X`.  

.. rst-class:: to-build

- If the asset price is below the strike, the option is worthless.




Call Option Payoff (Buyer)
==============================================================================
The payoffs above did not account for the cost of the option.

.. rst-class:: to-build

- If the option is purchased at time :math:`t` for a price of
  :math:`C_t`, the net payoff to the holder at expiration is

.. rst-class:: to-build

.. math::

   C_T = \begin{cases} S_T - X - C_t, & \text{if  } S_T > X \\ -C_t, &
   \text{if  } S_T \leq X. \end{cases}




Call Option Payoff (Buyer
==============================================================================
:math:`\qquad`

.. ifslides::

  .. image:: /_static/Options/bod34698_1502_lg.jpg
     :width: 8in
     :align: center

.. ifnotslides::

  .. image:: /_static/Options/bod34698_1502_lg.jpg
     :width: 6in




Call Option Payoff (Seller)
==============================================================================
On the flip side, the gross payoff to the call option writer at
expiration is

.. rst-class:: to-build

.. math::

   C_T & = \begin{cases} X - S_T, & \text{if  } S_T > X
   \\ 0, & \text{if  } S_T \leq X. \end{cases}

.. rst-class:: to-build

The net payoff is

.. rst-class:: to-build

.. math::

   C_T & = \begin{cases} X - S_T + C_t, & \text{if  } S_T > X
   \\ C_t, & \text{if  } S_T \leq X. \end{cases}




Call Option Payoff (Seller)
==============================================================================
:math:`\qquad`

.. ifslides::

  .. image:: /_static/Options/bod34698_1503_lg.jpg
     :width: 8in
     :align: center

.. ifnotslides::

  .. image:: /_static/Options/bod34698_1503_lg.jpg
     :width: 6in



Put Option Payoff (Buyer)
==============================================================================
The gross payoff to put option holders at expiration is 

.. rst-class:: to-build

.. math::

   P_T & = \begin{cases} 0, & \text{if  } S_T > X
   \\ X - S_T, & \text{if  } S_T \leq X. \end{cases}

.. rst-class:: to-build

- If the underlying asset price is below the strike, the holder can
  purchase it for :math:`S_T` and immediately resell for :math:`X`,
  yielding a profit of :math:`X-S_T`.  

.. rst-class:: to-build

- If the asset price is above the strike at expiration, the option is
  worthless.




Put Option Payoff (Buyer)
==============================================================================
The *net* payoff to put option holders is

.. rst-class:: to-build

.. math::

   P_T & = \begin{cases} -P_t, & \text{if  } S_T > X
   \\ X - S_T - P_t, & \text{if  } S_T \leq X. \end{cases}




Put Option Payoff (Buyer)
==============================================================================
:math:`\qquad`

.. ifslides::

  .. image:: /_static/Options/bod34698_1504_lg.jpg
     :width: 8in
     :align: center

.. ifnotslides::

  .. image:: /_static/Options/bod34698_1504_lg.jpg
     :width: 6in




Speculation and Hedging
==============================================================================
Options can be used for both speculation and hedging. 

.. rst-class:: to-build

- Suppose you have \$10,000 available for investment.  

.. rst-class:: to-build

- A share of stock costs \$100.

.. rst-class:: to-build

- An option with a strike price of \$100 and six-month maturity costs
  \$10.

.. rst-class:: to-build

- You can lend money (purchase the risk-free asset) at a rate of 3\%
  for the next six months.




Speculation and Hedging
==============================================================================
Consider three strategies.  

.. rst-class:: to-build

- Strategy A: Invest entirely in stock, buying 100 shares at the
  current price of \$100.

.. rst-class:: to-build

- Strategy B: Invest entirely in at-the-money options, buying 10 call
  contracts (each for 100 shares) selling for \$1000 a piece.

.. rst-class:: to-build

- Strategy C: Purchase 100 call options (1 contract) for \$1,000 and
  invest the remaining \$9,000 in the risk-free asset, which will
  yield a total of :math:`\$9,000\times1.03 = \$9,270` at the
  end of the six months.




Speculation and Hedging
==============================================================================
The values of the three strategies are:

:math:`\qquad`

.. image:: /_static/Options/table1.png
   :width: 8in
   :align: center



Speculation and Hedging
==============================================================================
The returns to the three strategies are:

:math:`\qquad`

.. image:: /_static/Options/table2.png
   :width: 8in
   :align: center



Speculation and Hedging
==============================================================================
From these tables we see two features of options. 

.. rst-class:: to-build

- Options offer leverage.
    
  .. rst-class:: to-build

  - For the all-option portfolio, the return plummets to -100\% when
    the stock price is below the strike.  

  .. rst-class:: to-build

  - The return rockets to numbers that are much greater than simply
    holding the stock when the stock price increases above the
    strike.



Speculation and Hedging
==============================================================================    
- Options offer insurance.  
    
  .. rst-class:: to-build

  - The mixed portfolio has limited downside loss: the investor can't
    lose more than -7.3\%.

  .. rst-class:: to-build

  -  It also has limited upside gains: if the stock price is above the
     strike, its returns are always below the portfolio comprised of
     only stock.




Speculation and Hedging
==============================================================================
:math:`\qquad`

.. ifslides::

  .. image:: /_static/Options/bod34698_1505_lg.jpg
     :width: 8in
     :align: center

.. ifnotslides::

  .. image:: /_static/Options/bod34698_1505_lg.jpg
     :width: 6in



Protective Put
==============================================================================
A protective put strategy consists of simultaneously purchasing a
share of stock and a put option on that stock.  

.. rst-class:: to-build

- This limits the potential downside loss of the stock while leaving
  the potential gains intact.

:math:`\qquad`

.. rst-class:: to-build

.. image:: /_static/Options/table3.png
   :width: 4in
   :align: center




Protective Put
==============================================================================
The put acts as insurance against loss.  

.. rst-class:: to-build

- Comparing the net payoff of the protective put with the strategy of
  holding stock alone shows that the former comes at a cost.  

.. rst-class:: to-build

- This is the insurance premium.




Protective Put
==============================================================================
:math:`\qquad`

.. ifslides::

  .. image:: /_static/Options/bod34698_1506_lg.jpg
     :width: 3in
     :align: center

.. ifnotslides::

  .. image:: /_static/Options/bod34698_1506_lg.jpg
     :width: 4in



Protective Put
==============================================================================
:math:`\qquad`

.. ifslides::

  .. image:: /_static/Options/bod34698_1507_lg.jpg
     :width: 5.5in
     :align: center

.. ifnotslides::

  .. image:: /_static/Options/bod34698_1507_lg.jpg
     :width: 5in




Covered Call
==============================================================================
A covered call strategy consists of simultaneously purchasing a share
of stock and writing a call option on that stock.  

.. rst-class:: to-build

- It doesn't eliminate downside loss (like the protective put).  

.. rst-class:: to-build

- It covers the obligation to deliver the stock for less than its
  market value if the stock price is above the strike.  

.. rst-class:: to-build

- The call writer is charging a premium (the call price) in order to
  forsake the upside gain of holding the stock.  

.. rst-class:: to-build

.. image:: /_static/Options/table4.png
   :width: 5in
   :align: center



Covered Call
==============================================================================
:math:`\qquad`

.. ifslides::

  .. image:: /_static/Options/bod34698_1508_lg.jpg
     :width: 3in
     :align: center

.. ifnotslides::

  .. image:: /_static/Options/bod34698_1508_lg.jpg
     :width: 4in



Straddle
==============================================================================
A straddle consists of purchasing call and put options for the same
asset and strike price.

.. rst-class:: to-build

- It is a bet on volatility.

.. rst-class:: to-build
  
- The straddle holder will earn (gross) positive returns if the stock
  price moves up or down, but nothing if it remains at the strike.

:math:`\qquad`

.. rst-class:: to-build

.. image:: /_static/Options/table5.png
   :width: 4in
   :align: center



Straddle
==============================================================================
So why doesn't everyone hold straddles?  

.. rst-class:: to-build

- Because the investor must pay for both contracts.

.. rst-class:: to-build

- The investor doesn't earn a *net* return unless the stock price
  moves enough to compensate for the initial outlay.




Straddle
==============================================================================
:math:`\qquad`

.. ifslides::

  .. image:: /_static/Options/bod34698_1509_lg.jpg
     :width: 3in
     :align: center

.. ifnotslides::

  .. image:: /_static/Options/bod34698_1509_lg.jpg
     :width: 4in




Spread
==============================================================================
A spread is a combination of two or more options (both calls or both
puts) on the same stock with different strikes.

.. rst-class:: to-build

- Some of the options are purchased while others are sold.

.. rst-class:: to-build

- A money spread is the simultaneous purchase and sale of options with
  different strikes.

.. rst-class:: to-build

- A time spread is the simultaneous purchase and sale of options with
  different maturities.




Bullish Spread
==============================================================================
A bullish spread:

:math:`\qquad`

.. rst-class:: to-build

.. image:: /_static/Options/table6.png
   :width: 7in
   :align: center



Bullish Spread
==============================================================================
:math:`\qquad`

.. ifslides::

  .. image:: /_static/Options/bod34698_1510_lg.jpg
     :width: 3in
     :align: center

.. ifnotslides::

  .. image:: /_static/Options/bod34698_1510_lg.jpg
     :width: 4in



Collar
==============================================================================
An example of a collar is the purchase of a protective put for one
strike price and the sale of a call option, on the same stock, for a
higher strike.

.. rst-class:: to-build

- This strategy eliminates downside losses below the strike of the put
  and also upside gains beyond the strike of the call.

.. rst-class:: to-build

- In this case, the investor constrains gains and losses within a
  region close to the current price of the stock.




Protective Put Alternative
==============================================================================
A protective put eliminates the downside loss of holding stock. We
could achieve this with an alternative strategy.

.. rst-class:: to-build

- Purchase a call option with strike price :math:`X`. 

.. rst-class:: to-build

- Purchase a T-bill (lend at the risk-free rate) with a face value
  equal to the call strike price, :math:`X`, and the same maturity
  date as the call.

:math:`\qquad`

.. rst-class:: to-build

.. image:: /_static/Options/table7.png
   :width: 4in
   :align: center



Put Call Parity
==============================================================================
The payoffs in the previous table are identical to those for the
protective put.

.. rst-class:: to-build

- Hence, the cost of the protective put strategy should be equal to
  the cost of the call plus bonds strategy (why?!!!).  

.. rst-class:: to-build

- This fact is known as the *Put-Call Parity Relationship*.

.. rst-class:: to-build

- Mathematically, it can be expressed as:
  
.. rst-class:: to-build

.. math::

   C_0 + \frac{X}{1+r_f} & = S_0 + P_0.
   
.. rst-class:: to-build  

- This relationship is very useful because it allows us to compute the
  value of a call option if we know the price of the corresponding
  put, and vice versa.




Put Call Parity Example
==============================================================================
Assume  

.. rst-class:: to-build

- An asset currently sells for \$110.  

.. rst-class:: to-build

- A call option with strike :math:`X = \$105` and 1-year maturity
  sells for \$17.

.. rst-class:: to-build

- A put option with strike :math:`X = \$105` and 1-year maturity
  sells for \$5.

.. rst-class:: to-build

- The risk-free interest rate is 5\% per year.  

.. rst-class:: to-build

- Does the parity relationship hold?




Put Call Parity Example
==============================================================================
.. math::

   C_0 + \frac{X}{1+r_f} & \stackrel{?}{=} S_0 + P_0.

.. rst-class:: to-build

.. math::

   \$117 = \$17 + \frac{\$105}{1.05} & \neq \$110 + \$5 = \$115.
  
.. rst-class:: to-build

- The relationship doesn't hold.

.. rst-class:: to-build

- How might an investor take advantage of the situation?
  



Put Call Parity Example
==============================================================================
:math:`\qquad`

.. image:: /_static/Options/table8.png
   :width: 7in
   :align: center

