CREATE TABLE restaurants (
  id SERIAL,
  name VARCHAR(50),
  address VARCHAR(255),
  PRIMARY KEY (id)
);

INSERT INTO
    restaurants(name, address)
VALUES
    ('Smallflower Fishhook Cactus','65 Moland Plaza'),
    ('Watermeal','873 Schlimgen Circle'),
    ('Cumberland Stitchwort','62510 Grayhawk Parkway'),
    ('Jointed Spikesedge','3 Pleasure Parkway'),
    ('Harlequin Phacelia','8 Elgar Junction'),
    ('Longleaf Phlox','00710 Stone Corner Alley'),
    ('Yellowdot Saxifrage','9 Paget Road'),
    ('Sanionia Moss','297 Northfield Alley'),
    ('Proliferous Pink','2 Bobwhite Center'),
    ('Pinewoods Horkelia','6 Golden Leaf Crossing');