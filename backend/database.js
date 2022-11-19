// establishing connection to database (replace with your own)

const { response } = require('express');
var mysql = require('mysql')

//----------------------- USE YOUR OWN CONNECTION HERE -----------------------
// var connection = mysql.createConnection({
//     host: 'localhost',
//     user: 'root',
//     password: 'password',
//     database: 'ict2103',
// });

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'Juleus',
    password: 'somepassword',
    database: 'projectdb',
});

// var connection = mysql.createConnection({
//     host: 'localhost',
//     user: 'root',
//     password: 'Asdfgh568!',
//     database: 'ICT2103_Project',
// });

// Create bus service
const createBusService = (busService, operator, category, res) => {
    var data = []
    const query = ` INSERT INTO bus_services VALUES ('${busService}', '${operator}', '${category}'); `
    connection.query(query, (err, rows, fields) => {
        if (err) throw err

        data = JSON.parse(JSON.stringify(rows));
        res.send(data)
    })
}

// Create bus service
const createBusStop = (busStopCode, roadName, description, latitude, longitude, res) => {
    var data = []
    const query = ` INSERT INTO bus_stop VALUES ('${busStopCode}', '${roadName}', '${description}', '${latitude}', '${longitude}'); `
    connection.query(query, (err, rows, fields) => {
        if (err) throw err

        data = JSON.parse(JSON.stringify(rows));
        res.send(data)
    })
}

// Create MRT Station
const createMRTStation = (stnCode, mrtStation, mrtLine, latitude, longitude, res) => {
    var data = []
    const query = ` INSERT INTO mrt_station VALUES ('${stnCode}', '${mrtStation}', '${mrtLine}', NULL, '${latitude}', '${longitude}'); `
    connection.query(query, (err, rows, fields) => {
        if (err) throw err

        data = JSON.parse(JSON.stringify(rows));
        res.send(data)
    })
}

// Create Taxi Stand
const createTaxiStand = (taxiCode, description, latitude, longitude, bfa, taxiOwnership, taxiType, res) => {
    var data = []
    console.log(bfa)
    const query = ` INSERT INTO taxi_stand VALUES ('${taxiCode}', '${latitude}', '${longitude}', ${bfa}, '${taxiOwnership}', '${taxiType}', '${description}', NULL); `
    connection.query(query, (err, rows, fields) => {
        if (err) throw err

        data = JSON.parse(JSON.stringify(rows));
        res.send(data)
    })
}

// Get All Bus Service details
const getBusServices = (res) => {
    var data = []
    const query = 'SELECT * FROM Bus_Services;'
    connection.query(query, (err, rows, fields) => {
        if (err) throw err

        data = JSON.parse(JSON.stringify(rows));
        res.send(data)
    })
}

// Get All Bus Services No.
const getBusServicesNo = (res) => {
    var rawData = []
    var data = []
    const query = 'SELECT ServiceNo FROM Bus_Services;'
    connection.query(query, (err, rows, fields) => {
        if (err) throw err

        rawData = JSON.parse(JSON.stringify(Object.values(rows)));
        // console.log(rawData)
        for(let row of rawData){
            data.push(row.ServiceNo); 
        }
        res.send(data)
    })
}

// Check if Bus Service No. exists in DB
const checkBusServiceNo = (busService, res) => {
    var rawData = []
    var data = []
    const query = ` SELECT ServiceNo 
                    FROM Bus_Services
                    WHERE ServiceNo='${busService}'; `
    connection.query(query, (err, rows, fields) => {
        if (err) throw err

        rawData = JSON.parse(JSON.stringify(Object.values(rows)));
        res.send(rawData)
    })
}

// Check if MRT Station Code exists in DB
const checkStnCode = (stnCode, res) => {
    var rawData = []
    var data = []
    const query = ` SELECT StnCode 
                    FROM mrt_station
                    WHERE StnCode='${stnCode}'; `
    connection.query(query, (err, rows, fields) => {
        if (err) throw err

        rawData = JSON.parse(JSON.stringify(Object.values(rows)));
        res.send(rawData)
    })
}

// Check if Taxi Stand Code exists in DB
const checkTaxiStandCode = (taxiStandCode, res) => {
    var rawData = []
    var data = []
    const query = ` SELECT TaxiCode 
                    FROM taxi_stand
                    WHERE TaxiCode='${taxiStandCode}'; `
    connection.query(query, (err, rows, fields) => {
        if (err) throw err

        rawData = JSON.parse(JSON.stringify(Object.values(rows)));
        res.send(rawData)
    })
}

