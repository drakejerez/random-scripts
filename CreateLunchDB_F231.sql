-- Written by Drake Jerez, 11/3/2023 for CNIT 272

-- Purpose: Setup the Lunch database

set echo off
clear columns
clear breaks
clear computes
set feedback on

-- drop the 6 tables from this userid if they exist
drop table worker cascade constraints;
drop table food cascade constraints;
drop table department cascade constraints;
drop table lunch cascade constraints;
drop table lunch_item cascade constraints;
drop table food_supplier cascade constraints;

-- **************************************************************************
-- load the lunch database tables:
--              worker
--              food
--              department
--              lunch
--              lunch_item
--              food_supplier
-- **************************************************************************


-- Create the worker table
set feedback on
PROMPT Worker
CREATE TABLE worker
  (worker_id     char(3)    CONSTRAINT worker_PK PRIMARY KEY,
   first_name      varchar2(10),
   last_name       varchar2(20),
   city            varchar2(30),
   dept_code       varchar2(3),
   hire_date       date,
   credit_limit    number(4,2),
   phone_number    char(4),
   manager_id      char(3)
  );


insert into worker values
  (555, 'Dane', 'Shreve', 'Aurora', 'Exe', '18-Mar-04', 45, '3484', null );
insert into worker values
  (556, 'Carole', 'Sumner', 'Hinsdale', 'Tch', '17-Jul-16', 35, '8722', 555);
insert into worker values
  (557, 'Rita', 'Gradle', 'Wilmette', 'Leg', '23-Mar-14', 32, '8438', 555);
insert into worker values
  (558, 'Melody', 'Campbell', 'Oak Brook', 'Hmn', '24-May-18', 28, '7591', 555);
insert into worker values
  (559, 'Tom', 'Neal', 'Hinsdale', 'Srv', '01-Apr-13', 26, '6830', 555);
insert into worker values
  (560, 'Jared', 'Ridgeman', 'Chicago', 'Aud', '01-Oct-12', 22, '5286', 558);
insert into worker values
  (561, 'Maria', 'Bensen', 'Wilmette', null, '15-Sep-07', 25, '3829', 555);
insert into worker values
  (562, 'Jose', 'Sanchez', 'Glencoe', 'Com', '01-Jul-12', 22, '5799', 557);
insert into worker values
  (563, 'Trey', 'Vought', 'Oak Brook', 'Acc', '01-Nov-13', 30, '1752', 555);
insert into worker values
  (564, 'James', 'Kingman', 'Chicago', 'Sal', '17-Dec-06', 33, '3357', 555);
insert into worker values
  (565, 'Latesha', 'Cross', null, 'Tch', '15-Feb-04', 25, '2974', 556);
insert into worker values
  (566, 'Tami', 'Tevona', 'Oak Brook', 'Hmn', '21-Aug-19', 21, '2346', 558);
insert into worker values
  (567, 'Darius', 'Richards', 'Oak Brook', 'Leg', '12-Jan-14', 22, '4446', 557);
insert into worker values
  (568, 'Taylor', 'Young', 'Wilmette', null, '12-Nov-07', 25, '2975', 557);
insert into worker values
  (569, 'Blair', 'Reynolds', 'Evanston', 'Fin', '07-Feb-13', 28, '3830', 563);
insert into worker values
  (570, 'Avery', 'Trance', 'Aurora', 'Aud', '19-Jun-18', 25, '3358', 557);
insert into worker values
  (571, 'Skyler', 'Harris', 'Chicago', 'Hmn', '28-Mar-05', 17, '5543', 558);
insert into worker values
  (572, 'Chase', 'Johnson', 'Hinsdale', null, '11-Dec-12', 20, '5544', 565);
insert into worker values
  (573, 'Cleo', 'White', null, 'Aud', '22-May-11', 22, '2976', 557);
insert into worker values
  (574, 'Cassie', 'Irwin', null, null, '13-Sep-03', 32, '5800', 562);
insert into worker values
  (575, 'Shawn', 'Smith', 'Glencoe', 'Fin', '19-Apr-12', 20, '3831', 563);
