use master;
GO
CREATE DATABASE Final16;
GO
use Final16;

DROP TABLE Forest;
DROP TABLE Tree;
DROP TABLE Fruit;
DROP TABLE Nut;
DROP TABLE TropicalRainforest;
DROP TABLE TemperateForest;
DROP TABLE TemperateGrassland;
DROP TABLE Taiga;
DROP TABLE Savannas;
DROP TABLE SubtropicalDesert;
DROP TABLE Chaparral;
DROP TABLE ArcticTundra;
DROP TABLE Biome;

CREATE TABLE Fruit
(
  FruitID INT NOT NULL,
  Name CHAR(25) NOT NULL,
  Color CHAR(15) NOT NULL,
  Seed INT NOT NULL,
  Size INT NOT NULL,
  PRIMARY KEY (FruitID)
);

CREATE TABLE Nut
(
  NutID INT NOT NULL,
  Name CHAR(25) NOT NULL,
  Color CHAR(15) NOT NULL,
  Shell CHAR(25) NOT NULL,
  Size INT NOT NULL,
  PRIMARY KEY (NutID)
);

CREATE TABLE Tree
(
  TreeID INT NOT NULL,
  Name CHAR(50) NOT NULL,
  Leaves CHAR(50) NOT NULL,
  Bark CHAR(50) NOT NULL,
  FruitID INT NOT NULL,
  NutID INT NOT NULL,
  Hight INT NOT NULL,
  PRIMARY KEY (TreeID),
  FOREIGN KEY (NutID) REFERENCES Nut(NutID),
  FOREIGN KEY (FruitID) REFERENCES Fruit(FruitID)
);

CREATE TABLE Biome
(
  BiomeID INT NOT NULL,
  Location_ CHAR(50) NOT NULL,
  Name CHAR(50) NOT NULL,
  BiomeType CHAR(25) NOT NULL,
  PRIMARY KEY (BiomeID)
);

CREATE TABLE TemperateGrassland
(
  AnnualRain INT NOT NULL,
  LowTemp INT NOT NULL,
  HighTemp INT NOT NULL,
  BiomeID INT NOT NULL,
  PRIMARY KEY (BiomeID),
  FOREIGN KEY (BiomeID) REFERENCES Biome(BiomeID)
);

CREATE TABLE Chaparral
(
  AnnualRain INT NOT NULL,
  RainWetSeason INT NOT NULL,
  RainDrySeason INT NOT NULL,
  LowTemp INT NOT NULL,
  HighTemp INT NOT NULL,
  BiomeID INT NOT NULL,
  PRIMARY KEY (BiomeID),
  FOREIGN KEY (BiomeID) REFERENCES Biome(BiomeID)
);

CREATE TABLE TemperateForest
(
  AnnualRain INT NOT NULL,
  WinterLowTemp INT NOT NULL,
  WinterHighTemp INT NOT NULL,
  SummerLowTemp INT NOT NULL,
  SummerHighTemp INT NOT NULL,
  BiomeID INT NOT NULL,
  PRIMARY KEY (BiomeID),
  FOREIGN KEY (BiomeID) REFERENCES Biome(BiomeID)
);

CREATE TABLE SubtropicalDesert
(
  AnnualRain INT NOT NULL,
  DayTemp INT NOT NULL,
  NightTemp INT NOT NULL,
  Creation CHAR(50) NOT NULL,
  BiomeID INT NOT NULL,
  PRIMARY KEY (BiomeID),
  FOREIGN KEY (BiomeID) REFERENCES Biome(BiomeID)
);

CREATE TABLE Taiga
(
  AnnualRain INT NOT NULL,
  WinterLowTemp INT NOT NULL,
  WinterHighTemp INT NOT NULL,
  SummerLowTemp INT NOT NULL,
  SummerHighTemp INT NOT NULL,
  BiomeID INT NOT NULL,
  PRIMARY KEY (BiomeID),
  FOREIGN KEY (BiomeID) REFERENCES Biome(BiomeID)
);

