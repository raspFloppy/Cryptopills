'use string'

//API
const CoinGecko = require('coingecko-api');
const CoinGeckoClient = new CoinGecko();

//Implementa i dotenv
require('dotenv').config();

//DB
const database = require('../database/database.js');
const db = new database(process.env.DB_HOST, process.env.DB_USER, process.env.DB_PASSWORD, process.env.DB_NAME);    



/**
 * @module dataFetching
 * 
 */
module.exports = class dataFetching {
        /**
         * constructor
         */
        constructor() {
                this.crypto_info;
                this.crypto_price;
                this.crypto_market;
                this.one_day_delay = process.env.ONE_DAY_DELAY;      //Delay DI 24h
                this.five_min_delay = process.env.FIVE_MIN_DELAY;     //Delay di 5 minuti
        }        


        /**
         * @method getCryptoPrice()
         * <br />
         * Richiede i dati  riguardanti i prezzi delle cryptovalute all'API CoinGecko 
         * e li inserisce all'interno del database.
         * 
         */
        async getCryptoPrice() {
                while(true) {
                        try {
                           this.crypto_price = await CoinGeckoClient.coins.markets({ ids: ['0x', 'aave', 'algorand', 'amp-token', 'ankr', 'arweave', 'avalanche-2', 'bancor', 'basic-attention-token', 'binance-usd', 'binancecoin', 'bitcoin', 'bitcoin-cash', 'bitcoin-cash-sv', 'bitcoin-gold', 'bittorrent-2', 'blockstack', 'cardano', 'cdai', 'celsius-degree-token', 'chainlink', 'chiliz', 'compound-ether', 'compound-governance-token', 'compound-usd-coin', 'cosmos', 'crypto-com-chain', 'dai', 'dash', 'decentraland', 'decred', 'digibyte', 'dogecoin', 'elrond-erd-2', 'enjincoin', 'eos', 'ethereum', 'ethereum-classic', 'fantom', 'filecoin', 'flow', 'ftx-token', 'harmony', 'havven', 'hedera-hashgraph', 'helium', 'holotoken', 'huobi-btc', 'huobi-token', 'icon', 'iostoken', 'iota', 'klay-token', 'kusama', 'leo-token', 'liquity-usd', 'litecoin', 'maker', 'matic-network', 'monero', 'nano', 'near', 'nem', 'neo', 'nexo', 'okb', 'omisego', 'ontology', 'pancakeswap-token', 'paxos-standard', 'polkadot', 'qtum', 'ravencoin', 'ripple', 'siacoin', 'solana', 'stellar', 'sushi', 'swissborg', 'telcoin', 'terra-luna', 'terrausd', 'tether', 'tezos', 'the-graph', 'theta-token', 'thorchain', 'tron', 'uma', 'uniswap', 'usd-coin', 'vechain', 'venus', 'waves', 'wrapped-bitcoin', 'yearn-finance', 'zcash', 'zencash', 'zilliqa'] });
                           
                           this.crypto_price.data.forEach(element => {
                                db.insert_price(process.env.CRYPTO_PRICE, element);
                           });
                                console.log("PRICE inserted");
                                await new Promise( resolve => setTimeout(resolve, this.five_min_delay) ); 
                        } catch (err) {
                                console.error('caught: ', err);
                        }
                }
        }

        /**
         * @method getCryptoMarket()
         * <br />
         * Richiede i dati  riguardanti le info di mercato delle cryptovalute all'API CoinGecko 
         * e li inserisce all'interno del database.
         * 
         */
        async getCryptoMarket() {
                while(true) {
                        try {
                           this.crypto_market = await CoinGeckoClient.coins.markets({ ids: ['0x', 'aave', 'algorand', 'amp-token', 'ankr', 'arweave', 'avalanche-2', 'bancor', 'basic-attention-token', 'binance-usd', 'binancecoin', 'bitcoin', 'bitcoin-cash', 'bitcoin-cash-sv', 'bitcoin-gold', 'bittorrent-2', 'blockstack', 'cardano', 'cdai', 'celsius-degree-token', 'chainlink', 'chiliz', 'compound-ether', 'compound-governance-token', 'compound-usd-coin', 'cosmos', 'crypto-com-chain', 'dai', 'dash', 'decentraland', 'decred', 'digibyte', 'dogecoin', 'elrond-erd-2', 'enjincoin', 'eos', 'ethereum', 'ethereum-classic', 'fantom', 'filecoin', 'flow', 'ftx-token', 'harmony', 'havven', 'hedera-hashgraph', 'helium', 'holotoken', 'huobi-btc', 'huobi-token', 'icon', 'iostoken', 'iota', 'klay-token', 'kusama', 'leo-token', 'liquity-usd', 'litecoin', 'maker', 'matic-network', 'monero', 'nano', 'near', 'nem', 'neo', 'nexo', 'okb', 'omisego', 'ontology', 'pancakeswap-token', 'paxos-standard', 'polkadot', 'qtum', 'ravencoin', 'ripple', 'siacoin', 'solana', 'stellar', 'sushi', 'swissborg', 'telcoin', 'terra-luna', 'terrausd', 'tether', 'tezos', 'the-graph', 'theta-token', 'thorchain', 'tron', 'uma', 'uniswap', 'usd-coin', 'vechain', 'venus', 'waves', 'wrapped-bitcoin', 'yearn-finance', 'zcash', 'zencash', 'zilliqa'] });
                           
                           this.crypto_market.data.forEach(element => {
                                db.insert_market(process.env.CRYPTO_MARKET, element);
                           });
                        
                                console.log("MARKET inserted");
                                await new Promise( resolve => setTimeout(resolve, this.one_day_delay)); 
                        } catch (err) {
                                console.error('caught: ', err);
                        }
                }
        }

        /**
         * @method getCryptoInfo() 
         * <br />
         * Richiede i dati  riguardanti i le informazioni generali delle cryptovalute all'API CoinGecko 
         * e li inserisce all'interno del database.
         * 
         */
        async getCryptoInfo() {
                try {
                        this.crypto_info = await CoinGeckoClient.coins.markets({ ids: ['0x', 'aave', 'algorand', 'amp-token', 'ankr', 'arweave', 'avalanche-2', 'bancor', 'basic-attention-token', 'binance-usd', 'binancecoin', 'bitcoin', 'bitcoin-cash', 'bitcoin-cash-sv', 'bitcoin-gold', 'bittorrent-2', 'blockstack', 'cardano', 'cdai', 'celsius-degree-token', 'chainlink', 'chiliz', 'compound-ether', 'compound-governance-token', 'compound-usd-coin', 'cosmos', 'crypto-com-chain', 'dai', 'dash', 'decentraland', 'decred', 'digibyte', 'dogecoin', 'elrond-erd-2', 'enjincoin', 'eos', 'ethereum', 'ethereum-classic', 'fantom', 'filecoin', 'flow', 'ftx-token', 'harmony', 'havven', 'hedera-hashgraph', 'helium', 'holotoken', 'huobi-btc', 'huobi-token', 'icon', 'iostoken', 'iota', 'klay-token', 'kusama', 'leo-token', 'liquity-usd', 'litecoin', 'maker', 'matic-network', 'monero', 'nano', 'near', 'nem', 'neo', 'nexo', 'okb', 'omisego', 'ontology', 'pancakeswap-token', 'paxos-standard', 'polkadot', 'qtum', 'ravencoin', 'ripple', 'siacoin', 'solana', 'stellar', 'sushi', 'swissborg', 'telcoin', 'terra-luna', 'terrausd', 'tether', 'tezos', 'the-graph', 'theta-token', 'thorchain', 'tron', 'uma', 'uniswap', 'usd-coin', 'vechain', 'venus', 'waves', 'wrapped-bitcoin', 'yearn-finance', 'zcash', 'zencash', 'zilliqa'] });
                   
                        this.crypto_info.data.forEach(element => {
                                db.insert_info(process.env.CRYPTO_INFO, element);
                        });

                        console.log("done");
                        await new Promise( resolve => setTimeout(resolve, 100)); 
                } catch (err) {
                        console.error('\ncaught: ', err);
                }
        }
}
