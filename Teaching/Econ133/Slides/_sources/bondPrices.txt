.. slideconf::
   :slide_classes: appear

==============================================================================
Bond Prices and Yields
==============================================================================


Bond Basics
==============================================================================
A bond is a financial asset used to facilitate borrowing and lending.  

.. rst-class:: to-build

- A borrower has an obligation to make pre-specified payments to the
  lender on specific dates.

.. rst-class:: to-build

- Bonds are generally referred to as fixed-income securities.
  
  .. rst-class:: to-build

  - Historically, their payments have been  fixed.  

  .. rst-class:: to-build

  - In general, they can have variable payments, but those payments
    are determined by a formula.

.. rst-class:: to-build
  
- At the end of the bond's maturity, the borrower pays the *face
  value*, or *par value* of the bond to the lender.




Coupons
==============================================================================
Typical coupon bonds require the borrower to make semiannual coupon
payments to the lender.

.. rst-class:: to-build

- The coupon rate is the total annual amount paid in coupons divided
  by the face value.

.. rst-class:: to-build

- Zero-coupon bonds pay no coupons - they simply pay the face value at
  maturity.

.. rst-class:: to-build

- The only way for such assets to be marketable is for their sale
  value to be below the face value.




Bond Example
==============================================================================
Suppose a semiannual coupon bond has a face value of $1000 and a
coupon rate of 8%.

.. rst-class:: to-build

- The total amount of coupons paid annually is

.. rst-class:: to-build

.. math:: 0.08*\$1000 = \$80.

.. rst-class:: to-build
 
- Since coupons are paid semiannually, this amount is divided by two.

.. rst-class:: to-build

- So a $40 coupon is paid every six months and $1000 is paid at
  maturity.




Government Bonds
==============================================================================
U.S. Government debt assets fall into three categories.

.. rst-class:: to-build

- Treasury bills (T-bills). These pay no coupons and mature in one
  year or less from the time of issue.

.. rst-class:: to-build

- Treasury notes. These typically pay semiannual coupons and mature in
  2 to 10 years from the time of issue (typical maturities are 2, 5
  and 10 years).

.. rst-class:: to-build

- Treasury bonds. These typically pay semiannual coupons and mature
  between 10 to 30 years from the time of issue.




Government Bonds
==============================================================================
:math:`\qquad`

.. ifslides::

  .. image:: /_static/Bonds/bod34698_1001_lg.jpg
     :width: 8in
     :align: center

.. ifnotslides::

  .. image:: /_static/Bonds/bod34698_1001_lg.jpg
     :width: 6in




Corporate Bonds
==============================================================================
U.S. corporations also issue bonds in order to borrow money. These
debt instruments are generally quite similar to their government
counterparts.

.. math:: \qquad

.. ifslides::

  .. image:: /_static/Bonds/bod34698_1002_lg.jpg
     :width: 8in
     :align: center

.. ifnotslides::

  .. image:: /_static/Bonds/bod34698_1002_lg.jpg
     :width: 6in



Treasury Inflation Protected Securities
==============================================================================
Typical bonds offer nominal returns that don't account for inflation.

.. rst-class:: to-build

- TIPS are bonds whose face values (and hence their coupons) are
  indexed to the general level of prices.

.. rst-class:: to-build

- If inflation is equal to 2% over the course of a year, the face
  value of the bond will also rise by 2%.

.. rst-class:: to-build

- The result is a bond with no inflation risk and which should offer a
  rate of return that is equal to the real, risk-free rate.




TIPS Example
==============================================================================
Consider the following bond.  

.. rst-class:: to-build

- Face value = $1000.  

.. rst-class:: to-build

- Coupon rate = 4%. 

.. rst-class:: to-build

- Annual coupon, with three years to maturity. 

.. rst-class:: to-build
  
- Inflation will be 2%, 3% and 1% for the next three years.



TIPS Example
==============================================================================
:math:`\qquad`

.. ifslides::

  .. image:: /_static/Bonds/table10_1_lg.jpg
     :width: 8in
     :align: center

.. ifnotslides::

  .. image:: /_static/Bonds/table10_1_lg.jpg
     :width: 6in




TIPS Example
==============================================================================
We can compute the nominal and real rates of return.

.. rst-class:: to-build

.. math::

   r_{nom} & = \frac{\text{Interest} + \text{Price
   Appreciation}}{\text{Initial Price}}

.. rst-class:: to-build

.. math::

   & = \frac{40.80 + 20}{1000} \qquad \qquad \enspace \;

.. rst-class:: to-build

