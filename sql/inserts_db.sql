SET search_path TO ubd_20222;

BEGIN WORK;
SET TRANSACTION READ WRITE;

SET datestyle = DMY;

/* OWNER */
INSERT INTO OWNER VALUES (1, 'Juan Martinez', '627463927', 'Calle Mayor, 3, 28013 Madrid');
INSERT INTO OWNER VALUES (2, 'Ana Rodriguez', '619372849', 'Calle San Miguel, 7, 41004 Sevilla');
INSERT INTO OWNER VALUES (3, 'Pedro Fernandez', '654918237', 'Avenida del Parque, 22, 46001 Valencia');
INSERT INTO OWNER VALUES (4, 'Laura Gonzalez', '656734829', 'Calle Real, 16, 50001 Zaragoza');
INSERT INTO OWNER VALUES (5, 'Javier Diaz', '634927361', 'Calle de Alcal�, 44, 28014 Madrid');
INSERT INTO OWNER VALUES (6, 'Isabel Lopez', '625184729', 'Calle de la Paz, 9, 29015 M�laga');
INSERT INTO OWNER VALUES (7, 'Mario Hernandez', '648239174', 'Plaza Mayor, 3, 37002 Salamanca');
INSERT INTO OWNER VALUES (8, 'Elena Perez', '690234819', 'Avenida de la Libertad, 27, 30009 Murcia');
INSERT INTO OWNER VALUES (9, 'Antonio Sanchez', '667482913', 'Calle San Francisco, 1, 01001 Vitoria-Gasteiz');
INSERT INTO OWNER VALUES (10, 'Marina Martin', '633819247', 'Calle del Carmen, 12, 36202 Vigo');
INSERT INTO OWNER VALUES (11, 'Rafaela Gomez', '634927836', 'Calle de la Merced, 11, 18001 Granada');
INSERT INTO OWNER VALUES (12, 'Sergio Ortiz', '655729481', 'Calle Mayor, 13, 02001 Albacete');
INSERT INTO OWNER VALUES (13, 'Marta Torres', '692481937', 'Calle Mayor, 22, 12001 Castell�n de la Plana');
INSERT INTO OWNER VALUES (14, 'Jorge Ramirez', '677319482', 'Calle Gran V�a, 27, 28013 Madrid');
INSERT INTO OWNER VALUES (15, 'Carmen Castro', '654913728', 'Plaza de Espa�a, 1, 28008 Madrid');
INSERT INTO OWNER VALUES (16, 'Diego Vega', '696843219', 'Calle del Prado, 5, 34001 Palencia');
INSERT INTO OWNER VALUES (17, 'Laura Gomez', '667890123', 'Calle de la Paloma, 22, 28013 Madrid');
INSERT INTO OWNER VALUES (18, 'Ricardo Alvarez', '678901234', 'Calle de Gran V�a, 20, 28013 Madrid');
INSERT INTO OWNER VALUES (19, 'Isabel Fernandez', '689012345', 'Calle de Fuencarral, 53, 28004 Madrid');
INSERT INTO OWNER VALUES (20, 'Pablo Rodriguez', '690123456', 'Calle de San Bernardo, 68, 28015 Madrid');
INSERT INTO OWNER VALUES (21, 'Luisa Martin', '901234567', 'Calle del Arenal, 4, 28013 Madrid');
INSERT INTO OWNER VALUES (22, 'Juan Garcia', '912345678', 'Calle de la Princesa, 32, 28008 Madrid');
INSERT INTO OWNER VALUES (23, 'Marta Jimenez', '923456789', 'Calle de Serrano, 3, 28001 Madrid');
INSERT INTO OWNER VALUES (24, 'Carlos Hernandez', '934567890', 'Calle de Alcal�, 58, 28009 Madrid');
INSERT INTO OWNER VALUES (25, 'Maria Lopez', '645678901', 'Calle de la Reina, 21, 28004 Madrid');