CREATE TABLE TropicalRainforest
(
  AnnualRain INT NOT NULL,
  LowTemp INT NOT NULL,
  HighTemp INT NOT NULL,
  RainforestType CHAR(50) NOT NULL,
  BiomeID INT NOT NULL,
  PRIMARY KEY (BiomeID),
  FOREIGN KEY (BiomeID) REFERENCES Biome(BiomeID)
);

CREATE TABLE ArcticTundra
(
  AnnualRain INT NOT NULL,
  LowTemp INT NOT NULL,
  HighTemp INT NOT NULL,
  SummerPeriod INT NOT NULL,
  BiomeID INT NOT NULL,
  PRIMARY KEY (BiomeID),
  FOREIGN KEY (BiomeID) REFERENCES Biome(BiomeID)
);

CREATE TABLE Savannas
(
  AnnualRain INT NOT NULL,
  RainWetSeason INT NOT NULL,
  RainDrySeason INT NOT NULL,
  LowTemp INT NOT NULL,
  HighTemp INT NOT NULL,
  BiomeID INT NOT NULL,
  PRIMARY KEY (BiomeID),
  FOREIGN KEY (BiomeID) REFERENCES Biome(BiomeID)
);

CREATE TABLE Forest
(
  TreeID INT NOT NULL,
  BiomeID INT NOT NULL,
  PRIMARY KEY (TreeID, BiomeID),
  FOREIGN KEY (TreeID) REFERENCES Tree(TreeID),
  FOREIGN KEY (BiomeID) REFERENCES Biome(BiomeID)
);

