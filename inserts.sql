

-- Inserts into club
INSERT INTO Club VALUES 
(NULL, 'Kalix Ak'),
(NULL, 'Luleå Ak'),
(NULL, 'Sundsvall SLK'),
(NULL, 'Östersund-Frösö SLK'),
(NULL, 'Täby SLK'),
(NULL, 'Bollnäs alpina'),
(NULL, 'Ragunda SLK'),
(NULL, 'Baerums Skiklub'),
(NULL, 'Lommedalens IL'),
(NULL, 'Sporting Gottardo');


-- Inserts into Country
INSERT INTO Country VALUES 
(NULL, 'Sweden'),
(NULL, 'Norway'),
(NULL, 'Finland'),
(NULL, 'Austria'),
(NULL, 'Germany'),
(NULL, 'Switzerland');

-- Inserts into Disciplin
INSERT INTO Disciplin VALUES 
(NULL, 'Slalom'),
(NULL, 'Giant Slalom'),
(NULL, 'Super G'),
(NULL, 'Downhill'),
(NULL, 'Alpine Combine');

-- Inserts into Geographic level
INSERT INTO GeographicLevel VALUES 
(NULL, 'FIS'),
(NULL, 'ENL'),
(NULL, 'World Cup'),
(NULL, 'European Cup'),
(NULL, 'Far East Cup'),
(NULL, 'Nor Am'),
(NULL, 'World Championship'),
(NULL, 'National Junior Race'),
(NULL, 'National Junior Championship'),
(NULL, 'National Championship');

-- Inserts into TechnicalData
INSERT INTO TechnicalData VALUES 
(122191116, 'Martii', 420, 175, 245, 'Suomu'),
(111621213, 'Älvan', 803, 467, 336, 'Stöten'),
(132761119, 'Mullfjällsbacken', 814, 453, 361, 'Duved'),
(121461116, 'Anjabacken', 778, 445, 333, 'Tärnaby'),
(121451116, 'Störtloppet', 796, 396, 400, 'Åre');

-- Inserts into Jury
INSERT INTO Jury VALUES 
(NULL, 'Svanberg Emil', 'Laitakari Pasi', 'Pelli Mika' ),
(NULL, 'Kristinsson Smari', 'Eneflo Calle', 'Holmberg Erika'),
(NULL, 'Havnelid Stefan Johnsen', 'Sjoedin Tomas', 'Ericson Thomas'),
(NULL, 'Franz Toni', 'Engvoll Marten', 'Jonsson Hampus'),
(NULL, 'Rebne Jan Einar', 'Gerdol Peter', 'Angland Lindvall Aase');

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



