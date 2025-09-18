drop table SaleItems;
drop table PurchaseItems;
drop table OffShorePartLookup;
drop table SalesHeader;
drop table Boat;
drop table CustomerPhone;
drop table EmployeePhone;
drop table Employees;
drop table Customer;
drop table PhoneTypeLookup;
drop table PartLookup;
drop table ManufacturerLookup;
drop table PurchaseHeader;
drop table Vendor;

create table PhoneTypeLookup (
PhoneTypeID INT,
PhoneType VARCHAR(6),
PRIMARY KEY (PhoneTypeID)
);
insert into PhoneTypeLookup (PhoneTypeID, PhoneType) values (1, 'Work');
insert into PhoneTypeLookup (PhoneTypeID, PhoneType) values (2, 'Home');
insert into PhoneTypeLookup (PhoneTypeID, PhoneType) values (3, 'Mobile');

create table Employees (
EmployeeID CHAR(8),
LastName VARCHAR(50),
FirstName VARCHAR(50),
Street VARCHAR(50),
City VARCHAR(50),
State CHAR(2),
Zip CHAR(5),
Email VARCHAR(80),
PRIMARY KEY (EmployeeID)
);
insert into Employees (EmployeeID, LastName, FirstName, Street, City, State, Zip, Email) values ('0AXEKTVK', 'Birdwhistell', 'Flory', '134 Red Pine', 'Alpine', 'UT', '84004', 'fbirdwhistell0@gmail.org');
insert into Employees (EmployeeID, LastName, FirstName, Street, City, State, Zip, Email) values ('006NDKEV', 'Reinbeck', 'Corbet', '102 N Main', 'American Fork', 'UT', '84003', 'creinbeck1@gmail.com');
insert into Employees (EmployeeID, LastName, FirstName, Street, City, State, Zip, Email) values ('0XS3VGK6', 'Pecht', 'Uta', '200 N', 'Orem', 'UT', '84097', 'upecht2@gmail.com')

create table Customer (
CustomerID CHAR(8),
LastName VARCHAR(50),
FirstName VARCHAR(50),
Street VARCHAR(50),
City VARCHAR(50),
State CHAR(2),
Zip CHAR(5),
Email VARCHAR(80),
PRIMARY KEY (CustomerID)
);
insert into Customer (CustomerID, LastName, FirstName, Street, City, State, Zip, Email) values ('UN1NRYK1', 'Matchell', 'Carolina', '517 S 100 N', 'Bountiful', 'UT', '84010', 'cmatchell0@yahoo.com');
insert into Customer (CustomerID, LastName, FirstName, Street, City, State, Zip, Email) values ('VYS3B32L', 'Prayer', 'Karita', '1001 N 60 E', 'American Fork', 'UT', '84003', 'kprayer1@aol.cz');
insert into Customer (CustomerID, LastName, FirstName, Street, City, State, Zip, Email) values ('TLRB2SLT', 'Fletcher', 'Drusy', '5500 W Kensington', 'Highland', 'UT', '84003', 'dfletcher2@gmail.com');
insert into Customer (CustomerID, LastName, FirstName, Street, City, State, Zip, Email) values ('BB0HUY4N', 'Marvelley', 'Regan', '1301 Lakeview', 'American Fork', 'UT', '84010', 'rmarvelley3@yahoo.net');
insert into Customer (CustomerID, LastName, FirstName, Street, City, State, Zip, Email) values ('IL1W9BJK', 'Deverille', 'Grantley', '3260 English Way', 'Sandy', 'UT', '84093', 'gdeverille4@hotmail.com');
insert into Customer (CustomerID, LastName, FirstName, Street, City, State, Zip, Email) values ('GJGONQAA', 'Millimoe', 'Myrtice', '2600 Ridgeview', 'Eagle Mountain', 'UT', '84005', 'mmillimoe5@uvu.edu');
insert into Customer (CustomerID, LastName, FirstName, Street, City, State, Zip, Email) values ('MZER1OGW', 'Wayne', 'Lyda', '132 Horse Thief', 'Heber', 'UT', '84032', 'lwayne6@gmail.com');
insert into Customer (CustomerID, LastName, FirstName, Street, City, State, Zip, Email) values ('0T6JYU04', 'Joul', 'Wit', '383 N 700 W', 'Salt Lake City', 'UT', '84101', 'wjoul7@gmail.com');
insert into Customer (CustomerID, LastName, FirstName, Street, City, State, Zip, Email) values ('8NFRCCSX', 'Atkins', 'Thane', '12773 Aspen Springs Dr', 'Herriman', 'UT', '84096', 'tatkins8@gmail.jp');
insert into Customer (CustomerID, LastName, FirstName, Street, City, State, Zip, Email) values ('ME4450GY', 'Monte', 'Helenka', '7327 W Paine Rd', 'Magna', 'UT', '84044', 'hmonte9@hotmail.com');

