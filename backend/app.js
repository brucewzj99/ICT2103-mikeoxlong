//Importing express module
const express = require('express');
const cors = require('cors');
const bodyParser = require("body-parser");
 
const app = express();
const PORT = 3000;
let { connection, getBusServices, getBusServicesNo, getBusStopNameInOneDirection, getBusStopsOfServiceNo, updateBusService } = require("./database");

app.use(cors());
app.use(bodyParser.json());

// GET: Bus Services with details
app.get('/api/bus-services', (req, res) => {
    getBusServices(res)
})

// GET: Bus Services Number only
app.get('/api/bus-services-no', (req, res) => {
    getBusServicesNo(res)
})

/*  
    GET: Direction of bus service
    Params: Bus Service Number (get from the dropdown menu)
    Eg: [api/bus-direction?busService=10]
*/
app.get('/api/bus-direction', (req, res) => {
    const { busService } = req.query
    getBusStopNameInOneDirection(busService, res)
})

/*  
    GET: ALl bus stops of a bus service
    Params: Bus Service Number (get from the dropdown menu)
    Eg: [api/bus-stops?busService=10]
*/
app.get('/api/bus-stops', (req, res) => {
    const { busService } = req.query
    console.log(busService)
    getBusStopsOfServiceNo(busService, res)
})

/* ---------- UPDATE END POINTS ----------*/ 
/* 
    UPDATE: One single bus service
    Two ways to do this:
        1. Send only the updated whole bus stop object as a json in the body of the request
        2. Send only the value we want to update as a key, value json in body
    Here, I am doing the second method
*/
app.put('/api/bus-services/', (req, res) => {
    const { busService } = req.query
    const newData = req.body
    const key = Object.keys(newData)[0]
    const value = Object.values(newData)[0]
    console.log(busService)
    updateBusService(busService, key, value, res)
})



/* Start listening to port to connect to DB */
app.listen(PORT, (error) =>{
    // listening to port just fine
    if(!error) {
        console.log("Server is Successfully Running, App is listening on port "+ PORT)

        connection.connect((err) => {
            if (err) throw err;
            console.log("DB Connected!!!");
        });
    } // cant listen to port for some reason
    else
        console.log("Error occurred, server can't start", error);
    }
);