insert into worker values
  (576, 'Keyanna', 'Jones', 'Hinsdale', 'Tch', '15-Mar-19', 25, '3359', 565);
insert into worker values
  (577, 'Carey', 'Martin', 'Wilmette', 'Sal', '19-Nov-19', 20, '2977', 564);
insert into worker values
  (578, 'Katelynn', 'Rayner', 'Evanston', 'Tch', '07-Oct-11', 25, '2347', 565);
insert into worker values
  (579, 'Yvonne', 'Rivera', null, null, '13-Nov-15', 23, '4450', 555);
insert into worker values
  (580, 'Roy', 'Gonzalez', null, 'Acc', '19-Dec-11', 18, '4455', 563);
insert into worker values
  (581, 'Brooks', 'Walsh', 'Oak Brook', 'Srv', '21-Apr-07', 33, '4460', 559);
insert into worker values
  (582, 'Angie', 'Templeton', 'Hinsdale', 'Acc', '19-Jun-07', 24, '4465', 563);
insert into worker values
  (583, 'Tonya', 'Montre', 'Aurora', null, '07-Mar-12', 25, '3832', 562);
insert into worker values
  (584, 'Tyler', 'Harney', 'Chicago', 'Tch', '07-Mar-18', 27, '2349', 565);
insert into worker values
  (585, 'Sam', 'Frank', 'Evanston', 'Srv', '22-Jul-16', 30, '7655', 559);
insert into worker values
  (586, 'Jodie', 'Williams', 'Glencoe', null, '16-Mar-19', 25, '5801', 570);
insert into worker values
  (587, 'Kerry', 'Alveral', 'Oak Brook', 'Leg', '22-May-18', 33, '7667', 557);
insert into worker values
  (588, 'Gail', 'Walsh', 'Chicago', null, '22-Mar-21', 27, '2350', 582);
commit;


-- Create the food table
set feedback on
PROMPT food
CREATE TABLE food
  (supplier_id    varchar2(3),
   product_code   varchar2(2),
   menu_item      number(2),
   description    varchar2(20),
   price          number(4,2),
   price_upcharge number(4,2),
   CONSTRAINT food_PK PRIMARY KEY (supplier_id, product_code)
  );


insert into food values ('Ard', 'Pz', 17, 'Veggie Pizza', 6.25, null);
insert into food values ('Ard', 'Ds', 20, 'PB Cookie', 1.25, null);
insert into food values ('Ard', 'Sw', 12, 'Chicken Avocado Wrap', 5.25, null);
insert into food values ('Hsd', 'Cs', 1, 'Chef Salad', 5.75, 0.25);
insert into food values ('Hsd', 'Sp', 2, 'Chicken Soup', 4.25, null);
insert into food values ('Hsd', 'Ds', 12, 'Yellow Cake', 4.5, 0.5);
insert into food values ('Hsd', 'Pp', 1, 'Protein Box', 9, 0.5);
insert into food values ('Crm', 'Sw', 3, 'Grilled Cheese', 5.25, 0.4);
insert into food values ('Crm', 'Ps', 4, 'Philly Melt', 8.6, 0.7);
insert into food values ('Crm', 'Hb', 5, 'Ham Melt', 7.2, 0.3);
insert into food values ('Crm', 'Br', 21, 'Wheat Bagel', 4, 0.25);
insert into food values ('Foi', 'Vt', 6, 'Broccoli Salad', 4, 0.05);
insert into food values ('Foi', 'Ff', 7, 'French Fries', 1.5, null);
insert into food values ('Foi', 'Sp', 15, 'Barley Soup', 4.75, 0.2);
insert into food values ('Foi', 'Ds', 20, 'Apple Pie', 4.5, null);
insert into food values ('Jd6', 'Vr', 8, 'Soda', 2.25, 0.25);
insert into food values ('Jd6', 'Cf', 9, 'Coffee', 1.55, 0.15);
insert into food values ('Jd6', 'Ds', 12, 'Brownie', 3.45, 0.25);
insert into food values ('Jmd', 'Sp', 11, 'Potato Soup', 6.25, null);
insert into food values ('Jmd', 'Vr', 13, 'Iced Tea', 2.85, 0.15);
insert into food values ('Jmd', 'Vt', 14, 'Cole Slaw', 1.5, 0.5);
insert into food values ('Jmd', 'Pz', 17, 'Mushroom Pizza', 8, 0.15);
insert into food values ('Lss', 'Sw', 3, 'Grilled Cheese', 5.95, null);
insert into food values ('Lss', 'Sp', 11, 'Veggie Soup', 4.85, null);
insert into food values ('Dpz', 'Pz', 17, 'Cheese Pizza', 8.5, null);
insert into food values ('Dpz', 'Br', 18, 'Dinner Roll', 1, 0.25);
insert into food values ('Dpz', 'Sc', 19, 'Cheese Sauce', .75, null);
insert into food values ('Gls', 'Ds', 10, 'Sugar Cookie', 3.5, 0.5);
insert into food values ('Gls', 'Vr', 16, 'Mango Smoothie', 4.95, null);
insert into food values ('Gls', 'Br', 16, 'Breadstick', 1.25, null);
insert into food values ('Blu', 'Sw', 20, 'Turkey Club', 7.5, 0.5);
insert into food values ('Blu', 'Cp', 6, 'Chips', 2.80, null);
insert into food values ('Lak', 'Sw', 7, 'Caprese', 5.5, 0.5);
insert into food values ('Lak', 'Sd', 2, 'Spinach Salad', 6.25, null);
insert into food values ('Lak', 'Br', 18, 'Cheese Stick', 2.35, null);
commit;