create table EmployeePhone (
PhoneNumber CHAR(10),
EmployeeID CHAR(8),
PhoneTypeID INT,
PRIMARY KEY (PhoneNumber),
FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID),
FOREIGN KEY (PhoneTypeID) REFERENCES PhoneTypeLookup (PhoneTypeID)
);
insert into EmployeePhone (PhoneNumber, EmployeeID, PhoneTypeID) values ('3284835794', '0AXEKTVK', 3);
insert into EmployeePhone (PhoneNumber, EmployeeID, PhoneTypeID) values ('1827376158', '006NDKEV', 3);
insert into EmployeePhone (PhoneNumber, EmployeeID, PhoneTypeID) values ('8833389476', '0XS3VGK6', 2);

create table CustomerPhone (
PhoneNumber CHAR(10),
CustomerID CHAR(8),
PhoneTypeID INT,
PRIMARY KEY (PhoneNumber),
FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID),
FOREIGN KEY (PhoneTypeID) REFERENCES PhoneTypeLookup (PhoneTypeID)
);
insert into CustomerPhone (PhoneNumber, CustomerID, PhoneTypeID) values ('3534248340', 'UN1NRYK1', 3);
insert into CustomerPhone (PhoneNumber, CustomerID, PhoneTypeID) values ('3578457197', 'VYS3B32L', 3);
insert into CustomerPhone (PhoneNumber, CustomerID, PhoneTypeID) values ('4491666256', 'TLRB2SLT', 2);
insert into CustomerPhone (PhoneNumber, CustomerID, PhoneTypeID) values ('4466766086', 'BB0HUY4N', 3);
insert into CustomerPhone (PhoneNumber, CustomerID, PhoneTypeID) values ('6067817991', 'IL1W9BJK', 2);
insert into CustomerPhone (PhoneNumber, CustomerID, PhoneTypeID) values ('2822737334', 'GJGONQAA', 1);
insert into CustomerPhone (PhoneNumber, CustomerID, PhoneTypeID) values ('8922801082', 'MZER1OGW', 3);
insert into CustomerPhone (PhoneNumber, CustomerID, PhoneTypeID) values ('2816020625', '0T6JYU04', 1);
insert into CustomerPhone (PhoneNumber, CustomerID, PhoneTypeID) values ('6145569117', '8NFRCCSX', 2);
insert into CustomerPhone (PhoneNumber, CustomerID, PhoneTypeID) values ('9156261477', 'ME4450GY', 3);

create table Boat (
BoatID VARCHAR(6),
CustomerID CHAR(8),
Brand VARCHAR(50),
Year INT,
Engine VARCHAR(25),
Length INT,
EngineQuantity INT,
PRIMARY KEY (BoatID),
FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID)
);
insert into Boat (BoatID, CustomerID, Brand, Year, Engine, Length, EngineQuantity) values ('7zff7e', 'UN1NRYK1','Malibu', 2008, 'coolengine1', 39, 3);
insert into Boat (BoatID, CustomerID, Brand, Year, Engine, Length, EngineQuantity) values ('79pz3l', 'UN1NRYK1','Chaparral', 2007, 'coolengine2', 32, 3);
insert into Boat (BoatID, CustomerID, Brand, Year, Engine, Length, EngineQuantity) values ('n4293n', 'VYS3B32L','Lund', 2006, 'coolengine3', 20, 3);
insert into Boat (BoatID, CustomerID, Brand, Year, Engine, Length, EngineQuantity) values ('lpcf5p', 'VYS3B32L','Mastercraft', 1986, 'coolengine4', 24, 2);
insert into Boat (BoatID, CustomerID, Brand, Year, Engine, Length, EngineQuantity) values ('3wmbri', 'VYS3B32L','Mastercraft', 2007, 'coolengine5', 32, 4);
insert into Boat (BoatID, CustomerID, Brand, Year, Engine, Length, EngineQuantity) values ('rfzvjh', 'BB0HUY4N','Yamaha', 2005, 'coolengine6', 40, 3);
insert into Boat (BoatID, CustomerID, Brand, Year, Engine, Length, EngineQuantity) values ('1ml7bo', 'GJGONQAA','Malibu', 1990, 'coolengine7', 32, 1);
insert into Boat (BoatID, CustomerID, Brand, Year, Engine, Length, EngineQuantity) values ('num81t', '0T6JYU04','Lund', 2013, 'coolengine8', 30, 2);
insert into Boat (BoatID, CustomerID, Brand, Year, Engine, Length, EngineQuantity) values ('jif5or', '0T6JYU04','Yamaha', 2000, 'coolengine9', 17, 1);
insert into Boat (BoatID, CustomerID, Brand, Year, Engine, Length, EngineQuantity) values ('q65t7i', 'ME4450GY','Yamaha', 2011, 'coolengine10', 30, 1);