----------------------------------------------------------------------------------------------------------------------------------
--/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\--
----------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Tree VALUES ('0'  , 'NONE'                , 'NA'         , 'NA'       , '0' , '0' , '0');
INSERT INTO Tree VALUES ('1'  , 'Kapok Tree'          , 'Oblong'     , 'Spiny'    , '1' , '0' , '200');
INSERT INTO Tree VALUES ('2'  , 'Mahogany Tree'       , 'Oval'       , 'Scaly'    , '2' , '0' , '75');
INSERT INTO Tree VALUES ('3'  , 'Kauri Pine'          , 'Oblong'     , 'Smooth'   , '0' , '1' , '150');
INSERT INTO Tree VALUES ('4'  , 'Durian Tree'         , 'Oblong'     , 'Rough'    , '3' , '0' , '100');
INSERT INTO Tree VALUES ('5'  , 'Wenge Tree'          , 'Oval'       , 'Rough'    , '0' , '0' , '80');
INSERT INTO Tree VALUES ('6'  , 'Western Red Cedar'   , 'Pointed'    , 'Scaly'    , '0' , '2' , '200');
INSERT INTO Tree VALUES ('7'  , 'Yellow Birch'        , 'Oval'       , 'Flaky'    , '0' , '0' , '65');
INSERT INTO Tree VALUES ('8'  , 'Mongolian Oak'       , 'Wavy'       , 'Rough'    , '0' , '0' , '45');
INSERT INTO Tree VALUES ('9'  , 'Chestnut Tree'       , 'Pointed'    , 'Fissured' , '0' , '3' , '60');
INSERT INTO Tree VALUES ('10' , 'Mountain Hemlock'    , 'Needles'    , 'Scaly'    , '0' , '4' , '80');
INSERT INTO Tree VALUES ('11' , 'Cottonwood Tree'     , 'Triangular' , 'Scaly'    , '0' , '0' , '85');
INSERT INTO Tree VALUES ('12' , 'Aspen Tree'          , 'Pointed'    , 'Smooth'   , '0' , '0' , '30');
INSERT INTO Tree VALUES ('13' , 'Marula Tree'         , 'Oval'       , 'Rough'    , '4' , '0' , '60');
INSERT INTO Tree VALUES ('14' , 'The Ombu'            , 'Oval'       , 'Rough'    , '0' , '0' , '45');
INSERT INTO Tree VALUES ('15' , 'Whalebone Tree'      , 'Pointed'    , 'Smooth'   , '5' , '0' , '45');
INSERT INTO Tree VALUES ('16' , 'Black Spruce Tree'   , 'Needles'    , 'Flaky'    , '0' , '5' , '40');
INSERT INTO Tree VALUES ('17' , 'Paper Birch'         , 'Oval'       , 'Flaky'    , '0' , '0' , '60');
INSERT INTO Tree VALUES ('18' , 'Scotch Pine'         , 'Needles'    , 'Scaly'    , '0' , '1' , '60');
INSERT INTO Tree VALUES ('19' , 'Downy Birch'         , 'Oval'       , 'Flaky'    , '0' , '0' , '50');
INSERT INTO Tree VALUES ('20' , 'Baobab Tree'         , 'Oblong'     , 'Smooth'   , '0' , '6' , '70');
INSERT INTO Tree VALUES ('21' , 'Acacia Tree'         , 'Fernlike'   , 'Rough'    , '0' , '0' , '30');
INSERT INTO Tree VALUES ('22' , 'Humiria balsamifera' , 'Oval'       , 'Rough'    , '0' , '0' , '90');
INSERT INTO Tree VALUES ('23' , 'Sal Tree'            , 'Oval'       , 'Rough'    , '0' , '0' , '100');
INSERT INTO Tree VALUES ('24' , 'Joshua Tree'         , 'Pointed'    , 'Rough'    , '6' , '0' , '35');
INSERT INTO Tree VALUES ('25' , 'Sahara Olive Tree'   , 'Pointed'    , 'Rough'    , '0' , '0' , '22');
INSERT INTO Tree VALUES ('26' , 'Desert Willow'       , 'Oblong'     , 'Rough'    , '0' , '0' , '20');
INSERT INTO Tree VALUES ('27' , 'Chilean Molle Tree'  , 'Oblong'     , 'Rough'    , '0' , '0' , '50');
INSERT INTO Tree VALUES ('28' , 'Rohira Tree'         , 'Fernlike'   , 'Rough'    , '0' , '0' , '13');
INSERT INTO Tree VALUES ('29' , 'Poison Oak'          , 'Oval'       , 'Rough'    , '7' , '0' , '3');
INSERT INTO Tree VALUES ('30' , 'Chilean Palm Tree'   , 'Palm'       , 'Rough'    , '0' , '7' , '70');
INSERT INTO Tree VALUES ('31' , 'Dwarf Eucalptus'     , 'Oval'       , 'Flaky'    , '0' , '0' , '8');
INSERT INTO Tree VALUES ('32' , 'Sagewood Tree'       , 'Pointed'    , 'Rough'    , '0' , '0' , '10');
INSERT INTO Tree VALUES ('33' , 'Myrtle Tree'         , 'Oval'       , 'Flaky'    , '8' , '0' , '6');

INSERT INTO Nut VALUES ('0' , 'NA'             , 'NA'          , 'NA'                         , '0' );
INSERT INTO Nut VALUES ('1' , 'Pine Cone'      , 'Brown'       , 'Pointed Scales'             , '4' );
INSERT INTO Nut VALUES ('2' , 'Red Ceder Cone' , 'Brown'       , 'Pointed Scales'             , '1' );
INSERT INTO Nut VALUES ('3' , 'Chestnut'       , 'Light Brown' , 'Flat Bottom, Pointed Top' , '1' );
INSERT INTO Nut VALUES ('4' , 'Hemlock Cone'   , 'Brown'       , 'Round Scales'               , '3' );
INSERT INTO Nut VALUES ('5' , 'Spruce Cone'    , 'Dark Purple' , 'Round Scales'               , '1' );
INSERT INTO Nut VALUES ('6' , 'Baobab Nut'     , 'Olive Green' , 'Ovoid'                      , '20' );
INSERT INTO Nut VALUES ('7' , 'Coquito'        , 'Brown'       , 'Mini Coconut'               , '1' );