/* DOG */
INSERT INTO DOG VALUES (1,'Tom','Pekingese','21-03-2019',NULL,'M','brown','Long',4);
INSERT INTO DOG VALUES (2,'Rocky','Bulldog','01-06-2015',NULL,'M','black and white','Short',1);
INSERT INTO DOG VALUES (3,'Linda','Labrador Retriever','15-11-2005','25-01-2021','F','chocolate','Short',3);
INSERT INTO DOG VALUES (4,'Laika','French Bulldog','12-05-2014','3-11-2022','F','brown','Short',5);
INSERT INTO DOG VALUES (5,'Lassie','Rough Collie','28-02-2021',NULL,'F','black','Medium',8);
INSERT INTO DOG VALUES (6, 'Max', 'German Shepherd', '12-03-2015', NULL, 'M', 'Brown', 'Short',12);
INSERT INTO DOG VALUES (7, 'Bella', 'Pekingese', '21-06-2018', NULL, 'F', 'Yellow', 'Short',4);
INSERT INTO DOG VALUES (8, 'Rocky', 'Boxer', '05-01-2017', NULL, 'M', 'Brindle', 'Short',15);
INSERT INTO DOG VALUES (9, 'Lucy', 'Beagle', '07-11-2016', NULL, 'F', 'White and Brown', 'Short',24);
INSERT INTO DOG VALUES (10, 'Charlie', 'Poodle', '15-04-2020', '01-01-2022', 'M', 'Black', 'Medium',9);
INSERT INTO DOG VALUES (11, 'Daisy', 'Chihuahua', '28-09-2017', NULL, 'F', 'Tan', 'Short',20);
INSERT INTO DOG VALUES (12, 'Cooper', 'Golden Retriever', '19-12-2014', NULL, 'M', 'Golden', 'Long',7);
INSERT INTO DOG VALUES (13, 'Luna', 'Siberian Husky', '02-07-2019', NULL, 'F', 'Grey and White', 'Medium',12);
INSERT INTO DOG VALUES (14, 'Zeus', 'Rottweiler', '13-02-2016', '15-05-2021', 'M', 'Black and Tan', 'Short',18);
INSERT INTO DOG VALUES (15, 'Roxy', 'Dachshund', '11-10-2018', NULL, 'F', 'Red', 'Short',2);
INSERT INTO DOG VALUES (16, 'Milo', 'Shih Tzu', '20-05-2017', NULL, 'M', 'White and Brown', 'Medium',1);
INSERT INTO DOG VALUES (17, 'Sadie', 'Australian Shepherd', '09-08-2015', NULL, 'F', 'Blue Merle', 'Medium',22);
INSERT INTO DOG VALUES (18, 'Bear', 'Bulldog', '17-01-2021', NULL, 'M', 'Fawn', 'Short',9);
INSERT INTO DOG VALUES (19, 'Bailey', 'Bichon Frise', '03-12-2016', NULL, 'F', 'White', 'Medium',6);
INSERT INTO DOG VALUES (20, 'Toby', 'Border Collie', '27-08-2019', NULL, 'M', 'Black and White', 'Medium',24);
INSERT INTO DOG VALUES (21, 'Sophie', 'Boston Terrier', '19-04-2015', NULL, 'F', 'Black and White', 'Short',20);
INSERT INTO DOG VALUES (22, 'Chloe', 'Boxer', '07-01-2018', NULL, 'F', 'Fawn', 'Short',12);
INSERT INTO DOG VALUES (23, 'Duke', 'Bulldog', '14-06-2017', NULL, 'M', 'White and Brindle', 'Short',8);
INSERT INTO DOG VALUES (24, 'Lucky', 'Cavalier King Charles Spaniel', '29-09-2016', NULL, 'M', 'Black and Tan', 'Medium',3);
INSERT INTO DOG VALUES (25, 'Maggie', 'Chihuahua', '12-03-2018', NULL, 'F', 'Brown', 'Short',21);
INSERT INTO DOG VALUES (26, 'Bear', 'Chow Chow', '23-11-2015', '14-02-2022', 'M', 'Red', 'Long',18);
INSERT INTO DOG VALUES (27, 'Gizmo', 'Dachshund', '05-04-2019', NULL, 'M', 'Black and Tan', 'Short',13);
INSERT INTO DOG VALUES (28, 'Coco', 'French Bulldog', '10-02-2017', NULL, 'F', 'Fawn', 'Short',7);
INSERT INTO DOG VALUES (29, 'Harley', 'German Shepherd', '31-07-2020', NULL, 'M', 'Black and Tan', 'Long',10);
INSERT INTO DOG VALUES (30, 'Molly', 'Golden Retriever', '18-05-2016', NULL, 'F', 'Golden', 'Long',16);
INSERT INTO DOG VALUES (31, 'Rusty', 'Great Dane', '27-10-2015', NULL, 'M', 'Brindle', 'Short',24);
INSERT INTO DOG VALUES (32, 'Zeus', 'Great Dane', '12-06-2019', NULL, 'M', 'Brindle', 'Short',5);
INSERT INTO DOG VALUES (33, 'Bella', 'Poodle', '01-12-2017', '14-01-2022', 'F', 'White', 'Medium',3);
INSERT INTO DOG VALUES (34, 'Rocky', 'Rottweiler', '04-08-2016', NULL, 'M', 'Black and Tan', 'Short',21);
INSERT INTO DOG VALUES (35, 'Sadie', 'Beagle', '19-04-2015', '21-11-2022', 'F', 'Tricolor', 'Short',18);
INSERT INTO DOG VALUES (36, 'Max', 'Siberian Husky', '28-02-2018', NULL, 'M', 'Gray and White', 'Medium',13);
INSERT INTO DOG VALUES (37, 'Daisy', 'Boxer', '07-11-2019', NULL, 'F', 'Fawn', 'Short',7);
INSERT INTO DOG VALUES (38, 'Yago','French Bulldog','11-07-2021', NULL,'M','brown','Short',5);
INSERT INTO DOG VALUES (39, 'Bentley', 'Bernese Mountain Dog', '14-09-2017', '01-02-2022', 'M', 'Tricolor', 'Long',10);
INSERT INTO DOG VALUES (40, 'Lucy', 'Cocker Spaniel', '30-05-2016', NULL, 'F', 'Black', 'Medium',16);
INSERT INTO DOG VALUES (41, 'Gizmo', 'Chihuahua', '10-01-2015', '11-03-2022', 'M', 'Brown', 'Short',24);
INSERT INTO DOG VALUES (42, 'Roxy', 'Great Dane', '22-08-2018', NULL, 'F', 'Golden', 'Long',5);
INSERT INTO DOG VALUES (43, 'Laika','French Bulldog','12-05-2020', NULL,'F','brown','Short',5);
INSERT INTO DOG VALUES (44, 'Thor', 'Great Dane', '12-06-2018', NULL, 'M', 'Brindle', 'Short',5);
INSERT INTO DOG VALUES (45, 'Afrodita', 'Great Dane', '15-06-2019', NULL, 'M', 'Brindle', 'Short',5);