create table SalesHeader (
InvoiceNumber INT,
CustomerID CHAR(8),
SaleDate DATE,
EmployeeID CHAR(8),
PRIMARY KEY (InvoiceNumber),
FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID),
FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID)
);
insert into SalesHeader (InvoiceNumber, CustomerID, SaleDate, EmployeeID) values (1, 'UN1NRYK1', '7/8/2021', '0AXEKTVK');
insert into SalesHeader (InvoiceNumber, CustomerID, SaleDate, EmployeeID) values (2, 'TLRB2SLT', '1/11/2022', '0AXEKTVK');
insert into SalesHeader (InvoiceNumber, CustomerID, SaleDate, EmployeeID) values (3, 'VYS3B32L', '3/27/2021', '006NDKEV');
insert into SalesHeader (InvoiceNumber, CustomerID, SaleDate, EmployeeID) values (4, 'TLRB2SLT', '3/15/2021', '0AXEKTVK');
insert into SalesHeader (InvoiceNumber, CustomerID, SaleDate, EmployeeID) values (5, 'BB0HUY4N', '10/8/2021', '006NDKEV');
insert into SalesHeader (InvoiceNumber, CustomerID, SaleDate, EmployeeID) values (6, 'IL1W9BJK', '11/13/2021', '0XS3VGK6');
insert into SalesHeader (InvoiceNumber, CustomerID, SaleDate, EmployeeID) values (7, 'IL1W9BJK', '8/21/2021', '0AXEKTVK');
insert into SalesHeader (InvoiceNumber, CustomerID, SaleDate, EmployeeID) values (8, 'GJGONQAA', '3/5/2022', '006NDKEV');
insert into SalesHeader (InvoiceNumber, CustomerID, SaleDate, EmployeeID) values (9, 'UN1NRYK1', '4/30/2021', '0XS3VGK6');
insert into SalesHeader (InvoiceNumber, CustomerID, SaleDate, EmployeeID) values (10, 'MZER1OGW', '1/9/2022', '0XS3VGK6');
insert into SalesHeader (InvoiceNumber, CustomerID, SaleDate, EmployeeID) values (11, '0T6JYU04', '8/25/2021', '006NDKEV');
insert into SalesHeader (InvoiceNumber, CustomerID, SaleDate, EmployeeID) values (12, '8NFRCCSX', '2/19/2021', '006NDKEV');
insert into SalesHeader (InvoiceNumber, CustomerID, SaleDate, EmployeeID) values (13, 'BB0HUY4N', '1/31/2021', '0AXEKTVK');
insert into SalesHeader (InvoiceNumber, CustomerID, SaleDate, EmployeeID) values (14, 'VYS3B32L', '8/21/2021', '006NDKEV');
insert into SalesHeader (InvoiceNumber, CustomerID, SaleDate, EmployeeID) values (15, 'ME4450GY', '5/13/2021', '0XS3VGK6');

create table OffShorePartLookup (
OffShorePartID VARCHAR(3),
Part VARCHAR(50),
PRIMARY KEY (OffShorePartID)
);
insert into OffShorePartLookup (OffShorePartID, Part) values ('001', 'Steering Wheel');
insert into OffShorePartLookup (OffShorePartID, Part) values ('002', 'Propeller');
insert into OffShorePartLookup (OffShorePartID, Part) values ('003', 'Oil Pump');
insert into OffShorePartLookup (OffShorePartID, Part) values ('004', 'Battery');
insert into OffShorePartLookup (OffShorePartID, Part) values ('005', 'Fuse');
insert into OffShorePartLookup (OffShorePartID, Part) values ('006', 'Rudder');
insert into OffShorePartLookup (OffShorePartID, Part) values ('007', 'Seats');
insert into OffShorePartLookup (OffShorePartID, Part) values ('008', 'Deck');
insert into OffShorePartLookup (OffShorePartID, Part) values ('009', 'Fuel Pump');
insert into OffShorePartLookup (OffShorePartID, Part) values ('010', 'Thruster');