INSERT INTO Fruit VALUES ('0' , 'NA'               , 'NA'          , '0'  , '0' );
INSERT INTO Fruit VALUES ('1' , 'Kapok Fruit'      , 'Green'       , '200' , '6' );
INSERT INTO Fruit VALUES ('2' , 'Sky Fruit'        , 'Brown'       , '71'  , '15' );
INSERT INTO Fruit VALUES ('3' , 'Durian'           , 'Green'       , '6'   , '7' );
INSERT INTO Fruit VALUES ('4' , 'Marula Fruit'     , 'Yellow'      , '3'   , '2' );
INSERT INTO Fruit VALUES ('5' , 'Whalebone Berry'  , 'Yellow'      , '1'   , '1' );
INSERT INTO Fruit VALUES ('6' , 'Joshua Fruit'     , 'light Green' , '40'  , '3' );
INSERT INTO Fruit VALUES ('7' , 'Poison Oak Berry' , 'Light Brown' , '1' , '1' );
INSERT INTO Fruit VALUES ('8' , 'Myrtle Berry'     , 'Navy Blue'   , '5' , '1' );

INSERT INTO Forest VALUES ('1'  , '1');
INSERT INTO Forest VALUES ('1'  , '4');
INSERT INTO Forest VALUES ('1'  , '5');
INSERT INTO Forest VALUES ('2'  , '1');
INSERT INTO Forest VALUES ('2'  , '2');
INSERT INTO Forest VALUES ('2'  , '3');
INSERT INTO Forest VALUES ('2'  , '4');
INSERT INTO Forest VALUES ('2'  , '5');
INSERT INTO Forest VALUES ('3'  , '3');
INSERT INTO Forest VALUES ('4'  , '4');
INSERT INTO Forest VALUES ('4'  , '5');
INSERT INTO Forest VALUES ('5'  , '2');
INSERT INTO Forest VALUES ('6'  , '6');
INSERT INTO Forest VALUES ('7'  , '7');
INSERT INTO Forest VALUES ('8'  , '8');
INSERT INTO Forest VALUES ('8'  , '9');
INSERT INTO Forest VALUES ('9'  , '7');
INSERT INTO Forest VALUES ('9'  , '10');
INSERT INTO Forest VALUES ('10' , '6');
INSERT INTO Forest VALUES ('11' , '11');
INSERT INTO Forest VALUES ('11' , '15');
INSERT INTO Forest VALUES ('12' , '12');
INSERT INTO Forest VALUES ('13' , '13');
INSERT INTO Forest VALUES ('14' , '14');
INSERT INTO Forest VALUES ('15' , '15');
INSERT INTO Forest VALUES ('16' , '16');
INSERT INTO Forest VALUES ('16' , '17');
INSERT INTO Forest VALUES ('17' , '16');
INSERT INTO Forest VALUES ('17' , '17');
INSERT INTO Forest VALUES ('18' , '18');
INSERT INTO Forest VALUES ('18' , '19');
INSERT INTO Forest VALUES ('18' , '20');
INSERT INTO Forest VALUES ('19' , '20');
INSERT INTO Forest VALUES ('20' , '21');
INSERT INTO Forest VALUES ('20' , '24');
INSERT INTO Forest VALUES ('21' , '21');
INSERT INTO Forest VALUES ('21' , '22');
INSERT INTO Forest VALUES ('21' , '24');
INSERT INTO Forest VALUES ('22' , '23');
INSERT INTO Forest VALUES ('23' , '25');
INSERT INTO Forest VALUES ('24' , '26');
INSERT INTO Forest VALUES ('25' , '27');
INSERT INTO Forest VALUES ('11' , '28');
INSERT INTO Forest VALUES ('26' , '26');
INSERT INTO Forest VALUES ('26' , '28');
INSERT INTO Forest VALUES ('27' , '29');
INSERT INTO Forest VALUES ('28' , '30');
INSERT INTO Forest VALUES ('26' , '31');
INSERT INTO Forest VALUES ('29' , '31');
INSERT INTO Forest VALUES ('30' , '32');
INSERT INTO Forest VALUES ('31' , '33');
INSERT INTO Forest VALUES ('32' , '34');
INSERT INTO Forest VALUES ('33' , '35');
INSERT INTO Forest VALUES ('0' , '36');
INSERT INTO Forest VALUES ('0' , '37');
INSERT INTO Forest VALUES ('0' , '38');
INSERT INTO Forest VALUES ('0' , '39');
INSERT INTO Forest VALUES ('0' , '40');

