DROP TABLE IF EXISTS  cattoys,
                      cats,
                      toys;
              

CREATE TABLE cats (
    id SERIAL PRIMARY KEY, 
    name VARCHAR,
    color VARCHAR,
    breed VARCHAR
);

CREATE TABLE toys (
    id SERIAL PRIMARY KEY, 
    price INTEGER,
    color VARCHAR,
    name VARCHAR
);

CREATE TABLE cattoys (
    id SERIAL PRIMARY KEY, 
    cat_id INTEGER,
    toy_id INTEGER,
    FOREIGN KEY (cat_id) REFERENCES cats(id),
    FOREIGN KEY (toy_id) REFERENCES toys(id)
);

INSERT INTO 
  cats(name, color, breed)
VALUES 
  ('A', 'White', 'Persian'),
  ('B', 'White', 'Tommy'),
  ('C', 'Orange', 'Tiger'),
  ('D', 'Spotted', 'Jaguar'),
  ('E', 'Tri-Color', 'Lyger');


INSERT INTO 
  toys(price, color, name)
VALUES 
  (5.99, 'Dot', 'Ball'),
  (10, 'Stripe', 'Plushie'),
  (55.99, 'Pink', 'Laser'),
  (75, 'Rainbow', 'Pool'),
  (0, 'Yellow', 'Friend');

INSERT INTO 
  cattoys(cat_id, toy_id)
VALUES 
  (1, 1),
  (1, 2),
  (3, 1),
  (4, 5),
  (5, 4);
 