create table SaleItems (
InvoiceNumber INT,
OffShorePartID VARCHAR(3),
Price DEC(9,2),
SalesTax DEC(9,2),
Quantity INT,
PRIMARY KEY (InvoiceNumber),
FOREIGN KEY (InvoiceNumber) REFERENCES SalesHeader (InvoiceNumber),
FOREIGN KEY (OffShorePartID) REFERENCES OffShorePartLookup (OffShorePartID)
);
insert into SaleItems (InvoiceNumber, OffShorePartID, Price, SalesTax, Quantity) values (1, '001', 224.34, 14.02, 2);
insert into SaleItems (InvoiceNumber, OffShorePartID, Price, SalesTax, Quantity) values (2, '001', 224.34, 14.02, 2);
insert into SaleItems (InvoiceNumber, OffShorePartID, Price, SalesTax, Quantity) values (3, '006', 583.47, 36.47, 2);
insert into SaleItems (InvoiceNumber, OffShorePartID, Price, SalesTax, Quantity) values (4, '003', 266.05, 16.63, 3);
insert into SaleItems (InvoiceNumber, OffShorePartID, Price, SalesTax, Quantity) values (5, '007', 836.80, 52.30, 3);
insert into SaleItems (InvoiceNumber, OffShorePartID, Price, SalesTax, Quantity) values (6, '002', 1411.88, 88.24, 2);
insert into SaleItems (InvoiceNumber, OffShorePartID, Price, SalesTax, Quantity) values (7, '002', 1411.88, 88.24, 2);
insert into SaleItems (InvoiceNumber, OffShorePartID, Price, SalesTax, Quantity) values (8, '002', 1411.88, 88.24, 2);
insert into SaleItems (InvoiceNumber, OffShorePartID, Price, SalesTax, Quantity) values (9, '005', 37.23, 2.33, 1);
insert into SaleItems (InvoiceNumber, OffShorePartID, Price, SalesTax, Quantity) values (10, '009', 273.47, 17.09, 2);
insert into SaleItems (InvoiceNumber, OffShorePartID, Price, SalesTax, Quantity) values (11, '009', 273.47, 17.09, 2);
insert into SaleItems (InvoiceNumber, OffShorePartID, Price, SalesTax, Quantity) values (12, '004', 149.58, 9.35, 2);
insert into SaleItems (InvoiceNumber, OffShorePartID, Price, SalesTax, Quantity) values (13, '010', 1117.50, 69.84, 3);
insert into SaleItems (InvoiceNumber, OffShorePartID, Price, SalesTax, Quantity) values (14, '008', 392.22, 24.51, 3);
insert into SaleItems (InvoiceNumber, OffShorePartID, Price, SalesTax, Quantity) values (15, '008', 392.22, 24.51, 3);
 