INSERT INTO Biome VALUES ('1'  , 'South America' , 'Amazon Rainforest'       , 'TropicalRainforest');
INSERT INTO Biome VALUES ('2'  , 'Africa'        , 'Congo Rainforest'        , 'TropicalRainforest');
INSERT INTO Biome VALUES ('3'  , 'Oceania'       , 'Daintree Rainforest'     , 'TropicalRainforest');
INSERT INTO Biome VALUES ('4'  , 'Oceania'       , 'Sundaland Rainforest'    , 'TropicalRainforest');
INSERT INTO Biome VALUES ('5'  , 'Asia'          , 'Indo-Burma Rainforest'   , 'TropicalRainforest');
INSERT INTO Biome VALUES ('6'  , 'North America' , 'Tongass National Forest'                       , 'TemperateForest');
INSERT INTO Biome VALUES ('7'  , 'North America' , 'Great Smoky Mountains National Park'           , 'TemperateForest');
INSERT INTO Biome VALUES ('8'  , 'Asia'          , 'Northeast China Plain'                         , 'TemperateForest');
INSERT INTO Biome VALUES ('9'  , 'Asia'          , 'Manchurian Mixed Forest'                       , 'TemperateForest');
INSERT INTO Biome VALUES ('10' , 'Europe'        , 'European Temperate Deciduous Broadleaf Forest' , 'TemperateForest');
INSERT INTO Biome VALUES ('11' , 'North America' , 'US Prairie'      , 'TemperateGrassland');
INSERT INTO Biome VALUES ('12' , 'Eurasia'       , 'Russian Steppes' , 'TemperateGrassland');
INSERT INTO Biome VALUES ('13' , 'Africa'        , 'The Veld'        , 'TemperateGrassland');
INSERT INTO Biome VALUES ('14' , 'South America' , 'The Pampa'       , 'TemperateGrassland');
INSERT INTO Biome VALUES ('15' , 'Oceania'       , 'Darling Downs'   , 'TemperateGrassland');
INSERT INTO Biome VALUES ('16' , 'North America' , 'Alaskan Taiga'      , 'Taiga');
INSERT INTO Biome VALUES ('17' , 'North America' , 'Canadian Taiga'     , 'Taiga');
INSERT INTO Biome VALUES ('18' , 'Europe'        , 'Scandinavian Taiga' , 'Taiga');
INSERT INTO Biome VALUES ('19' , 'Eurasia'       , 'Russian Taiga'      , 'Taiga');
INSERT INTO Biome VALUES ('20' , 'Europe'        , 'Icelandic Taiga'    , 'Taiga');
INSERT INTO Biome VALUES ('21' , 'Africa'        , 'The Serengeti'      , 'Savannas');
INSERT INTO Biome VALUES ('22' , 'Africa'        , 'The Acacia Plains'  , 'Savannas');
INSERT INTO Biome VALUES ('23' , 'South America' , 'Guianan Savanna'    , 'Savannas');
INSERT INTO Biome VALUES ('24' , 'Oceania'       , 'Australian Plains'  , 'Savannas');
INSERT INTO Biome VALUES ('25' , 'Asia'          , 'Terai-Duar Savanna' , 'Savannas');
INSERT INTO Biome VALUES ('26' , 'North America' , 'Mojave Desert'     , 'SubtropicalDesert');
INSERT INTO Biome VALUES ('27' , 'Africa'        , 'Sahara Desert'     , 'SubtropicalDesert');
INSERT INTO Biome VALUES ('28' , 'North America' , 'Chihuahuan Desert' , 'SubtropicalDesert');
INSERT INTO Biome VALUES ('29' , 'South America' , 'Patagonian Desert' , 'SubtropicalDesert');
INSERT INTO Biome VALUES ('30' , 'Asia'          , 'Thar Desert'       , 'SubtropicalDesert');
INSERT INTO Biome VALUES ('31' , 'North America'  , 'Southern Californian Chaparral' , 'Chaparral');
INSERT INTO Biome VALUES ('32' , 'South American' , 'Chilean Matorral'               , 'Chaparral');
INSERT INTO Biome VALUES ('33' , 'Oceania'        , 'Australian Mallee'              , 'Chaparral');
INSERT INTO Biome VALUES ('34' , 'Africa'         , 'South African Fynbos'           , 'Chaparral');
INSERT INTO Biome VALUES ('35' , 'Europe'         , 'Mediterranean Basin Maquis'     , 'Chaparral');
INSERT INTO Biome VALUES ('36' , 'North America' , 'Alasken Tundra'      , 'ArcticTundra');
INSERT INTO Biome VALUES ('37' , 'North America' , 'Canadian Tundra'     , 'ArcticTundra');
INSERT INTO Biome VALUES ('38' , 'Eurasia'       , 'Russian Tundra'      , 'ArcticTundra');
INSERT INTO Biome VALUES ('39' , 'Europe'        , 'Greenlandic Tundra'  , 'ArcticTundra');
INSERT INTO Biome VALUES ('40' , 'Europe'        , 'Scandinavian Tundra' , 'ArcticTundra');

