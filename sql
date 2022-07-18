/*1*/  SELECT *  FROM customer WHERE country = 'Canada';

/*2*/  SELECT DISTINCT country FROM customer;

/*3*/  SELECT count(total_amount) FROM orders;

/*4*/  SELECT max(unit_price  * total_amount) AS max_price_of_orders FROM order_item JOIN orders o on o.id = order_item.order_id;

/*5*/  SELECT sum(unit_price * total_amount) AS sum_of_all_orders FROM order_item JOIN orders o on order_item.order_id = o.id;

/*6*/  SELECT sum(unit_price * orders.total_amount) FROM orders JOIN product ON unit_price = unit_price
       WHERE order_date BETWEEN '2014-01-01' AND '2015-01-01';

/*7*/  SELECT avg(total_amount * unit_price) AS average_of_all_orders_amount FROM orders JOIN product ON unit_price = unit_price;

/*8*/ SELECT first_name, avg(total_amount * product.unit_price)FROM customer,order_item
      JOIN orders ON orders.id = order_item.order_id
      JOIN product ON product.id = order_item.product_id
      group by first_name;
/*9*/ SELECT * FROM customer WHERE country IN ('Spain') OR country IN ('Brazil');
/*10*/
/*11*/
/*12*/
/*13*/
/*14*/
/*15*/
/*16*/
/*17*/
/*18*/