/* DRUG */
INSERT INTO DRUG VALUES (1, 'Advil', 'Tablet', 'Painkiller');
INSERT INTO DRUG VALUES (2, 'Rimadyl', 'Tablet', 'Anti-inflammatory');
INSERT INTO DRUG VALUES (3, 'Doxycycline', 'Capsule', 'Antibiotic');
INSERT INTO DRUG VALUES (4, 'Clavamox', 'Suspension', 'Antibiotic');
INSERT INTO DRUG VALUES (5, 'Heartgard', 'Chewable', 'Heartworm preventative');
INSERT INTO DRUG VALUES (6, 'Tramadol', 'Tablet', 'Painkiller');
INSERT INTO DRUG VALUES (7, 'Proin', 'Tablet', 'Urinary incontinence');
INSERT INTO DRUG VALUES (8, 'Benadryl', 'Tablet', 'Antihistamine');
INSERT INTO DRUG VALUES (9, 'Deramaxx', 'Tablet', 'Anti-inflammatory');
INSERT INTO DRUG VALUES (10, 'Cephalexin', 'Capsule', 'Antibiotic');
INSERT INTO DRUG VALUES (11, 'Prednisone', 'Tablet', 'Anti-inflammatory');
INSERT INTO DRUG VALUES (12, 'Metronidazole', 'Tablet', 'Antibiotic');
INSERT INTO DRUG VALUES (13, 'Mometamax', 'Ointment', 'Ear infection');
INSERT INTO DRUG VALUES (14, 'Gabapentin', 'Capsule', 'Seizures, Pain');
INSERT INTO DRUG VALUES (15, 'Sentinel', 'Chewable', 'Flea and heartworm preventative');
INSERT INTO DRUG VALUES (16, 'Atopica', 'Capsule', 'Skin allergies');
INSERT INTO DRUG VALUES (17, 'Simparica', 'Chewable', 'Flea and tick preventative');
INSERT INTO DRUG VALUES (18, 'Galliprant', 'Tablet', 'Painkiller');
INSERT INTO DRUG VALUES (19, 'Capstar', 'Tablet', 'Flea treatment');
INSERT INTO DRUG VALUES (20, 'Convenia', 'Injection', 'Antibiotic');

