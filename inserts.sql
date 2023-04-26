

-- Inserts into club
INSERT INTO Club VALUES 
(1, 'Kalix Ak'),
(2, 'Luleå Ak'),
(3, 'Sundsvall SLK'),
(4, 'Östersund-Frösö SLK'),
(5, 'Täby SLK'),
(6, 'Bollnäs alpina'),
(7, 'Ragunda SLK'),
(8, 'Baerums Skiklub'),
(9, 'Lommedalens IL'),
(10, 'Sporting Gottardo');


-- Inserts into Country
INSERT INTO Country VALUES 
(1, 'Sweden'),
(2, 'Norway'),
(3, 'Finland'),
(4, 'Austria'),
(5, 'Germany'),
(6, 'Switzerland');

-- Inserts into Disciplin
INSERT INTO Disciplin VALUES 
(1, 'Slalom'),
(2, 'Giant Slalom'),
(3, 'Super G'),
(4, 'Downhill'),
(5, 'Alpine Combine');

-- Inserts into Geographic level
INSERT INTO GeographicLevel VALUES 
(1, 'FIS'),
(2, 'ENL'),
(3, 'World Cup'),
(4, 'European Cup'),
(5, 'Far East Cup'),
(6, 'Nor Am'),
(7, 'World Championship'),
(8, 'National Junior Race'),
(9, 'National Junior Championship'),
(10, 'National Championship');

-- Inserts into TechnicalData
INSERT INTO TechnicalData VALUES 
(122191116, 'Martii', 420, 175, 'Suomu'),
(111621213, 'Älvan', 803, 467, 'Stöten'),
(132761119, 'Mullfjällsbacken', 814, 453, 'Duved'),
(121461116, 'Anjabacken', 778, 445, 'Tärnaby'),
(121451116, 'Störtloppet', 796, 396, 'Åre');

-- Inserts into Jury
INSERT INTO Jury VALUES 
(1, 'Svanberg Emil', 'Laitakari Pasi', 'Pelli Mika' ),
(2, 'Kristinsson Smari', 'Eneflo Calle', 'Holmberg Erika'),
(3, 'Havnelid Stefan Johnsen', 'Sjoedin Tomas', 'Ericson Thomas'),
(4, 'Franz Toni', 'Engvoll Marten', 'Jonsson Hampus'),
(5, 'Rebne Jan Einar', 'Gerdol Peter', 'Angland Lindvall Aase');

-- Inserts into Athlete 
INSERT INTO Athlete VALUES 
(502443, 'Edwin', 'Lundbäck', '2001-05-10', 'M', 1, 1, 250.70, 999.99, 58.76, 40.67, 43.39),
(502466, 'Atle', 'Wallin', '2001-12-31', 'M', 4, 1, 176.69, 75.92, 62.78, 51.78, 38.86),
(502381, 'Hjalmar', 'Folkesson', '2000-05-07', 'M', 3, 1, NULL, 102.72, 63.39, 44.23, 30.11),
(507078, 'Ellen', 'Robert', '2001-08-08', 'F', 6, 1, NULL, 507.96, NULL, 54.99, 32.80),
(507116, 'Regina', 'Falk', '2001-06-19', 'F', 7, 1, NULL, NULL, NULL, 47.44, 47.06),
(422729, 'Lucas', 'Braathen', '2000-04-19', 'M', 8, 2, 102.33, NULL, 37.74, 2.82, 0.00), 
(422139, 'Alesander', 'Aanodt Kilde', '1992-09-21', 'M', 9, 2, 6.36, 0.00, 0.00, 14.59, 517.28),
(516138, 'Lara', 'Gut-Behrami', '1991-04-27', 'F', 10, 6, 142.05, 1.15, 0.00, 0.41, 269.73);

-- Inserts into Competition 
INSERT INTO Competition VALUES 
(1, 1, 10, 122191116, 1, '2023-04-01'),
(2, 2, 1, 111621213, 2, '2023-04-15'),
(3, 4, 10, 132761119, 3, '2023-03-08'),
(4, 2, 1, 121461116, 4, '2023-02-22'),
(5, 3, 3, 121451116, 5, '2022-03-23');


-- Insert into startlist
INSERT INTO Startlist VALUES
(1, 502443),
(1, 502466),
(1, 502381),
(2, 507078),
(2, 507116),
(3, 502443),
(3, 502466),
(3, 502381);



