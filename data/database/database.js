'use string'

//mysql library
const mysql = require("mysql2/promise");

/**
 * @module dbCrypto
 * 
 */
module.exports = class dbCrypto {
        /**
         * costructor description 
         * 
         * @param {string} host_name l'host dove viene ospitato il db
         * @param {string} db_user  l'utente che ha accesso al db
         * @param {*} db_password la password dell'utente che ha accesso al db
         * @param {*} db_name   il nome del db
         */
        constructor(host_name, db_user, db_password, db_name) {
                this.db = mysql.createPool({
                        host: host_name,
                        user: db_user,
                        password: db_password,
                        database: db_name,
                        waitForConnections: true,
                        connectionLimit: 10,
                        queueLimit: 0,
                });
        }


        /**
         * @method search_price(table_name)
         * <br />
         * 
         * 
         * Ricerca all'interno del DB gli ultimi prezzi riguardanti tutte le cryptovalute
         * all'interno del DB.
         * 
         * @param {string} table_name Il nome della tabella nel DB
         * @returns false se la query non va a buon fine altrimenti il risultato della query
         * 
         * <br />
         */
        async search_price(table_name) {
                let query_sql = `SELECT id_crypto, current_price, last_updated FROM ${table_name} ORDER BY id_price DESC LIMIT 99;`;

                try {
                        let query_result = await this.db.execute(query_sql);
                        return query_result;
                } catch (err) {
                        console.log("caught: ", err);
                        return false;
                }
        }

        /**
         * @method search_price_id(table_name, id_crypto)
         * <br /> 
         * Ricerca all'interno del DB gli ultimi prezzi riguardanti una data cryptovaluta
         * all'interno del DB.
         *
         * @param {string} table_name   il nome della tabella nel db
         * @param {string} id_crypto    l'id della cryptovaluta
         * @returns false se la query non va a buon fine altrimenti il risultato della query
         * 
         * <br />
         */
        async search_price_id(table_name, id_crypto) {
                let query_sql = `SELECT id_crypto, current_price, last_updated FROM ${table_name} WHERE id_crypto="${id_crypto}" ORDER BY id_price DESC LIMIT 1;`;

                try {
                        let query_result = await this.db.execute(query_sql);
                        return query_result;
                } catch (err) {
                        console.log("caught: ", err);
                        return false;
                }
        }

        /**
         * @method search_info(table_name)
         * <br />
         * Ricerca all'interno del DB le informazioni generali riguardanti tutte le cryptovalute
         * all'interno del DB.
         *
         * @param {string} table_name  Il nome della tabella nel DB
         * @returns false se la query non va a buon fine altrimenti il risultato della query
         * 
         * <br />
         */
        async search_info(table_name) {
                let query_sql = `SELECT * FROM ${table_name};`;

                try {
                        let query_result = await this.db.execute(query_sql);
                        return query_result;
                } catch (err) {
                        console.log("caught: ", err);
                        return false;
                }
        }

        /**
         * @method search_info_id(table_name, id_crypto)
         * <br />
         * Ricerca all'interno del DB le informazioni generali riguardanti una data cryptovaluta
         * all'interno del DB.
         *
         * @param {string} table_name   il nome della tabella nel db
         * @param {string} id_crypto    l'id della cryptovaluta
         * @returns false se la query non va a buon fine altrimenti il risultato della query
         * 
         * <br />
         */
        async search_info_id(table_name, id_crypto) {
                let query_sql = `SELECT * FROM ${table_name} WHERE id_crypto="${id_crypto}";`;

                try {
                        let query_result = await this.db.execute(query_sql);
                        return query_result;
                } catch (err) {
                        console.log("caught: ", err);
                        return false;
                }
        }

        /**
         * @method search_market(table_name)
         * <br />
         * Ricerca all'interno del DB gli le informazioni di mercato riguardanti tutte le cryptovalute
         * all'interno del DB.
         *
         * @param {string} table_name  Il nome della tabella nel DB
         * @returns false se la query non va a buon fine altrimenti il risultato della query
         * 
         * <br />
         */
        async search_market(table_name) {
                let query_sql = `SELECT * FROM ${table_name}; ORDER BY id_market DESC LIMIT 99;`;

                try {
                        let query_result = await this.db.execute(query_sql);
                        return query_result;
                } catch (err) {
                        console.log("caught: ", err);
                        return false;
                }
        }

        /**
         * @method search_market_id(table_name, id_crypto)
         * <br />
         * Ricerca all'interno del DB le informazioni di mercato riguardanti una data cryptovaluta
         * all'interno del DB.
         *
         * @param {string} table_name   il nome della tabella nel db 
         * @param {string} id_crypto    l'id della cryptovaluta
         * @returns false se la query non va a buon fine altrimenti il risultato della query
         * 
         * <br />
         */
        async search_market_id(table_name, id_crypto) {
                let query_sql = `SELECT * FROM ${table_name} WHERE id_crypto="${id_crypto}" ORDER BY id_market DESC LIMIT 1;`;

                try {
                        let query_result = await this.db.execute(query_sql);
                        return query_result;
                } catch (err) {
                        console.log("caught: ", err);
                        return false;
                }
        }

        
        /**
         * @method insert_price(table_name, data)
         * <br />
         * Inserisce nella tabella specificata del DB le informazioni riguardanti i prezzi delle cryptovalute
         *
         * @param {string} table_name il nome della tabella nel db (Crypto_Price)
         * @param {object} data       i dati da inserire nel DB in formato JSON
         */
        async insert_price(table_name, data) {
                let last_updated = Math.floor( new Date(data.last_updated).getTime() / 1000);
                let sql_insert = `INSERT INTO ${table_name} (id_crypto, current_price, last_updated) VALUES ("${data.id}", ${data.current_price}, "${last_updated}");`;

                try {
                        (await this.db).execute(sql_insert);
                } catch (err) {
                        console.err("catch: ", err);
                }
        }

        /**
         * @method insert_market(table_name, data)
         * <br />
         * Inserisce nella tabella specificata del DB le informazioni riguardanti il mercato delle cryptovalute
         *
         * @param {string} table_name il nome della tabella nel db (Crypto_Market)
         * @param {object} data       i dati da inserire nel DB in formato JSON
         */
         async insert_market(table_name, data) {
                let sql_insert = `INSERT INTO ${table_name} (id_crypto, market_cap,  market_cap_rank, market_cap_change_24h, market_cap_change_percentage_24h) VALUES ("${data.id}", ${data.market_cap}, ${data.market_cap_rank}, ${data.market_cap_change_24h}, ${data.market_cap_change_percentage_24h});`;
                try {
                        (await this.db).execute(sql_insert);
                } catch (err) {
                        console.err("catch: ", err);
                }
        }

        /**
         * @method insert_info(table_name, data)
         * <br />
         * Inserisce nella tabella specificata del DB le informazioni generali delle cryptovalute
         *
         * @param {string} table_name il nome della tabella nel db (Crypto_Info)
         * @param {object} data       i dati da inserire nel DB in formato JSON
         */
         async insert_info(table_name, data) {
                let sql_insert = `INSERT INTO ${table_name} (id_crypto, name,  symbol, image) VALUES ("${data.id}", "${data.name}", "${data.symbol}", "${data.image}");`;
                try {
                        (await this.db).execute(sql_insert);
                } catch (err) {
                        console.err("\n catch: ", err);
                }
        }
};