INSERT INTO TropicalRainforest VALUES ('144' , '79' , '90' , 'Moist Broadleaf'             , '1');
INSERT INTO TropicalRainforest VALUES ('70'  , '68' , '78' , 'Lowland Moist Broadleaf'     , '2');
INSERT INTO TropicalRainforest VALUES ('79'  , '76' , '87' , 'Subtropical Moist Broadleaf' , '3');
INSERT INTO TropicalRainforest VALUES ('80'  , '38' , '66' , 'Subtropical Moist Broadleaf' , '4');
INSERT INTO TropicalRainforest VALUES ('120' , '72' , '81' , 'Moist Broadleaf'             , '5');

INSERT INTO TemperateForest VALUES ('100' , '25' , '38' , '44' , '60' , '6');
INSERT INTO TemperateForest VALUES ('70'  , '20' , '43' , '53' , '77' , '7');
INSERT INTO TemperateForest VALUES ('25'  , '17' , '0'  , '68' , '77' , '8');
INSERT INTO TemperateForest VALUES ('30'  , '50' , '55' , '70' , '75' , '9');
INSERT INTO TemperateForest VALUES ('45'  , '42' , '50' , '61' , '90' , '10');

INSERT INTO TemperateGrassland VALUES ('28' , '53' , '90' , '11');
INSERT INTO TemperateGrassland VALUES ('14' , '15' , '70' , '12');
INSERT INTO TemperateGrassland VALUES ('25' , '50' , '68' , '13');
INSERT INTO TemperateGrassland VALUES ('35' , '50' , '70' , '14');
INSERT INTO TemperateGrassland VALUES ('29' , '50' , '80' , '15');

INSERT INTO Taiga VALUES ('15' , '-7'  , '11'  , '23' , '60' , '16');
INSERT INTO Taiga VALUES ('20' , '-23' , '20'  , '41' , '68' , '17');
INSERT INTO Taiga VALUES ('25' , '-6'  , '15'  , '68' , '80' , '18');
INSERT INTO Taiga VALUES ('15' , '-70' , '-55' , '50' , '68' , '19');
INSERT INTO Taiga VALUES ('18' , '-20' , '32'  , '30' , '50' , '20');

