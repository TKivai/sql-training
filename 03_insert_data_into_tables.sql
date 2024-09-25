INSERT INTO categories (name) VALUES
    ("Tyre_Wheel" ),
    ("Brakes"),
    ("Wipers"),
    ("Engine"),
    ("Battery"),
    ("Travel Accessories")
;

INSERT INTO manufacturers (name, warranty_period) VALUES
    ("Toyota",8),
    ("Chloride Exide",10),
    ("Goodyear", 3),
    ("Michelin", 4),
    ("Bridgestone", 4),
    ("Fremax", 0),
    ("AutoXtra", 2),
    ("Hinshitsu", 0),
    ("Bosch", 5)
;

INSERT INTO parts (name, category_id, manufacturer_id, stock, price) VALUES
    ("Carbon Black Rubber Tyre", 1,6,8, 45000),
    ("Bridgestone Dueler", 1, 5, 12, 27000),
    ("N150 SBR Chloride Exide", 5, 2, 10, 25000),
    ("Hinshitsu Booster Cable, 400 Amps", 6, 8, 16, 2000),
    ("AutoXtra Hand Pump", 6, 7, 30, 900),
    ("Fremax Brake Pad Set - Front", 2, 6,5,4000),
    ("Bosch Aero Echo", 3, 9,5,4000)
;

INSERT INTO purchases (customer_name, date) VALUES
    ("Antony Kivai", 2024-07-08),
    ("Ben Mukuha", 2024-01-04),
    ("Purity Wanjiku", 2024-08-25)
#     ("Cynthia", 2024-05-22),
#     ("Emmanuel Kenyani", 2024-12-31)
;

INSERT INTO purchase_details (purchase_id, part_id, quantity) VALUES
    (1, 3,1),
    (1, 4,2),
    (2, 7,2),
    (3, 2,2),
    (3, 5,1),
    (3, 6,2)
;