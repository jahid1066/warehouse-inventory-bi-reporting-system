-- Supplier:
INSERT INTO Supplier (supplier_ID, contact_details, company, dangerous_goods_storage) VALUES
(1, '+491752851402', 'Colart Deutschland GmbH', 'YES'),
(2, '+491863122500', 'CONCEPT GmbH', 'YES'),
(3, '+491857131323', 'ECORETAIL GmbH', 'YES'),
(4, '+492161251500', 'ELASTOFLEX GmbH', 'YES'),
(5, '+496151287888', 'ERNST SCHAEFER GMBH & C', 'YES');

-- Warehouse:
INSERT INTO Warehouse VALUES
(15, 'Magdeburg', 'Alex Ostin', 30, 'YES', '2021-07-16 15:00:00'),
(16, 'Osterweddingen', 'Jane Ludwerg', 50, 'YES', '2021-07-15 11:00:00'),
(17, 'Halle', 'Adam Mueller', 0, 'YES', '2021-07-16 10:11:00'),
(18, 'Leipzig', 'Julian Ray', 70, 'YES', '2021-07-14 10:45:55'),
(19, 'Bonn', 'Kevin Koitsch', 20, 'YES', '2021-07-16 11:00:55');

-- Staff:
INSERT INTO Staff VALUES
(500, 'David Wallace', 'Procurement Manager', 'Male', 'davidwallace@kaufland.com', '01513527891', 1),
(501, 'Mick Petter', 'Sales Executive', 'Male', 'mickpetter@kaufland.com', '01734268140', 3),
(502, 'Lana Rose', 'Procurement Specialist', 'Female', 'lanarosea@kaufland.com', '01567289012', 4),
(503, 'Jack Daniels', 'Junior Procurement', 'Male', 'jackdaniels@kaufland.com', '01571318765', 2),
(504, 'Angela Martin', 'Cost Controller', 'Female', 'angelamartin@kaufland.com', '01736712359', 5);

-- Goods:
INSERT INTO Goods VALUES
(800, 399, 'Coffee', 'Drinks', 1),
(801, 129, 'Cornflakes', 'Food', 3),
(802, 89, 'Staropreman', 'Beer', 5),
(803, 71, 'Fettarme Milch', 'Drinks', 4),
(804, 125, 'Nussano', 'Food', 1),
(805, 99, 'Tomato Ketchup', 'Food', 5),
(806, 99, 'Mayonnaise', 'Food', 5),
(807, 89, 'Kombucha', 'Beer', 2),
(808, 289, 'Coffee', 'Drinks', 1),
(809, 2, 'Red Bull', 'Drinks', 5),
(810, 79, 'Pasta', 'Food', 1);

-- Store:
INSERT INTO Store (cargo_ID, warehouse_code, storage) VALUES
(801, 18, 'Tassimo Coffee'),
(807, 16, 'Kombucha'),
(809, 19, 'RedBull'),
(805, 15, 'Tomato Ketchup'),
(804, 17, 'Nussano'),
(802, 16, 'Staropreman'),
(801, 15, 'Cornflakes'),
(803, 17, 'Fettarme Milch'),
(806, 16, 'Mayonnaise'),
(808, 15, 'Jacobs Coffee');