// Get All Bus Stop names in one direction
const getBusStopNameInOneDirection = (busService, res) => {
    var rawData = []
    var data = []
    const query = `SELECT Description 
                   FROM Bus_Stop 
                   WHERE BusStopCode IN 
                   (SELECT DestinationCode 
                    FROM Bus_Direction 
                    WHERE serviceNo = '${busService}');`
    connection.query(query, (err, rows, fields) => {
        if (err) throw err

        rawData = JSON.parse(JSON.stringify(Object.values(rows)));
        // console.log(rawData)
        for(let row of rawData){
            data.push(row.Description); 
        }
        res.send(data)
    })
}

// Get all Bus Stops from Bus Service No.
const getBusStopsOfServiceNo = (busService, res) => {
    var rawData = []
    var data = []
    const query = ` SELECT *
                    FROM bus_route BR JOIN bus_stop BS
                    ON BR.BusStopCode = BS.BusStopCode
                    WHERE BR.ServiceNo = '${busService}'
                    ORDER BY BR.ServiceNo, BR.Direction, BR.StopSequence; `
    connection.query(query, (err, rows, fields) => {
        if (err) throw err

        rawData = JSON.parse(JSON.stringify(Object.values(rows)));
        res.send(rawData)
    })                
}

// Check if Bus Stop Code exists in DB
const checkBusStopCode = (busStopCode, res) => {
    var rawData = []
    var data = []
    const query = ` SELECT BusStopCode 
                    FROM bus_stop 
                    WHERE BusStopCode='${busStopCode}' `
    connection.query(query, (err, rows, fields) => {
        if (err) throw err

        rawData = JSON.parse(JSON.stringify(Object.values(rows)));
        res.send(rawData)
    })                
}

// Get all Bus Routes from Bus Stop Code
const getRoutesOfBusStopCode = (busStopCode, res) => {
    var rawData = []
    var data = []
    const query = ` SELECT *
                    FROM bus_route
                    WHERE BusStopCode = '${busStopCode}'; `
    connection.query(query, (err, rows, fields) => {
        if (err) throw err

        rawData = JSON.parse(JSON.stringify(Object.values(rows)));
        //console.log(rawData)
        for(let row of rawData){
            data.push(row.MRTStation); 
        }
        res.send(data)
    })
}

//Get MRT Station Name from Bus Service No.
const getMRTStationNameFromServiceNo = (busService, res) => {
    var rawData = []
    var data = []
    const query = `SELECT DISTINCT mrt.MRTStation
        FROM MRT_Station mrt
        LEFT JOIN bus_route br ON mrt.busStopCode = br.busStopCode
        WHERE ServiceNo = '${busService}'; `
    connection.query(query, (err, rows, fields) => {
        if (err) throw err
    
        rawData = JSON.parse(JSON.stringify(Object.values(rows)));
        res.send(rawData)
    })  
}

// Get Taxi Stand Location from Bus Service No.
const getTaxiStandLocationFromServiceNo = (busService, res) => {
    var rawData = []
    var data = []
    const query = `SELECT Latitude, Longitude
                   FROM Taxi_Stand taxi 
                   WHERE taxi.StnCode IN 
                   (SELECT DISTINCT mrt.StnCode 
                    FROM MRT_Station mrt 
                    LEFT JOIN bus_route br 
                    ON mrt.busStopCode = br.busStopCode 
                    WHERE ServiceNo = '${busService}');`
    connection.query(query, (err, rows, fields) => {
        if (err) throw err
    
        rawData = JSON.parse(JSON.stringify(Object.values(rows)));
        res.send(rawData)
    })  
}

// Get Taxi Stand Location from MRT Station
const getTaxiStandLocationFromMRTStation = (station, res) => {
    var rawData = []
    var data = []
    const query = ` SELECT latitude, longitude 
                    FROM taxi_stand taxi 
                    WHERE taxi.stncode = 
                    (SELECT mrt.stncode 
                    FROM mrt_station mrt 
                    WHERE taxi.stncode = mrt.stncode 
                    AND mrt.MRTStation='${station}'); `
    connection.query(query, (err, rows, fields) => {
        if (err) throw err
    
        rawData = JSON.parse(JSON.stringify(Object.values(rows)));
        res.send(rawData)
    })  
}

// Update Bus Service Details (Operator / Category)
const updateBusService = (topicValue, selectedServiceNo, updateValue, res) => {
    var rawData = []
    var data = []
    const query = ` UPDATE bus_services 
                    SET ${topicValue} = '${updateValue}' 
                    WHERE ServiceNo = '${selectedServiceNo}'; `
    connection.query(query, (err, rows, fields) => {
        if (err) throw err

        // rawData = JSON.parse(JSON.stringify(Object.values(rows)));
        // res.send(rawData)
        res.send("Updated Bus Service " + selectedServiceNo + " to " + topicValue)
    })
}