.. math::

   & = 0.0608 \qquad \qquad \quad \quad \; \,



TIPS Example
==============================================================================
.. math::

  r_{real} & = \frac{1+\text{Nominal Return}}{1+\text{Inflation}} - 1

.. rst-class:: to-build

.. math::

  & = \frac{1.0608}{1.02} - 1 \qquad \quad \:

.. rst-class:: to-build

.. math::

  & = 0.04. \qquad \qquad \quad \enspace




TIPS Example
==============================================================================
The real rate of return is simply equal to the coupon rate.  

.. rst-class:: to-build

- Inflation has been eliminated since the bond's face value has
  implicitly incorporated it into the value by tying its face value to
  increases in prices.




STRIPS
==============================================================================
STRIPS stands for "Separate Trading of Registered Interest and
Principle of Securities".

.. rst-class:: to-build

- It is a U.S. Treasury program which identifies bond payments as a
  separate securities.

.. rst-class:: to-build

- A coupon paying bond can be "stripped" into multiple assets - each
  coupon and the face value being marketed as individual zero-coupon
  bonds.
  
  .. rst-class:: to-build

  - A 10 year, semiannual bond is comprised of 20 coupon payments and
    a final payment of the face value.
 
  .. rst-class:: to-build

  - It could be stripped into 21 separate, zero-coupon assets with
    varying maturities.
  




Discounting Cash Flows
==============================================================================
A bond's value should be equal to the net present value of its cash flows.

.. rst-class:: to-build

- Each payment should be discounted by the product of interest rates
  over the period of interest.

.. rst-class:: to-build

- For a coupon payment in four years
    
.. rst-class:: to-build

.. math::

   PV & = \frac{C}{(1+r_1)(1+r_2)(1+r_3)(1+r_4)}.

.. rst-class:: to-build
    
- :math:`r_i` is the interest rate over year :math:`i`. 




Discounting Cash Flows
==============================================================================
Assuming the interest rate is constant over all periods (:math:`r_i =
r, \forall i`)
    
.. rst-class:: to-build

.. math::

   PV & = \frac{C}{(1+r)^4}.
    




Geometric Series
==============================================================================
The following mathematical result will be useful for deriving the
value of a bond:

.. rst-class:: to-build

- For :math:`|x| < 1`,

.. rst-class:: to-build

.. math::

   \sum_{i=0}^{\infty} a \, x^i & = \frac{a}{1-x}.




Bond Pricing
==============================================================================
Let :math:`F` = Face Value, :math:`C` = Coupon Payment and :math:`V` =
Bond Value.

.. rst-class:: to-build

- Then,

.. rst-class:: to-build

.. math::

   V & = \frac{C}{1+r} + \frac{C}{(1+r)^2} + \frac{C}{(1+r)^3} +
   \ldots + \frac{C}{(1+r)^T} + \frac{F}{(1+r)^T}

.. rst-class:: to-build

.. math::

   & = \sum_{i=1}^T \frac{C}{(1+r)^i} + \frac{F}{(1+r)^T} \qquad
   \qquad \qquad \qquad \qquad \quad \enspace \,

.. rst-class:: to-build

.. math::

   & = \sum_{i=1}^{\infty} \frac{C}{(1+r)^i} - \sum_{i=T+1}^{\infty}
   \frac{C}{(1+r)^i} + \frac{F}{(1+r)^T} \qquad \qquad \quad \enspace



Bond Pricing
==============================================================================
.. math::

   & = \sum_{i=1}^{\infty} \frac{C}{(1+r)^i} - \frac{1}{(1+r)^T}
   \sum_{i=1}^{\infty} \frac{C}{(1+r)^i} + \frac{F}{(1+r)^T} \qquad

.. rst-class:: to-build

.. math::

   \hspace{0.25in} & = \left(\sum_{i=1}^{\infty}
   \frac{C}{(1+r)^i}\right) \left(1 - \frac{1}{(1+r)^T}\right) +
   \frac{F}{(1+r)^T} \qquad \qquad \,

.. rst-class:: to-build

.. math::

   & = \frac{C}{1+r} \left(\sum_{i=0}^{\infty}
   \frac{1}{(1+r)^i}\right) \left(1 - \frac{1}{(1+r)^T}\right) +
   \frac{F}{(1+r)^T} \, \,

.. rst-class:: to-build

.. math::

   & = \frac{C}{1+r} \left(\frac{1}{1-\frac{1}{1+r}}\right) \left(1 -
   \frac{1}{(1+r)^T}\right) + \frac{F}{(1+r)^T} \qquad \,