-- Create the department table
set feedback on
PROMPT department
CREATE TABLE department
  (dept_code           varchar2(3)  CONSTRAINT department_PK PRIMARY KEY,
   department_name     varchar2(30)
  );


insert into department values ('Acc', 'Accounting');
insert into department values ('Exe', 'Executive');
insert into department values ('Mkt', 'Marketing');
insert into department values ('Hmn', 'Human Resources');
insert into department values ('Sal', 'Sales');
insert into department values ('Shp', 'Shipping');
insert into department values ('Tch', 'Technology');
insert into department values ('Srv', 'Service');
insert into department values ('Fin', 'Finance');
insert into department values ('Fac', 'Facilities');
insert into department values ('Aud', 'Auditing');
insert into department values ('Pur', 'Purchasing');
insert into department values ('Leg', 'Legal');
insert into department values ('Com', 'Compliance');
insert into department values ('Eng', 'Engineering');

commit;


-- Create the lunch table.
set feedback on
PROMPT lunch
CREATE TABLE lunch
  (lunch_id    number(3)    CONSTRAINT lunch_PK PRIMARY KEY,
   lunch_date  date,
   worker_id  char(3)
  );


insert into lunch values (1, '22-May-21', 584);
insert into lunch values (2, '22-May-21', 557);
insert into lunch values (3, '22-May-21', 568);
insert into lunch values (4, '22-May-21', 562);
insert into lunch values (5, '22-May-21', 582);
insert into lunch values (6, '22-May-21', 564);
insert into lunch values (7, '27-May-21', 586);
insert into lunch values (8, '27-May-21', 555);
insert into lunch values (9, '27-May-21', 559);
insert into lunch values (10, '27-May-21', 564);
insert into lunch values (11, '27-May-21', 573);
insert into lunch values (12, '27-May-21', 556);
insert into lunch values (13, '27-May-21', 568);
insert into lunch values (14, '01-Jun-21', 575);
insert into lunch values (15, '01-Jun-21', 565);
insert into lunch values (16, '01-Jun-21', 562);
insert into lunch values (17, '01-Jun-21', 570);
insert into lunch values (18, '01-Jun-21', 585);
insert into lunch values (19, '01-Jun-21', 579);
insert into lunch values (20, '03-Jun-21', 587);
insert into lunch values (21, '03-Jun-21', 560);
insert into lunch values (22, '03-Jun-21', 560);
insert into lunch values (23, '03-Jun-21', 559);
insert into lunch values (24, '03-Jun-21', 582);
insert into lunch values (25, '07-Jun-21', 572);
insert into lunch values (26, '07-Jun-21', 581);
insert into lunch values (27, '07-Jun-21', 563);
insert into lunch values (28, '10-Jun-21', 560);
insert into lunch values (29, '10-Jun-21', 565);
insert into lunch values (30, '10-Jun-21', 576);
insert into lunch values (31, '10-Jun-21', 555);
insert into lunch values (32, '10-Jun-21', 567);
insert into lunch values (33, '10-Jun-21', 571);
insert into lunch values (34, '15-Jun-21', 578);
insert into lunch values (35, '15-Jun-21', 557);
insert into lunch values (36, '15-Jun-21', 560);
insert into lunch values (37, '15-Jun-21', 571);
insert into lunch values (38, '15-Jun-21', 587);
insert into lunch values (39, '15-Jun-21', 572);
insert into lunch values (40, '15-Jun-21', 584);
insert into lunch values (41, '15-Jun-21', 582);
insert into lunch values (42, '20-Jun-21', 585);
insert into lunch values (43, '20-Jun-21', 576);
insert into lunch values (44, '20-Jun-21', 584);
insert into lunch values (45, '20-Jun-21', 555);
insert into lunch values (46, '20-Jun-21', 559);
insert into lunch values (47, '22-Jun-21', 576);
insert into lunch values (48, '22-Jun-21', 555);
insert into lunch values (49, '22-Jun-21', 562);
insert into lunch values (50, '23-Jun-21', 577);
insert into lunch values (51, '23-Jun-21', 563);
insert into lunch values (52, '23-Jun-21', 587);
commit;


