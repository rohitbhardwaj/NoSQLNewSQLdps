-- Create and use keyspace
DROP KEYSPACE IF EXISTS nfjs;
CREATE KEYSPACE nfjs
WITH replication = {'class':'SimpleStrategy','replication_factor':1};

USE nfjs;

-- Create talks table
CREATE TABLE talks (
  id varchar primary key,
  name varchar,
  speaker varchar,
  audience int,
  duration int,
  cc boolean,
  released timestamp
) WITH comment = 'A table of talks';

-- Sample data for talks table
INSERT INTO talks (id, name, speaker, audience, duration, cc, released)
VALUES ('Continuous-Delivery-Workshop','Continuous Delivery Workshop', 'Neil Ford', 1, 10560, true, '2012-06-05');

INSERT INTO talks (id, name, speaker, audience, duration, cc, released)
VALUES ('The-Pragmatic-Programmer-Revisited','The Pragmatic Programmer Revisited', 'Matt Stine', 2, 10080, true, '2014-12-19');

INSERT INTO talks (id, name, speaker, audience, duration, cc, released)
VALUES ('Building-Reactive-Applications','Building Reactive Applications', 'Venkat Subramaniam', 2, 24900, false, '2015-04-09');

INSERT INTO talks (id, name, speaker, audience, duration, cc, released)
VALUES ('dSoftware-Architecture-Fundamentals','Software Architecture Fundamentals', 'Mark Richards', 2, 3780, true, '2016-01-10');

INSERT INTO talks (id, name, speaker, audience, duration, cc, released)
VALUES ('Cloud-Architectural-design-patterns-blueprints','Cloud Architectural design patterns blueprints', 'Rohit Bhardwaj', 2, 8640, true, '2016-05-30');
