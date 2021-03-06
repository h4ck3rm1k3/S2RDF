SELECT tab0.v1 AS v1 , tab6.v7 AS v7 , tab4.v5 AS v5 , tab5.v6 AS v6 , tab3.v4 AS v4 , tab8.v9 AS v9 , tab2.v3 AS v3 , tab7.v8 AS v8 , tab1.v2 AS v2 , tab9.v10 AS v10 
 FROM    (SELECT obj AS v1 
	 FROM gr__offers$$1$$ 
	 WHERE sub = 'wsdbm:Retailer61'
	) tab0
 JOIN    (SELECT sub AS v1 , obj AS v2 
	 FROM gr__includes$$2$$
	) tab1
 ON(tab0.v1=tab1.v1)
 JOIN    (SELECT obj AS v3 , sub AS v2 
	 FROM sorg__director$$3$$
	
	) tab2
 ON(tab1.v2=tab2.v2)
 JOIN    (SELECT obj AS v4 , sub AS v3 
	 FROM wsdbm__friendOf$$4$$
	
	) tab3
 ON(tab2.v3=tab3.v3)
 JOIN    (SELECT obj AS v5 , sub AS v4 
	 FROM wsdbm__friendOf$$5$$
	
	) tab4
 ON(tab3.v4=tab4.v4)
 JOIN    (SELECT sub AS v5 , obj AS v6 
	 FROM wsdbm__likes$$6$$
	) tab5
 ON(tab4.v5=tab5.v5)
 JOIN    (SELECT obj AS v7 , sub AS v6 
	 FROM sorg__editor$$7$$
	) tab6
 ON(tab5.v6=tab6.v6)
 JOIN    (SELECT sub AS v7 , obj AS v8 
	 FROM wsdbm__makesPurchase$$8$$
	
	) tab7
 ON(tab6.v7=tab7.v7)
 JOIN    (SELECT obj AS v9 , sub AS v8 
	 FROM wsdbm__purchaseFor$$9$$
	
	) tab8
 ON(tab7.v8=tab8.v8)
 JOIN    (SELECT sub AS v9 , obj AS v10 
	 FROM sorg__caption$$10$$
	
	) tab9
 ON(tab8.v9=tab9.v9)


++++++Tables Statistic
wsdbm__likes$$6$$	2	OS	wsdbm__likes/sorg__editor
	VP	<wsdbm__likes>	11256
	SO	<wsdbm__likes><wsdbm__friendOf>	11256	1.0
	OS	<wsdbm__likes><sorg__editor>	343	0.03
------
sorg__caption$$10$$	1	SO	sorg__caption/wsdbm__purchaseFor
	VP	<sorg__caption>	225
	SO	<sorg__caption><wsdbm__purchaseFor>	165	0.73
------
wsdbm__purchaseFor$$9$$	2	OS	wsdbm__purchaseFor/sorg__caption
	VP	<wsdbm__purchaseFor>	15000
	SO	<wsdbm__purchaseFor><wsdbm__makesPurchase>	15000	1.0
	OS	<wsdbm__purchaseFor><sorg__caption>	1055	0.07
------
sorg__director$$3$$	2	OS	sorg__director/wsdbm__friendOf
	VP	<sorg__director>	148
	SO	<sorg__director><gr__includes>	145	0.98
	OS	<sorg__director><wsdbm__friendOf>	45	0.3
------
gr__offers$$1$$	0	VP	gr__offers/
	VP	<gr__offers>	14179
	OS	<gr__offers><gr__includes>	14179	1.0
------
sorg__editor$$7$$	2	OS	sorg__editor/wsdbm__makesPurchase
	VP	<sorg__editor>	129
	SO	<sorg__editor><wsdbm__likes>	125	0.97
	OS	<sorg__editor><wsdbm__makesPurchase>	11	0.09
------
wsdbm__friendOf$$4$$	1	SO	wsdbm__friendOf/sorg__director
	VP	<wsdbm__friendOf>	448135
	SO	<wsdbm__friendOf><sorg__director>	4806	0.01
	OS	<wsdbm__friendOf><wsdbm__friendOf>	177882	0.4
------
gr__includes$$2$$	2	OS	gr__includes/sorg__director
	VP	<gr__includes>	9000
	SO	<gr__includes><gr__offers>	4722	0.52
	OS	<gr__includes><sorg__director>	519	0.06
------
wsdbm__makesPurchase$$8$$	1	SO	wsdbm__makesPurchase/sorg__editor
	VP	<wsdbm__makesPurchase>	15000
	SO	<wsdbm__makesPurchase><sorg__editor>	112	0.01
	OS	<wsdbm__makesPurchase><wsdbm__purchaseFor>	15000	1.0
------
wsdbm__friendOf$$5$$	2	OS	wsdbm__friendOf/wsdbm__likes
	VP	<wsdbm__friendOf>	448135
	SO	<wsdbm__friendOf><wsdbm__friendOf>	448135	1.0
	OS	<wsdbm__friendOf><wsdbm__likes>	106881	0.24
------