-- Create the lunch_item table.
set feedback on
PROMPT lunch_item
CREATE TABLE lunch_item
  (lunch_id        number(3),
   item_number     number(2),
   supplier_id     varchar2(3),
   product_code    varchar2(2),
   quantity        number(1),
   CONSTRAINT lunch_item_PK PRIMARY KEY (lunch_id, item_number)
  );


insert into lunch_item values (1, 1, 'Hsd', 'Cs', 1);
insert into lunch_item values (1, 2, 'Hsd', 'Sp', 2);
insert into lunch_item values (1, 3, 'Jd6', 'Vr', 2);
insert into lunch_item values (2, 1, 'Jmd', 'Pz', 2);
insert into lunch_item values (2, 2, 'Foi', 'Ff', 1);
insert into lunch_item values (2, 3, 'Jd6', 'Vr', 2);
insert into lunch_item values (2, 4, 'Hsd', 'Ds', 1);
insert into lunch_item values (3, 1, 'Hsd', 'Cs', 1);
insert into lunch_item values (3, 2, 'Crm', 'Ps', 1);
insert into lunch_item values (3, 3, 'Foi', 'Ff', 1);
insert into lunch_item values (3, 4, 'Jmd', 'Vr', 1);
insert into lunch_item values (3, 5, 'Hsd', 'Ds', 1);
insert into lunch_item values (4, 1, 'Foi', 'Sp', 2);
insert into lunch_item values (4, 2, 'Crm', 'Hb', 2);
insert into lunch_item values (4, 3, 'Foi', 'Vt', 1);
insert into lunch_item values (4, 4, 'Jd6', 'Ds', 2);
insert into lunch_item values (5, 1, 'Hsd', 'Sp', 1);
insert into lunch_item values (5, 2, 'Crm', 'Hb', 1);
insert into lunch_item values (5, 3, 'Foi', 'Sp', 1);
insert into lunch_item values (5, 4, 'Jd6', 'Cf', 2);
insert into lunch_item values (5, 5, 'Hsd', 'Ds', 1);
insert into lunch_item values (6, 1, 'Hsd', 'Cs', 1);
insert into lunch_item values (6, 2, 'Hsd', 'Sp', 1);
insert into lunch_item values (6, 3, 'Crm', 'Ps', 1);
insert into lunch_item values (6, 4, 'Jd6', 'Vr', 1);
insert into lunch_item values (6, 5, 'Jd6', 'Vr', 1);
insert into lunch_item values (7, 1, 'Hsd', 'Cs', 1);
insert into lunch_item values (7, 2, 'Crm', 'Ps', 1);
insert into lunch_item values (7, 3, 'Jd6', 'Ds', 1);
insert into lunch_item values (8, 1, 'Hsd', 'Cs', 1);
insert into lunch_item values (8, 2, 'Hsd', 'Sp', 1);
insert into lunch_item values (8, 3, 'Crm', 'Hb', 2);
insert into lunch_item values (8, 4, 'Foi', 'Ff', 1);
insert into lunch_item values (8, 5, 'Jd6', 'Vr', 1);
insert into lunch_item values (8, 6, 'Jd6', 'Ds', 1);
insert into lunch_item values (9, 1, 'Hsd', 'Cs', 1);
insert into lunch_item values (9, 2, 'Crm', 'Ps', 1);
insert into lunch_item values (9, 3, 'Jd6', 'Cf', 2);
insert into lunch_item values (9, 4, 'Gls', 'Ds', 1);
insert into lunch_item values (10, 1, 'Hsd', 'Sp', 2);
insert into lunch_item values (10, 2, 'Crm', 'Sw', 2);
insert into lunch_item values (10, 3, 'Foi', 'Ff', 1);
insert into lunch_item values (10, 4, 'Jd6', 'Ds', 1);
insert into lunch_item values (11, 1, 'Hsd', 'Sp', 1);
insert into lunch_item values (11, 2, 'Lss', 'Sw', 1);
insert into lunch_item values (11, 3, 'Foi', 'Ff', 1);
insert into lunch_item values (11, 4, 'Gls', 'Ds', 2);
insert into lunch_item values (12, 1, 'Hsd', 'Cs', 1);
insert into lunch_item values (12, 2, 'Crm', 'Sw', 1);
insert into lunch_item values (12, 3, 'Crm', 'Hb', 1);
insert into lunch_item values (12, 4, 'Jd6', 'Vr', 1);
insert into lunch_item values (12, 5, 'Foi', 'Ds', 1);
insert into lunch_item values (13, 1, 'Hsd', 'Sp', 1);
insert into lunch_item values (13, 2, 'Crm', 'Ps', 1);
insert into lunch_item values (13, 3, 'Foi', 'Ff', 1);
insert into lunch_item values (13, 4, 'Jd6', 'Vr', 2);
insert into lunch_item values (13, 5, 'Foi', 'Ds', 1);
insert into lunch_item values (14, 1, 'Hsd', 'Cs', 1);
insert into lunch_item values (14, 2, 'Hsd', 'Sp', 1);
insert into lunch_item values (14, 3, 'Crm', 'Ps', 1);
insert into lunch_item values (14, 4, 'Foi', 'Ff', 1);
insert into lunch_item values (14, 5, 'Jd6', 'Ds', 1);
insert into lunch_item values (15, 1, 'Hsd', 'Sp', 1);
insert into lunch_item values (15, 2, 'Crm', 'Sw', 1);
insert into lunch_item values (15, 3, 'Jd6', 'Vr', 2);
insert into lunch_item values (15, 4, 'Foi', 'Ds', 1);
insert into lunch_item values (16, 1, 'Hsd', 'Ds', 1);
insert into lunch_item values (16, 2, 'Crm', 'Ps', 1);
insert into lunch_item values (16, 3, 'Foi', 'Ff', 1);
insert into lunch_item values (16, 4, 'Jd6', 'Vr', 1);
insert into lunch_item values (16, 5, 'Jd6', 'Ds', 1);
insert into lunch_item values (17, 1, 'Jd6', 'Cf', 1);
insert into lunch_item values (17, 2, 'Jd6', 'Vr', 3);
insert into lunch_item values (17, 3, 'Hsd', 'Cs', 1);
insert into lunch_item values (18, 1, 'Hsd', 'Cs', 1);
insert into lunch_item values (18, 2, 'Jmd', 'Vr', 1);
insert into lunch_item values (19, 1, 'Crm', 'Sw', 1);
insert into lunch_item values (19, 2, 'Jd6', 'Vr', 1);
insert into lunch_item values (19, 3, 'Foi', 'Sp', 1);
insert into lunch_item values (20, 1, 'Blu', 'Sw', 1);
insert into lunch_item values (20, 2, 'Blu', 'Cp', 2);
insert into lunch_item values (25, 1, 'Jd6', 'Vr', 1);
insert into lunch_item values (25, 2, 'Jmd', 'Pz', 1);
insert into lunch_item values (25, 3, 'Lss', 'Sw', 1);
insert into lunch_item values (28, 1, 'Ard', 'Pz', 2);
insert into lunch_item values (28, 2, 'Jd6', 'Vr', 1);
insert into lunch_item values (30, 1, 'Crm', 'Ps', 1);
insert into lunch_item values (30, 2, 'Lss', 'Sp', 1);
insert into lunch_item values (32, 1, 'Dpz', 'Pz', 2);
insert into lunch_item values (32, 2, 'Dpz', 'Br', 2);
insert into lunch_item values (34, 1, 'Lss', 'Sw', 1);
insert into lunch_item values (34, 2, 'Lss', 'Sp', 1);
insert into lunch_item values (35, 1, 'Hsd', 'Ds', 1);
insert into lunch_item values (35, 2, 'Gls', 'Br', 1);
insert into lunch_item values (36, 1, 'Jd6', 'Ds', 1);
insert into lunch_item values (36, 2, 'Jd6', 'Cf', 1);
insert into lunch_item values (36, 3, 'Lss', 'Sw', 1);
insert into lunch_item values (37, 1, 'Crm', 'Hb', 2);
insert into lunch_item values (37, 2, 'Jmd', 'Vr', 3);
insert into lunch_item values (37, 3, 'Crm', 'Br', 1);
insert into lunch_item values (38, 1, 'Hsd', 'Sp', 2);
insert into lunch_item values (38, 2, 'Jd6', 'Vr', 1);
insert into lunch_item values (39, 1, 'Crm', 'Ps', 1);
insert into lunch_item values (39, 2, 'Jd6', 'Vr', 1);
insert into lunch_item values (39, 3, 'Foi', 'Ff', 1);
insert into lunch_item values (40, 1, 'Hsd', 'Cs', 1);
insert into lunch_item values (40, 2, 'Jmd', 'Vr', 1);
insert into lunch_item values (41, 1, 'Dpz', 'Pz', 2);
insert into lunch_item values (41, 2, 'Dpz', 'Br', 2);
insert into lunch_item values (41, 3, 'Jd6', 'Vr', 1);
insert into lunch_item values (42, 1, 'Hsd', 'Cs', 2);
insert into lunch_item values (42, 2, 'Crm', 'Ps', 1);
insert into lunch_item values (42, 3, 'Jd6', 'Vr', 1);
insert into lunch_item values (43, 1, 'Ard', 'Pz', 2);
insert into lunch_item values (43, 2, 'Dpz', 'Br', 2);
insert into lunch_item values (43, 3, 'Jd6', 'Vr', 1);
insert into lunch_item values (44, 1, 'Jmd', 'Sp', 1);
insert into lunch_item values (44, 2, 'Jmd', 'Vr', 1);
insert into lunch_item values (44, 3, 'Gls', 'Ds', 2);
insert into lunch_item values (45, 1, 'Hsd', 'Pp', 1);
insert into lunch_item values (45, 2, 'Crm', 'Hb', 1);
insert into lunch_item values (45, 3, 'Jmd', 'Vr', 1);
insert into lunch_item values (46, 1, 'Crm', 'Sw', 2);
insert into lunch_item values (46, 2, 'Dpz', 'Br', 2);
insert into lunch_item values (46, 3, 'Dpz', 'Sc', 1);
insert into lunch_item values (46, 4, 'Jmd', 'Vr', 1);
insert into lunch_item values (47, 1, 'Lak', 'Sw', 1);
insert into lunch_item values (47, 2, 'Lak', 'Sd', 1);
insert into lunch_item values (47, 3, 'Lak', 'Br', 3);
insert into lunch_item values (47, 4, 'Gls', 'Ds', 2);
insert into lunch_item values (48, 1, 'Hsd', 'Cs', 1);
insert into lunch_item values (48, 2, 'Crm', 'Ps', 1);
insert into lunch_item values (48, 3, 'Jd6', 'Ds', 1);
insert into lunch_item values (49, 1, 'Hsd', 'Ds', 1);
insert into lunch_item values (49, 2, 'Crm', 'Ps', 1);
insert into lunch_item values (49, 3, 'Foi', 'Ff', 1);
insert into lunch_item values (49, 4, 'Jd6', 'Vr', 1);
insert into lunch_item values (49, 5, 'Jd6', 'Ds', 1);