Bond Pricing
==============================================================================
.. math::

   & = \frac{C}{1+r} \left(\frac{1}{\frac{1+r-1}{1+r}}\right)
   \left(1 - \frac{1}{(1+r)^T}\right) + \frac{F}{(1+r)^T} \; \;

.. rst-class:: to-build

.. math::

   \hspace{0.25in} & = \frac{C}{1+r} \frac{1+r}{r} \left(1 -
   \frac{1}{(1+r)^T}\right) + \frac{F}{(1+r)^T} \qquad \;

.. rst-class:: to-build

.. math::

   & = \frac{C}{r} \left(1 - \frac{1}{(1+r)^T}\right) +
   \frac{F}{(1+r)^T}. \qquad \qquad

.. rst-class:: to-build

We made use of the geometric series result,
recognizing :math:`0 < x = \frac{1}{1+r} < 1`.



Bond Value Formula
==============================================================================
The bond price formula can be decomposed as

.. rst-class:: to-build

.. math:: V & = \frac{C}{r} \left(1 - \frac{1}{(1+r)^T}\right) +
	  \frac{F}{(1+r)^T} \qquad \qquad \quad \enspace
	  :label: bondprice

.. rst-class:: to-build

.. math::

   & = C \times \underbrace{\left[\frac{1}{r} \left(1 -
   \frac{1}{(1+r)^T}\right)\right]}_{\text{Annuity factor}(r,T)} + F
   \times \underbrace{\left[\frac{1}{(1+r)^T}\right]}_{\text{PV
   factor}(r,T)}.

.. rst-class:: to-build

- :math:`\text{Annuity factor}(r,T)` is the present value of a $1
  annuity that lasts for :math:`T` periods with interest rate
  :math:`r`.

.. rst-class:: to-build

- :math:`\text{PV factor}(r,T)` is the present value of $1 paid in
  :math:`T` periods.




Value vs. Price
==============================================================================
So far we have only computed the *present value* of the bond.

.. rst-class:: to-build

- What is its price?

.. rst-class:: to-build

- The bond price should be equal to the present value of payments.

.. rst-class:: to-build

- If the price was lower, you could buy the bond for :math:`P < V` and
  receive the promised cash flow: your net gain would be :math:`V -
  P`.

.. rst-class:: to-build

- If the price was higher, you could short the bond for :math:`P > V`
  and pay the promised cash flow: your net gain would be :math:`P -
  V`.




Bond Pricing Example
==============================================================================
Consider a bond with the following characteristics. 

.. rst-class:: to-build

- :math:`F = \$1000`.  

.. rst-class:: to-build

- 30 years to maturity.  

.. rst-class:: to-build

- 8% coupon rate.  

.. rst-class:: to-build

- Semiannual coupons.  

.. rst-class:: to-build

Suppose the nominal interest rate is constant at 8% for the next 30
years.  Note that

.. rst-class:: to-build

- The coupon payment is $40 every six months. 

.. rst-class:: to-build

- There are 60, six-month time periods.




Bond Pricing Example
==============================================================================
The bond price is 

.. rst-class:: to-build

.. math::

   P & = \frac{\$40}{0.04}\left(1 - \frac{1}{1.04^{60}}\right) +
   \frac{\$1000}{1.04^{60}} = \$1000.

.. rst-class:: to-build

- If the annual interest rate equals the coupon rate, :math:`P = F`.

.. rst-class:: to-build

If :math:`r = 0.10`, then

.. rst-class:: to-build

.. math::

   P & = \frac{\$40}{0.05}\left(1 - \frac{1}{1.05^{60}}\right) +
   \frac{\$1000}{1.05^{60}} = \$810.71.




Prices and Yields
==============================================================================
The return for holding a bond is typically referred to as a *yield*.

.. rst-class:: to-build

- A central feature of bonds is that prices and yields are negatively
  related.

.. rst-class:: to-build

- Since a bond promises a fixed payment at maturity, you want to
  purchase for a very low price.




Prices and Yields
==============================================================================
Think of a zero-coupon bond that costs :math:`P` and pays :math:`F` at
maturity.

.. rst-class:: to-build

- The yield, :math:`y`, is the value such that :math:`P \times (1+y) = F`:
  
.. rst-class:: to-build

.. math::

   y & = \frac{F}{P} - 1.

.. rst-class:: to-build
   
- Note that :math:`y` is a net return (not gross). 

.. rst-class:: to-build
  