create table Vendor (
VendorID VARCHAR(6),
last_name VARCHAR(50),
first_name VARCHAR(50),
Street VARCHAR(50),
City VARCHAR(50),
State CHAR(2),
Zip CHAR(5),
Email VARCHAR(80)
PRIMARY KEY (VendorID)
);
insert into Vendor (VendorID, last_name, first_name, Street, City, State, Zip, Email) values (1, 'Bransom', 'Laurianne', '7 Hoffman Crossing', 'El Lolo', 'CA', '12334', 'lbransom0@etsy.com');
insert into Vendor (VendorID, last_name, first_name, Street, City, State, Zip, Email) values (2, 'Stopp', 'Tedra', '02086 Moulton Center', 'Topeka', 'KS', '66622', 'tstopp1@rediff.com');
insert into Vendor (VendorID, last_name, first_name, Street, City, State, Zip, Email) values (3, 'Tichelaar', 'Klara', '3601 Jenifer Pass', 'Karelichy', 'MN', '83839', 'ktichelaar2@howstuffworks.com');
insert into Vendor (VendorID, last_name, first_name, Street, City, State, Zip, Email) values (4, 'Whoolehan', 'Charita', '70 Fairview Way', 'Xinchenglu', 'KA', '20384', 'cwhoolehan3@xrea.com');
insert into Vendor (VendorID, last_name, first_name, Street, City, State, Zip, Email) values (5, 'Atherton', 'Bradley', '5718 Oak Park', 'Yoshikawa', 'CA', '99007', 'batherton4@statcounter.com');
insert into Vendor (VendorID, last_name, first_name, Street, City, State, Zip, Email) values (6, 'Low', 'Ulises', '21304 Northridge Center', 'New York', 'NY', '10007', 'ulow5@yandex.ru');
insert into Vendor (VendorID, last_name, first_name, Street, City, State, Zip, Email) values (7, 'Daldan', 'Doralynn', '7 Scoville Trail', 'Zarqa', 'CT', '02934', 'ddaldan6@ebay.com');
insert into Vendor (VendorID, last_name, first_name, Street, City, State, Zip, Email) values (8, 'Ridgway', 'Linc', '902 Kennedy Center', 'Koudougou', 'LA', '09474', 'lridgway7@addtoany.com');
insert into Vendor (VendorID, last_name, first_name, Street, City, State, Zip, Email) values (9, 'Deboick', 'Shermie', '26 Welch Junction', 'Al Qāmishlī', 'OR', '09493', 'sdeboick8@elegantthemes.com');
insert into Vendor (VendorID, last_name, first_name, Street, City, State, Zip, Email) values (10, 'Goadbie', 'Casey', '0447 Kennedy Trail', 'Provatás', 'CO', '04948', 'cgoadbie9@virginia.edu');

create table PurchaseHeader (
PONumber VARCHAR(12),
VendorID VARCHAR(6),
PurchaseDate DATE
PRIMARY KEY (PONumber)
FOREIGN KEY (VendorID) REFERENCES Vendor(VendorID)
);
insert into PurchaseHeader (PONumber, VendorID, PurchaseDate) values ('013260489466', 1, '1/4/2022');
insert into PurchaseHeader (PONumber, VendorID, PurchaseDate) values ('135126728370', 2, '7/25/2021');
insert into PurchaseHeader (PONumber, VendorID, PurchaseDate) values ('193002058170', 3, '4/20/2021');
insert into PurchaseHeader (PONumber, VendorID, PurchaseDate) values ('824028915560', 4, '3/2/2022');
insert into PurchaseHeader (PONumber, VendorID, PurchaseDate) values ('356096137873', 5, '10/9/2021');
insert into PurchaseHeader (PONumber, VendorID, PurchaseDate) values ('998296448556', 6, '3/19/2022');
insert into PurchaseHeader (PONumber, VendorID, PurchaseDate) values ('646927684082', 7, '10/25/2021');
insert into PurchaseHeader (PONumber, VendorID, PurchaseDate) values ('542811508664', 8, '10/17/2021');
insert into PurchaseHeader (PONumber, VendorID, PurchaseDate) values ('308664588723', 9, '6/11/2021');
insert into PurchaseHeader (PONumber, VendorID, PurchaseDate) values ('973338975931', 10, '6/16/2021');

create table ManufacturerLookup (
ManufacturerID CHAR(5),
Manufacturer VARCHAR(50),
Street VARCHAR(50),
City VARCHAR(50),
State CHAR(2),
Zip CHAR(5),
PRIMARY KEY (ManufacturerID)
);
insert into ManufacturerLookup (ManufacturerID, Manufacturer, Street, City, State, Zip) values ('21782', 'ManufacturerNames','28 Redwing Pass', 'Corpus Christi', 'TX', '78405');
insert into ManufacturerLookup (ManufacturerID, Manufacturer, Street, City, State, Zip) values ('14537', 'ManufacturerNames1','21 Northport Pass', 'Philadelphia', 'PA', '19184');
insert into ManufacturerLookup (ManufacturerID, Manufacturer, Street, City, State, Zip) values ('54890', 'ManufacturerNames2','7 Mandrake Drive', 'Berkeley', 'CA', '94712');
insert into ManufacturerLookup (ManufacturerID, Manufacturer, Street, City, State, Zip) values ('60332', 'ManufacturerNames3','35344 Clemons Street', 'Phoenix', 'AZ', '85025');
insert into ManufacturerLookup (ManufacturerID, Manufacturer, Street, City, State, Zip) values ('63259', 'ManufacturerNames4','9 Bartelt Junction', 'Tampa', 'FL', '33625');
insert into ManufacturerLookup (ManufacturerID, Manufacturer, Street, City, State, Zip) values ('12576', 'ManufacturerNames5','0108 Eastwood Parkway', 'Des Moines', 'IA', '50305');
insert into ManufacturerLookup (ManufacturerID, Manufacturer, Street, City, State, Zip) values ('19237', 'ManufacturerNames6','6222 Dayton Crossing', 'Little Rock', 'AR', '72231');
insert into ManufacturerLookup (ManufacturerID, Manufacturer, Street, City, State, Zip) values ('62266', 'ManufacturerNames7','72750 Glendale Crossing', 'Santa Monica', 'CA', '90410');
insert into ManufacturerLookup (ManufacturerID, Manufacturer, Street, City, State, Zip) values ('52614', 'ManufacturerNames8','3 Mosinee Avenue', 'Anchorage', 'AK', '99512');
insert into ManufacturerLookup (ManufacturerID, Manufacturer, Street, City, State, Zip) values ('95726', 'ManufacturerNames9','8 Green Ridge Way', 'Charlotte', 'NC', '28225');