/* VACCINE */
INSERT INTO VACCINE VALUES (1, 'Rabies', 12);
INSERT INTO VACCINE VALUES (2, 'Distemper', 36);
INSERT INTO VACCINE VALUES (3, 'Parvovirus', 36);
INSERT INTO VACCINE VALUES (4, 'Adenovirus Type 2', 36);
INSERT INTO VACCINE VALUES (5, 'Parainfluenza', NULL);
INSERT INTO VACCINE VALUES (6, 'Bordetella', NULL);
INSERT INTO VACCINE VALUES (7, 'Lyme Disease', NULL);
INSERT INTO VACCINE VALUES (8, 'Leptospirosis', 12);
INSERT INTO VACCINE VALUES (9, 'Canine Influenza', NULL);
INSERT INTO VACCINE VALUES (10, 'Coronavirus', NULL);

/* TEST */
INSERT INTO TEST VALUES (1, 'Complete Blood Count');
INSERT INTO TEST VALUES (2, 'Blood Chemistry Panel');
INSERT INTO TEST VALUES (3, 'Fecal Examination');
INSERT INTO TEST VALUES (4, 'Urinalysis');
INSERT INTO TEST VALUES (5, 'Heartworm Test');
INSERT INTO TEST VALUES (6, 'Lyme Disease Test');
INSERT INTO TEST VALUES (7, 'Canine Parvovirus Test');
INSERT INTO TEST VALUES (8, 'Canine Distemper Test');
INSERT INTO TEST VALUES (9, 'Canine Adenovirus Test');
INSERT INTO TEST VALUES (10, 'Canine Coronavirus Test');
INSERT INTO TEST VALUES (11, 'Giardia Test');
INSERT INTO TEST VALUES (12, 'Blood Pressure Test');
INSERT INTO TEST VALUES (13, 'X-Ray');
INSERT INTO TEST VALUES (14, 'Ultrasound');
INSERT INTO TEST VALUES (15, 'ECG');