insert into lunch_item values (50, 1, 'Lak', 'Sw', 1);
insert into lunch_item values (50, 2, 'Lak', 'Sd', 1);
insert into lunch_item values (50, 3, 'Lak', 'Br', 2);
insert into lunch_item values (51, 1, 'Hsd', 'Pp', 1);
insert into lunch_item values (51, 2, 'Crm', 'Hb', 1);
insert into lunch_item values (51, 3, 'Dpz', 'Sc', 1);
insert into lunch_item values (52, 1, 'Gls', 'Ds', 2);
insert into lunch_item values (52, 2, 'Jmd', 'Vr', 1);
insert into lunch_item values (52, 3, 'Foi', 'Ff', 1);
commit;



-- create the food_supplier table
set feedback on
PROMPT food_supplier
CREATE TABLE food_supplier
  (supplier_id     varchar2(3)   CONSTRAINT food_supplier_PK PRIMARY KEY,
   supplier_name   varchar2(30),
   supplier_city varchar2(30)
  );


insert into food_supplier values ('Ard', 'Arnoldo Deli', 'Glencoe');
insert into food_supplier values ('Hsd', 'Harper Street Deli', 'Chicago');
insert into food_supplier values ('Crm', 'Crystal Market', 'Hinsdale');
insert into food_supplier values ('Foi', 'Fontinas Italian', 'Chicago');
insert into food_supplier values ('Fas', 'Framer and Samson', 'Orland Park');
insert into food_supplier values ('Jd6', 'Justin''s Deli at 652', 'Oak Brook');
insert into food_supplier values ('Jmd', 'Jebston Montrose Deli', 'Chicago');
insert into food_supplier values ('Rby', 'Rosemont Bakery', 'Glencoe');
insert into food_supplier values ('Lss', 'Lucias Sub Shop', 'Aurora');
insert into food_supplier values ('Har', 'Harold Bakery', 'Hinsdale');
insert into food_supplier values ('Dpz', 'Downtowner Pizza', 'Chicago');
insert into food_supplier values ('Gls', 'Great Lakes Station', 'Wilmette');
insert into food_supplier values ('Gio', 'Giovana and Sons', 'Chicago');
insert into food_supplier values ('Blu', 'Blue Sky Deli', 'Oak Brook');
insert into food_supplier values ('Lak', 'Lakeshore Bakery', 'Chicago');
insert into food_supplier values ('Met', 'Under the Metra', 'Chicago');
insert into food_supplier values ('Fdv', 'Fresh Daily Vegetables', 'Aurora');

commit;

alter table worker
add constraint dc_fk foreign key (dept_code) references department;
alter table lunch
add constraint worker_fk foreign key (worker_id) references worker;
alter table food
add constraint supplier_fk foreign key (supplier_id) references food_supplier;
alter table lunch_item
add constraint lunch_fk foreign key (lunch_id) references lunch;
alter table lunch_item
add constraint food_fk foreign key (supplier_id,product_code) references food;

set feedback on
set define on
set feedback 1
set echo on