// Delete Bus Route while also Updating Sequences for all affected Bus Routes
const deleteBusRouteAndUpdateSequences = (routes, busStopCode, res) => {
    var rawData = []
    var data = []
    var query = ""

    query += ` DELETE FROM bus_route
               WHERE BusStopCode = '${busStopCode}'; `

    for (let i = 0; i < routes.length; i++) {
        query += ` UPDATE bus_route 
                   SET StopSequence = StopSequence - 1 
                   WHERE ServiceNo = '${routes[i].ServiceNo}' 
                   AND Direction = '${routes[i].Direction}'
                   AND StopSequence > ${routes[i].StopSequence}; `
    }
    
    connection.query(query, (err, rows, fields) => {
        if (err) throw err

        // rawData = JSON.parse(JSON.stringify(Object.values(rows)));
        // res.send(rawData)
        res.send("Deleted bus route for all affected bus services and updated stop sequences")
    })
}

// Get all MRT Stations
const getMRTStationName = (res) => {
    var rawData = []
    var data = []
    const query = 'SELECT MRTStation FROM mrt_station;'
    connection.query(query, (err, rows, fields) => {
        if (err) throw err
    
        rawData = JSON.parse(JSON.stringify(Object.values(rows)));
        res.send(rawData)
    })  
}

// Get all MRT Lines
const getMRTLines = (res) => {
    var rawData = []
    var data = []
    const query = 'SELECT DISTINCT MRTLine FROM mrt_station;'
    connection.query(query, (err, rows, fields) => {
        if (err) throw err
    
        rawData = JSON.parse(JSON.stringify(Object.values(rows)));
        res.send(rawData)
    })  
}

// Get all MRT Station Codes
const getMRTStnCodes = (res) => {
    var rawData = []
    var data = []
    const query = 'SELECT StnCode FROM mrt_station;'
    connection.query(query, (err, rows, fields) => {
        if (err) throw err
    
        rawData = JSON.parse(JSON.stringify(Object.values(rows)));
        res.send(rawData)
    })  
}

// Get all MRT Stations from MRT Line
const getMRTStationsFromLine = (mrtLine, res) => {
    var rawData = []
    var data = []
    const query = ` SELECT MRTStation 
                    FROM mrt_station
                    WHERE MRTLine = '${mrtLine}'; `
    connection.query(query, (err, rows, fields) => {
        if (err) throw err
    
        rawData = JSON.parse(JSON.stringify(Object.values(rows)));
        res.send(rawData)
    })  
}

// Get All details from Taxi Stand
const getTaxiStands = (res) => {
    var rawData = []
    var data = []
    const query = ` SELECT * 
                    FROM taxi_stand; `
    connection.query(query, (err, rows, fields) => {
        if (err) throw err
    
        rawData = JSON.parse(JSON.stringify(Object.values(rows)));
        res.send(rawData)
    })  
}

// Get Location from MRT Station
const getLocationFromMRTStation = (station, res) => {
    var rawData = []
    var data = []
    const query = ` SELECT Latitude, Longitude 
                    FROM mrt_station 
                    WHERE MRTStation='${station}'; `
    connection.query(query, (err, rows, fields) => {
        if (err) throw err
    
        rawData = JSON.parse(JSON.stringify(Object.values(rows)));
        res.send(rawData)
    })  
}

// Get Location of Taxi Stand with inputted Name
const getTaxiStandLocationFromName = (name, res) => {
    var rawData = []
    var data = []
    const query = ` SELECT Latitude, Longitude 
                    FROM taxi_stand WHERE Name="${name}"; `
    connection.query(query, (err, rows, fields) => {
        if (err) throw err
    
        rawData = JSON.parse(JSON.stringify(Object.values(rows)));
        res.send(rawData)
    })  
}

module.exports = { connection, createBusService, createBusStop, createMRTStation, createTaxiStand, getBusServices, 
    getBusServicesNo, getBusStopNameInOneDirection, getBusStopsOfServiceNo, getRoutesOfBusStopCode, checkBusStopCode, 
    checkBusServiceNo, checkTaxiStandCode, updateBusService, deleteBusRouteAndUpdateSequences, getMRTStationName, getMRTLines, 
    checkStnCode, getMRTStationNameFromServiceNo, getMRTStationsFromLine, getLocationFromMRTStation, 
    getMRTStnCodes, getTaxiStands, getTaxiStandLocationFromName, getTaxiStandLocationFromServiceNo, 
    getTaxiStandLocationFromMRTStation }