/* VISIT */
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (1, '27-01-2021', 'vaccination', '4598', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (4, '17-02-2020', 'follow-up',   '1002', 'Overweight.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (3, '12-06-2020', 'illness',     '4465', 'Food poisoning.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (6, '23-01-2018', 'vaccination', '4321', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (5, '22-01-2023', 'illness',   '3476', 'Dog has an ear infection');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (6, '12-01-2021', 'follow-up',   '4465', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (6, '17-01-2019', 'vaccination', '4598', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (2, '27-01-2018', 'vaccination',   '4598', 'Everything is ok..');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (3, '25-01-2021', 'illness',     '4465', 'Food poisoning.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (6, '23-01-2021', 'vaccination', '3567', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (22, '22-01-2022', 'vaccination', '3476', 'No issues.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (22, '12-01-2020', 'vaccination', '1345', 'All good.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (22, '20-01-2021', 'vaccination', '3476', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (22, '14-01-2019', 'vaccination', '3476', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (34, '12-01-2022', 'illness',     '1345', 'All good.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (36, '17-09-2022', 'illness',     '5674', 'On medication.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (37, '12-05-2020', 'illness',     '5674', 'No issues.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (41, '02-10-2022', 'illness',     '5674', 'All good.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (39, '23-07-2017', 'vaccination', '3421', 'No issues.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (20, '14-09-2019', 'vaccination', '3421', 'No issues.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (23, '23-11-2018', 'vaccination', '3421', 'All good.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (22, '23-01-2018', 'vaccination', '3421', 'No issues.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (21, '09-12-2018', 'illness',     '3476', 'No issues.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (17, '27-03-2020', 'illness',     '3476', 'All good.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (15, '22-04-2023', 'illness',     '3476', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (11, '02-07-2018', 'illness',     '3476', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (14, '15-05-2021', 'illness', '4569', 'Dog has a stomach ache');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (12, '12-01-2018', 'follow-up', '4569',   'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (13, '12-12-2020', 'vaccination', '4569', 'Dog is up to date');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (41, '22-08-2018', 'vaccination', '4569', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (16, '22-01-2023', 'illness',     '3476', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (19, '12-03-2020', 'illness', '4465', 'Any health issues or concerns identified during the exam.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (40, '21-03-2018', 'illness',     '4321', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (34, '22-01-2018', 'vaccination', '3476', 'Dog has a stomach ache.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (12, '12-01-2020', 'follow-up',   '4465', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (33, '23-01-2021', 'illness',     '4321', 'Any changes in the behavior or temperament over time.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (22, '22-01-2021', 'illness',     '3476', 'Dog has a stomach ache');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (10, '12-11-2021', 'illness',     '4465', 'Any health issues or concerns identified during the exam.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (6,  '23-01-2022', 'illness',     '4321', 'Dog has a stomach ache');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (2,  '22-01-2023', 'follow-up',   '3476', 'Dog has a stomach ache');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (7,  '12-01-2022', 'follow-up',   '4465', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (8,  '23-03-2020', 'illness',     '3476', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (15, '12-01-2022', 'follow-up',   '4465', 'Any changes in the diet or exercise routine.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (12, '23-01-2020', 'follow-up',   '4321', 'Any changes in the behavior or temperament over time.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (11, '22-01-2023', 'illness',     '3476', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (16, '12-01-2021', 'vaccination', '4465', 'No issues.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (25, '22-01-2020', 'follow-up',   '3476', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (36, '28-02-2018', 'follow-up', '4465', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (40, '21-04-2016', 'vaccination', '4321', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (15, '21-03-2020', 'illness',     '1345', 'Dog with paw pain');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (6,  '12-01-2020', 'vaccination', '1345', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (5,  '22-01-2022', 'illness',     '3476', 'Dog is up to date');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (1,  '02-02-2022', 'vaccination', '4465', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (9,  '23-01-2020', 'illness',     '4321', 'Dog with paw pain.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (9,  '22-01-2020', 'vaccination', '3476', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (7,  '21-06-2018', 'follow-up', '4465', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (12, '22-01-2019', 'follow-up',   '3476', 'Any changes in the diet or exercise routine.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (18, '12-01-2023', 'illness',     '4465', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (14, '23-04-2018', 'vaccination', '4321', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (15, '26-05-2019', 'follow-up',   '3476', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (32, '26-02-2020', 'illness',   '4321', 'Dog with stomach pain');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (8,  '23-03-2020', 'follow-up',     '4321', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (34,  '23-03-2019', 'follow-up',     '3476', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (2,  '23-03-2017', 'vaccination',     '3476', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (23, '20-11-2019', 'vaccination', '3421', 'All good.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (23, '22-01-2023', 'illness', '3421', 'Dog has a stomach ache.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (2,  '27-03-2019', 'vaccination',     '3476', 'Everything is ok.');
INSERT INTO VISIT (id_dog, date, reason, id_veterinary, comments) VALUES (2,  '14-03-2020', 'vaccination',     '3476', 'Everything is ok.');

/* PRESCRIPTION */
INSERT INTO PRESCRIPTION VALUES (3,  3, 2, 7);
INSERT INTO PRESCRIPTION VALUES (5,  5, 1, 5);
INSERT INTO PRESCRIPTION VALUES (15, 7, 3, 10);
INSERT INTO PRESCRIPTION VALUES (54, 9, 1, 3);
INSERT INTO PRESCRIPTION VALUES (58, 11, 2, 8);
INSERT INTO PRESCRIPTION VALUES (50, 13, 1, 4);
INSERT INTO PRESCRIPTION VALUES (24, 15, 3, 6);
INSERT INTO PRESCRIPTION VALUES (23, 17, 2, 9);
INSERT INTO PRESCRIPTION VALUES (27, 19, 1, 2);
INSERT INTO PRESCRIPTION VALUES (26, 1, 3, 10);
INSERT INTO PRESCRIPTION VALUES (31, 2, 1, 5);
INSERT INTO PRESCRIPTION VALUES (33, 4, 2, 8);
INSERT INTO PRESCRIPTION VALUES (32, 6, 1, 3);
INSERT INTO PRESCRIPTION VALUES (38, 8, 3, 7);
INSERT INTO PRESCRIPTION VALUES (37, 10, 2, 4);
INSERT INTO PRESCRIPTION VALUES (39, 12, 1, 6);
INSERT INTO PRESCRIPTION VALUES (36, 14, 3, 9);
INSERT INTO PRESCRIPTION VALUES (42, 16, 1, 2);
INSERT INTO PRESCRIPTION VALUES (45, 18, 2, 5);
INSERT INTO PRESCRIPTION VALUES (52, 20, 3, 10);
INSERT INTO PRESCRIPTION VALUES (51,  3, 1, 10);
INSERT INTO PRESCRIPTION VALUES (50,  3, 1, 10);
INSERT INTO PRESCRIPTION VALUES (12,  3, 1, 10);
INSERT INTO PRESCRIPTION VALUES (15,  3, 2, 10);
INSERT INTO PRESCRIPTION VALUES (66,  3, 2, 10);
INSERT INTO PRESCRIPTION VALUES (40,  3, 3, 7);

/* VACCINATION */
INSERT INTO VACCINATION VALUES ( 1, 1);
INSERT INTO VACCINATION VALUES ( 4, 1);
INSERT INTO VACCINATION VALUES ( 7, 1);
INSERT INTO VACCINATION VALUES (10, 1);
INSERT INTO VACCINATION VALUES (11, 1);
INSERT INTO VACCINATION VALUES (12, 1);
INSERT INTO VACCINATION VALUES (13, 1);
INSERT INTO VACCINATION VALUES (14, 1);
INSERT INTO VACCINATION VALUES (19, 2);
INSERT INTO VACCINATION VALUES (20, 3);
INSERT INTO VACCINATION VALUES (21, 8);
INSERT INTO VACCINATION VALUES (22, 1);
INSERT INTO VACCINATION VALUES (29, 8);
INSERT INTO VACCINATION VALUES (30, 8);
INSERT INTO VACCINATION VALUES (34, 1);
INSERT INTO VACCINATION VALUES (46, 1);
INSERT INTO VACCINATION VALUES (49, 1);
INSERT INTO VACCINATION VALUES (51, 1);
INSERT INTO VACCINATION VALUES (53, 1);
INSERT INTO VACCINATION VALUES (55, 1);
INSERT INTO VACCINATION VALUES (59, 1);
INSERT INTO VACCINATION VALUES (65, 8);
INSERT INTO VACCINATION VALUES (64, 8);
INSERT INTO VACCINATION VALUES (8, 8);
INSERT INTO VACCINATION VALUES (67, 8);
INSERT INTO VACCINATION VALUES (68, 8);

/* DOG_TEST */
INSERT INTO DOG_TEST VALUES ( 2,  3);
INSERT INTO DOG_TEST VALUES ( 2,  9);
INSERT INTO DOG_TEST VALUES (13, 50);
INSERT INTO DOG_TEST VALUES (14, 27);
INSERT INTO DOG_TEST VALUES ( 5, 31);
INSERT INTO DOG_TEST VALUES ( 2, 36);
INSERT INTO DOG_TEST VALUES ( 2, 42);
INSERT INTO DOG_TEST VALUES ( 9, 52);
INSERT INTO DOG_TEST VALUES ( 2,  5);
INSERT INTO DOG_TEST VALUES ( 4, 18);
INSERT INTO DOG_TEST VALUES ( 5, 25);
INSERT INTO DOG_TEST VALUES (10, 26);
INSERT INTO DOG_TEST VALUES ( 8, 23);
INSERT INTO DOG_TEST VALUES ( 7, 24);
INSERT INTO DOG_TEST VALUES ( 2,  4);
INSERT INTO DOG_TEST VALUES ( 2,  7);
INSERT INTO DOG_TEST VALUES ( 2, 58);
INSERT INTO DOG_TEST VALUES (14, 23);
INSERT INTO DOG_TEST VALUES ( 2, 32);
INSERT INTO DOG_TEST VALUES ( 6, 39);
INSERT INTO DOG_TEST VALUES (13, 41);
INSERT INTO DOG_TEST VALUES ( 2, 51);
INSERT INTO DOG_TEST VALUES (13, 42);
INSERT INTO DOG_TEST VALUES ( 2,  8);
INSERT INTO DOG_TEST VALUES ( 5,  5);
INSERT INTO DOG_TEST VALUES ( 2,  6);
INSERT INTO DOG_TEST VALUES ( 2, 33);
INSERT INTO DOG_TEST VALUES ( 7, 27);
INSERT INTO DOG_TEST VALUES ( 2, 13);
INSERT INTO DOG_TEST VALUES ( 2, 19);
INSERT INTO DOG_TEST VALUES ( 2, 35);
INSERT INTO DOG_TEST VALUES (12, 21);
INSERT INTO DOG_TEST VALUES ( 5, 39);
INSERT INTO DOG_TEST VALUES ( 6, 32);
INSERT INTO DOG_TEST VALUES ( 7, 12);
INSERT INTO DOG_TEST VALUES ( 9, 32);
INSERT INTO DOG_TEST VALUES ( 2, 15);
INSERT INTO DOG_TEST VALUES ( 4, 14);
INSERT INTO DOG_TEST VALUES ( 2, 22);
INSERT INTO DOG_TEST VALUES ( 9, 46);
INSERT INTO DOG_TEST VALUES ( 2, 16);
INSERT INTO DOG_TEST VALUES ( 7, 44);
INSERT INTO DOG_TEST VALUES ( 2, 14);
INSERT INTO DOG_TEST VALUES ( 2, 11);
INSERT INTO DOG_TEST VALUES ( 2, 50);
INSERT INTO DOG_TEST VALUES (14, 20);
INSERT INTO DOG_TEST VALUES ( 2,  1);
INSERT INTO DOG_TEST VALUES ( 6, 31);
INSERT INTO DOG_TEST VALUES ( 2, 40);
INSERT INTO DOG_TEST VALUES ( 2, 52);
INSERT INTO DOG_TEST VALUES ( 2, 45);
INSERT INTO DOG_TEST VALUES ( 2, 18);
INSERT INTO DOG_TEST VALUES ( 5, 26);
INSERT INTO DOG_TEST VALUES ( 2, 26);
INSERT INTO DOG_TEST VALUES ( 2, 31);
INSERT INTO DOG_TEST VALUES ( 2, 21);
INSERT INTO DOG_TEST VALUES ( 2,  2);
INSERT INTO DOG_TEST VALUES ( 2, 10);
INSERT INTO DOG_TEST VALUES ( 2, 12);
INSERT INTO DOG_TEST VALUES ( 2, 61);
INSERT INTO DOG_TEST VALUES ( 2, 62);
INSERT INTO DOG_TEST VALUES ( 2, 63);
INSERT INTO DOG_TEST VALUES ( 2, 64);

COMMIT;