INSERT INTO Savannas VALUES ('37' , '4'  , '1' , '60' , '80' , '21');
INSERT INTO Savannas VALUES ('15' , '3'  , '1' , '68' , '95' , '22');
INSERT INTO Savannas VALUES ('98' , '14' , '2' , '70' , '88' , '23');
INSERT INTO Savannas VALUES ('40' , '4'  , '1' , '75' , '80' , '24');
INSERT INTO Savannas VALUES ('90' , '10' , '3' , '75' , '80' , '25');

INSERT INTO SubtropicalDesert VALUES ('5' , '75'  , '20' , 'Rainshadow'               , '26');
INSERT INTO SubtropicalDesert VALUES ('3' , '100' , '25' , 'Rainshadow'               , '27');
INSERT INTO SubtropicalDesert VALUES ('9' , '100' , '25' , 'Rainshadow and Elevation' , '28');
INSERT INTO SubtropicalDesert VALUES ('7' , '60'  , '40' , 'Rainshadow'               , '29');
INSERT INTO SubtropicalDesert VALUES ('8' , '100' , '45' , 'Rainshadow'               , '30');

INSERT INTO Chaparral VALUES ('16' , '3' , '1' , '50' , '80' , '31');
INSERT INTO Chaparral VALUES ('16' , '3' , '1' , '55' , '77' , '32');
INSERT INTO Chaparral VALUES ('11' , '2' , '1' , '57' , '78' , '33');
INSERT INTO Chaparral VALUES ('27' , '4' , '2' , '59' , '79' , '34');
INSERT INTO Chaparral VALUES ('25' , '3' , '1' , '57' , '77' , '35');

INSERT INTO ArcticTundra VALUES ('7'  , '-9'  , '45' , '90' , '36');
INSERT INTO ArcticTundra VALUES ('5'  , '-22' , '41' , '55' , '37');
INSERT INTO ArcticTundra VALUES ('8'  , '-35' , '52' , '60' , '38');
INSERT INTO ArcticTundra VALUES ('6'  , '-27' , '44' , '55' , '39');
INSERT INTO ArcticTundra VALUES ('20' , '-58' , '50' , '73' , '40');

----------------------------------------------------------------------------------------------------------------------------------
--/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\--
----------------------------------------------------------------------------------------------------------------------------------

--query
select * from Tree;
select * from Nut;
select * from Fruit;
select * from Forest;
select * from Biome;
select * from TropicalRainforest;
select * from TemperateForest;
select * from TemperateGrassland;
select * from Taiga;
select * from Savannas;
select * from SubtropicalDesert;
select * from Chaparral;
select * from ArcticTundra;


--Q1
SELECT DISTINCT C.Name , Fruit.Name , BiomeType
FROM Fruit INNER JOIN (SELECT DISTINCT Name , FruitID , BiomeType
                       FROM Tree INNER JOIN (SELECT TreeID , BiomeType
                                             FROM Forest INNER JOIN (SELECT BiomeID , BiomeType
                                                                     FROM Biome
                                                                     WHERE BiomeType = 'TropicalRainforest') AS A
                                                 ON Forest.BiomeID = A.BiomeID) AS B
                          ON Tree.TreeID = B.TreeID
                          WHERE FruitID > 0) AS C
     ON Fruit.FruitID = C.FruitID
ORDER BY C.Name;

--Q2
SELECT Name , NumBiomes
FROM Tree INNER JOIN (SELECT TreeID , COUNT(TreeID) AS NumBiomes
                      FROM (SELECT DISTINCT TreeID , BiomeType
                            FROM Forest INNER JOIN (SELECT BiomeID , BiomeType 
                                                    FROM Biome) AS A
                         ON Forest.BiomeID = A.BiomeID) AS B
                      GROUP BY TreeID
                      HAVING COUNT(TreeID) > 1) AS C
    ON Tree.TreeID = C.TreeID;