create table PartLookup (
VPartID VARCHAR(3),
Part VARCHAR(50),
ManufacturerID CHAR(5),
PRIMARY KEY (VPartID),
FOREIGN KEY (ManufacturerID) REFERENCES ManufacturerLookup (ManufacturerID)
);
insert into PartLookup (VPartID, Part, ManufacturerID) values ('810', 'Steering Wheel','21782');
insert into PartLookup (VPartID, Part, ManufacturerID) values ('522', 'Propeller','14537');
insert into PartLookup (VPartID, Part, ManufacturerID) values ('323', 'Oil Pump','60332');
insert into PartLookup (VPartID, Part, ManufacturerID) values ('972', 'Battery','62266');
insert into PartLookup (VPartID, Part, ManufacturerID) values ('308', 'Fuse','63259');
insert into PartLookup (VPartID, Part, ManufacturerID) values ('390', 'Rudder','62266');
insert into PartLookup (VPartID, Part, ManufacturerID) values ('086', 'Seats','12576');
insert into PartLookup (VPartID, Part, ManufacturerID) values ('008', 'Deck','52614');
insert into PartLookup (VPartID, Part, ManufacturerID) values ('923', 'Fuel Pump','95726');
insert into PartLookup (VPartID, Part, ManufacturerID) values ('087', 'Thruster','54890');

create table PurchaseItems (
PONumber VARCHAR(12),
OffShorePartID VARCHAR(3),
VPartID VARCHAR(3),
Price DEC(9,2),
Quantity INT,
PRIMARY KEY (PONumber),
FOREIGN KEY (PONumber) REFERENCES PurchaseHeader (PONumber),
FOREIGN KEY (OffShorePartID) REFERENCES OffShorePartLookup (OffShorePartID),
FOREIGN KEY (VPartID) REFERENCES PartLookup (VPartID)
);
insert into PurchaseItems (PONumber, OffShorePartID, VPartID, Price, Quantity) values ('013260489466','001','810',112.17,3);
insert into PurchaseItems (PONumber, OffShorePartID, VPartID, Price, Quantity) values ('135126728370','001','810',112.17,3);
insert into PurchaseItems (PONumber, OffShorePartID, VPartID, Price, Quantity) values ('193002058170','006','390',291.74,3);
insert into PurchaseItems (PONumber, OffShorePartID, VPartID, Price, Quantity) values ('824028915560','003','323',133.03,3);
insert into PurchaseItems (PONumber, OffShorePartID, VPartID, Price, Quantity) values ('356096137873','007','086',418.40,3);
insert into PurchaseItems (PONumber, OffShorePartID, VPartID, Price, Quantity) values ('998296448556','002','522',705.94,3);
insert into PurchaseItems (PONumber, OffShorePartID, VPartID, Price, Quantity) values ('646927684082','004','972',74.79,3);
insert into PurchaseItems (PONumber, OffShorePartID, VPartID, Price, Quantity) values ('542811508664','005','308',18.62,3);
insert into PurchaseItems (PONumber, OffShorePartID, VPartID, Price, Quantity) values ('308664588723','009','923',136.74,3);
insert into PurchaseItems (PONumber, OffShorePartID, VPartID, Price, Quantity) values ('973338975931','010','087',558.75,3);
