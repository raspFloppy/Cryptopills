//WebServer
const express = require('express');
const app = express();

//Implementa i dotenv
require('dotenv').config(); 

//DB
const database = require('./data/database/database.js');
const db = new database(process.env.DB_HOST, process.env.DB_USER, process.env.DB_PASSWORD, process.env.DB_NAME);

//Data fetching 
const dataFetching = require('./data/data-fetch/data-fetch.js');
const getData = new dataFetching();




getData.getCryptoPrice();
getData.getCryptoMarket();



//GET all price
app.get('/price', async (req, res) => {
        let result = await db.search_price(process.env.CRYPTO_PRICE);

        if(!result) {
                res.send({"status": 500, "error": "Internal server error"});
        } else {
                res.send({"status": 200, "error": null, "response": result[0]});
        }
});

//GET price by id
app.get('/price/:id', async(req, res) => {
        let id_crypto = req.params.id;
        let result = await db.search_price_id(process.env.CRYPTO_PRICE, id_crypto);

        if(!result) {
                res.send({"status": 500, "error": "Internal server error"});
        } else {
                res.send({"status": 200, "error": null, "response": result[0]});
        }
});

//GET all crypocurrencies information data
app.get('/info', async (req, res) => {
        let result = await db.search_info(process.env.CRYPTO_INFO);

        if(!result) {
                res.send({"status": 500, "error": "Internal server error"});
        } else {
                res.send({"status": 200, "error": null, "response": result[0]});
        }
});

//GET all info data by id
app.get('/info/:id', async(req, res) => {
        let id_crypto = req.params.id;
        let result = await db.search_info_id(process.env.CRYPTO_INFO, id_crypto);

        if(!result) {
                res.send({"status": 500, "error": "Internal server error"});
        } else {
                res.send({"status": 200, "error": null, "response": result[0]});
        }
});

//GET all market data
app.get('/market', async (req, res) => {
        let result = await db.search_info(process.env.CRYPTO_MARKET);

        if(!result) {
                res.send({"status": 500, "error": "Internal server error"});
        } else {
                res.send({"status": 200, "error": null, "response": result[0]});
        }
});

//GET market by id
app.get('/market/:id', async(req, res) => {
        let id_crypto = req.params.id;
        let result = await db.search_info_id(process.env.CRYPTO_MARKET, id_crypto);

        if(!result) {
                res.send({"status": 500, "error": "Internal server error"});
        } else {
                res.send({"status": 200, "error": null, "response": result[0]});
        }
});


//Home page
app.get('/', async(req, res) => {
        res.send('home');
});

//Server listening
app.listen(process.env.PORT, () => {
	console.log('Server started on localhost:%d ; Press Ctril-C to terminate.', process.env.PORT);
});