--Q3
SELECT A.Name , Nut.Name
FROM Nut RIGHT JOIN (SELECT NAME , NutID
                     FROM Tree
                     WHERE NutID > 0) AS A
    ON Nut.NutID = A.NutID
WHERE NUT.Name LIKE '%Cone';

--Q4
SELECT Tree.* , Location_
FROM Tree INNER JOIN (SELECT DISTINCT TreeID , Location_
                      FROM Forest INNER JOIN (SELECT BiomeID , Location_ 
                                              FROM Biome) AS A
                         ON Forest.BiomeID = A.BiomeID) AS B
    ON Tree.TreeID = B.TreeID
WHERE Location_ = 'North America' AND 
      Hight BETWEEN 50 AND 100
ORDER BY Hight DESC;

--Q5
SELECT Tree.Name , B.Name , Location_ , BiomeType
FROM Tree INNER JOIN (SELECT TreeID , Name , Location_ , BiomeType
                      FROM Forest INNER JOIN (SELECT BiomeID , Name , Location_ , BiomeType
                                              FROM Biome) AS A
                         ON Forest.BiomeID = A.BiomeID) AS B
    ON Tree.TreeID = B.TreeID
WHERE Tree.Name = 'Baobab Tree';

--Q6
SELECT AVG(TR.AnnualRain) AS TropicalRainforestAverage ,
       AVG(SV.AnnualRain) AS SavannasAverage ,
       AVG(SD.AnnualRain) AS SubtropicalDesertAverage ,
       AVG(C.AnnualRain) AS ChaparralAverage ,
       AVG(TG.AnnualRain) AS TemperateGrasslandAverage ,
       AVG(TF.AnnualRain) AS TemperateForestAverage ,
       AVG(T.AnnualRain) AS TaigaAverage ,
       AVG(A.AnnualRain) AS ArcticTundraAverage
FROM TropicalRainforest AS TR ,
     Savannas AS SV ,
     SubtropicalDesert AS SD ,
     Chaparral AS C ,
     TemperateGrassland AS TG ,
     TemperateForest AS TF ,
     Taiga AS T ,
     ArcticTundra AS A;

--Q7
SELECT Name , BiomeType , Location_
FROM Biome
WHERE Location_ = 'North America'
ORDER BY BiomeType;

--Q8
SELECT Leaves , Bark , COUNT(Leaves) AS LeafAndBark
FROM Tree
GROUP BY Leaves , Bark
HAVING COUNT(Leaves) = (SELECT MAX(LeafAndBark)
                        FROM (SELECT Leaves , Bark , COUNT(Leaves) AS LeafAndBark
                        FROM Tree
                        GROUP BY Leaves , Bark) AS A);

--Q9
SELECT (T.AvgWinterLow - TF.AvgWinterLow) AS WinterLowDiference ,
       (T.AvgWinterHigh - TF.AvgWinterHigh) AS WinterHighDiference ,
       (T.AvgSummerLow - TF.AvgSummerLow) AS SummerLowDiference ,
       (T.AvgSummerHigh - TF.AvgSummerHigh) AS SummerHighDiference 
FROM (SELECT AVG(WinterLowTemp) AS AvgWinterLow , AVG(WinterHighTemp) AS AvgWinterHigh ,
             AVG(SummerLowTemp) AS AvgSummerLow , AVG(SummerHighTemp) AS AvgSummerHigh
      FROM TemperateForest) AS TF ,
      (SELECT AVG(WinterLowTemp) AS AvgWinterLow , AVG(WinterHighTemp) AS AvgWinterHigh ,
              AVG(SummerLowTemp) AS AvgSummerLow , AVG(SummerHighTemp) AS AvgSummerHigh
       FROM Taiga) AS T;

--Q10
SELECT A.Name , Fruit.Name
FROM Fruit RIGHT JOIN (SELECT NAME , FruitID
                       FROM Tree
                       WHERE FruitID > 0) AS A
    ON Fruit.FruitID = A.FruitID
WHERE Fruit.Name = 'Durian';


