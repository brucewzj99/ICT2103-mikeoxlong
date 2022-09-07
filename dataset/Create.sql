CREATE TABLE Bus_Stop(
BusStopCode INT NOT NULL PRIMARY KEY,
RoadName VARCHAR (50) NOT NULL,
Description VARCHAR (50) NOT NULL,
Latitude DOUBLE NOT NULL,
Longtitude DOUBLE NOT NULL
);

CREATE TABLE Bus_Services(
ServiceNo VARCHAR(5) NOT NULL PRIMARY KEY,
Operator VARCHAR(10) NOT NULL,
Category VARCHAR(10) NOT NULL
);

CREATE TABLE Bus_Direction(
ServiceId INT NOT NULL PRIMARY KEY,
Direction INT NOT NULL,
ServiceNo VARCHAR(5) NOT NULL,
OriginCode INT NOT NULL,
DestinationCode INT NOT NULL,
AMPeakFreq VARCHAR(10),
AMOffpeakFreq VARCHAR(10),
PMPeakFreq VARCHAR(10),
PMOffpeakFreq VARCHAR(10),
LoopDesc VARCHAR(50),
FOREIGN KEY (ServiceNo) REFERENCES Bus_Services
);

CREATE TABLE Bus_Route(
ServiceId INT NOT NULL,
SequenceNo INT NOT NULL,
BusStopCode INT NOT NULL,
Distance DOUBLE NOT NULL,
Operator VARCHAR(10) NOT NULL,
SATFirstBus INT,
SATLastBus INT,
SUNFirstBus INT,
SUNLastBus INT,
WDFirstBus INT,
WDLastBus INT,
FOREIGN KEY (ServiceId) REFERENCES Bus_Direction,
CONSTRAINT PK_Route PRIMARY KEY (ServiceId, SequenceNo)
);