- Since the bond price is in the denominator, :math:`y` and :math:`P`
  have an inverse relationship: higher prices mean lower yields.

.. rst-class:: to-build

- This relationship holds for coupon bonds as well (as seen in the
  bond pricing formula in Equation :eq:`bondprice`). 




Prices and Yields
==============================================================================
Consider a zero-coupon bond with a face value of $1000 and one period
until maturity.

.. rst-class:: to-build

- If :math:`P = \$990`, the yield is
  
.. rst-class:: to-build

.. math::

   y & = \frac{\$1000}{\$990} - 1 = 0.01010.

.. rst-class:: to-build
   
- If :math:`P = \$995`, the yield is
  
.. rst-class:: to-build

.. math::

   y & = \frac{\$1000}{\$995} - 1 = 0.005025.
  




Coupon Rate and Yield
==============================================================================
We saw above that if the market interest rate :math:`r` is equal to
the coupon rate, :math:`P = F`.

.. rst-class:: to-build

- Consider two competing investments: put your money in a savings
  account that pays :math:`r` each period, or buy a bond.  

.. rst-class:: to-build

- If the coupon rate is exactly equal to :math:`r`, then the bond
  exactly compensates you for market return and does not need to
  provide price appreciation.



Coupon Rate and Yield
==============================================================================
- If the coupon rate is less than :math:`r`, the bond does not
  compensate you enough - to be competitive, it must sell at a
  discount (less than the face value).

.. rst-class:: to-build

- If the coupon rate is greater than :math:`r`, the bond
  overcompensates you - to be competitive, it can sell at a premium
  (more than the face value).




Coupon Rate and Yield
==============================================================================
Why would a borrower sell a bond at a discount when :math:`r` is
greater than the coupon rate?  

.. rst-class:: to-build

- Because nobody would buy the bond unless the price formula holds.  




Coupon Rate and Yield
==============================================================================
Later, the bond price will fluctuate on the secondary market.

.. rst-class:: to-build

- If the market rate rises, investors will sell the bond (because of
  its low coupon).
  
  .. rst-class:: to-build

  - The price will fall until the overall return is commensurate with
    the market return.

.. rst-class:: to-build
  
- If the market rate falls, investors will buy the bond
  (because of its high coupon).  
  
  .. rst-class:: to-build

  - The price will rise until the overall return is commensurate with
    the market return.
  




Interest Rate Risk
==============================================================================
Unfortunately, interest rates don't remain constant. 

.. rst-class:: to-build

- Suppose you purchase a bond for the face value when the coupon rate
  and market interest rates are equal. 

.. rst-class:: to-build

- If the market rate suddenly rises, you will have your money tied up
  in an investment paying a rate that is too low (opportunity cost).  

.. rst-class:: to-build

- If you sell the bond on the secondary market, the price will be
  lower than the face (your purchase price) because :math:`r` is
  greater than the coupon rate.




Interest Rate Risk
==============================================================================
The opposite would be true if the market rate falls.

.. rst-class:: to-build

- As a result, bond holders are subject to interest rate fluctuations,
  or interest rate risk.




Maturity Risk
==============================================================================
Interest rate risk is exacerbated over longer maturities.  

.. rst-class:: to-build

- Suppose the market interest rate moves after you purchase two bonds
  with 10 and 30 years to maturity.

.. rst-class:: to-build

- If the market rate rises you will suffer a greater loss on the 30
  year bond since your money is tied to it for a longer period.

.. rst-class:: to-build

- As a result, prices of longer maturity bonds are more sensitive to
  interest rate movements.




Maturity Risk
==============================================================================
:math:`\qquad`

.. ifslides::

  .. image:: /_static/Bonds/table10_2_lg.jpg
     :width: 8in
     :align: center

.. ifnotslides::

  .. image:: /_static/Bonds/table10_2_lg.jpg
     :width: 6in




Bond Prices Over Time
==============================================================================
As a bond approaches maturity, its price will approach the face
value.  

.. rst-class:: to-build

- Fewer payments are subject to interest rate fluctuations.  

.. rst-class:: to-build

- This is true whether the bond sells at a premium or discount.  




Bond Prices Over Time
==============================================================================
Consider buying a bond the day before maturity.  
    
  .. rst-class:: to-build

  - If a coupon is paid at maturity, you only receive a prorated share
    of the coupon (one day's worth).
    
  .. rst-class:: to-build

  - Net of the prorated coupon, you should pay only the slightest
    discount to face value.
    
  .. rst-class:: to-build

  - The slight discount arises because you can invest your money
    overnight and earn a small amount of interest.
    

