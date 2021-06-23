-- MariaDB dump 10.19  Distrib 10.5.9-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cryptopills_db
-- ------------------------------------------------------
-- Server version	10.5.9-MariaDB-1:10.5.9+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Crypto_Info`
--

DROP TABLE IF EXISTS `Crypto_Info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Crypto_Info` (
  `id_crypto` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id_crypto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Crypto_Info`
--

LOCK TABLES `Crypto_Info` WRITE;
/*!40000 ALTER TABLE `Crypto_Info` DISABLE KEYS */;
INSERT INTO `Crypto_Info` VALUES ('0x','0x','zrx','https://assets.coingecko.com/coins/images/863/large/0x.png?1547034672)'),('aave','Aave','aave','https://assets.coingecko.com/coins/images/12645/large/AAVE.png?1601374110)'),('algorand','Algorand','algo','https://assets.coingecko.com/coins/images/4380/large/download.png?1547039725)'),('amp-token','Amp','amp','https://assets.coingecko.com/coins/images/12409/large/amp-200x200.png?1599625397)'),('ankr','Ankr','ankr','https://assets.coingecko.com/coins/images/4324/large/U85xTl2.png?1608111978)'),('arweave','Arweave','ar','https://assets.coingecko.com/coins/images/4343/large/oRt6SiEN_400x400.jpg?1591059616)'),('avalanche-2','Avalanche','AVAX','https://assets.coingecko.com/coins/images/12559/large/coin-round-red.png?1604021818)'),('bancor','Bancor Network Token','bnt','https://assets.coingecko.com/coins/images/736/large/bancor.png?1547034477)'),('basic-attention-token','Basic Attention Token','bat','https://assets.coingecko.com/coins/images/677/large/basic-attention-token.png?1547034427)'),('binance-usd','Binance USD','busd','https://assets.coingecko.com/coins/images/9576/large/BUSD.png?1568947766)'),('binancecoin','Binance Coin','bnb','https://assets.coingecko.com/coins/images/825/large/binance-coin-logo.png?1547034615)'),('bitcoin','Bitcoin','btc','https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579)'),('bitcoin-cash','Bitcoin Cash','bch','https://assets.coingecko.com/coins/images/780/large/bitcoin-cash-circle.png?1594689492)'),('bitcoin-cash-sv','Bitcoin SV','bsv','https://assets.coingecko.com/coins/images/6799/large/BSV.png?1558947902)'),('bitcoin-gold','Bitcoin Gold','btg','https://assets.coingecko.com/coins/images/1043/large/bitcoin-gold-logo.png?1547034978)'),('bittorrent-2','BitTorrent','btt','https://assets.coingecko.com/coins/images/7595/large/BTT_Token_Graphic.png?1555066995)'),('blockstack','Stacks','stx','https://assets.coingecko.com/coins/images/2069/large/Stacks_logo_full.png?1604112510)'),('cardano','Cardano','ada','https://assets.coingecko.com/coins/images/975/large/cardano.png?1547034860)'),('cdai','cDAI','cdai','https://assets.coingecko.com/coins/images/9281/large/cDAI.png?1576467585)'),('celsius-degree-token','Celsius Network','cel','https://assets.coingecko.com/coins/images/3263/large/CEL_logo.png?1609598753)'),('chainlink','Chainlink','link','https://assets.coingecko.com/coins/images/877/large/chainlink-new-logo.png?1547034700)'),('chiliz','Chiliz','chz','https://assets.coingecko.com/coins/images/8834/large/Chiliz.png?1561970540)'),('compound-ether','cETH','ceth','https://assets.coingecko.com/coins/images/10643/large/ceth2.JPG?1581389598)'),('compound-governance-token','Compound','comp','https://assets.coingecko.com/coins/images/10775/large/COMP.png?1592625425)'),('compound-usd-coin','cUSDC','cusdc','https://assets.coingecko.com/coins/images/9442/large/Compound_USDC.png?1567581577)'),('cosmos','Cosmos','atom','https://assets.coingecko.com/coins/images/1481/large/cosmos_hub.png?1555657960)'),('crypto-com-chain','Crypto.com Coin','cro','https://assets.coingecko.com/coins/images/7310/large/cypto.png?1547043960)'),('dai','Dai','dai','https://assets.coingecko.com/coins/images/9956/large/dai-multi-collateral-mcd.png?1574218774)'),('dash','Dash','dash','https://assets.coingecko.com/coins/images/19/large/dash-logo.png?1548385930)'),('decentraland','Decentraland','mana','https://assets.coingecko.com/coins/images/878/large/decentraland-mana.png?1550108745)'),('decred','Decred','dcr','https://assets.coingecko.com/coins/images/329/large/decred.png?1547034093)'),('digibyte','DigiByte','dgb','https://assets.coingecko.com/coins/images/63/large/digibyte.png?1547033717)'),('dogecoin','Dogecoin','doge','https://assets.coingecko.com/coins/images/5/large/dogecoin.png?1547792256)'),('elrond-erd-2','Elrond','egld','https://assets.coingecko.com/coins/images/12335/large/Elrond.png?1599132180)'),('enjincoin','Enjin Coin','enj','https://assets.coingecko.com/coins/images/1102/large/enjin-coin-logo.png?1547035078)'),('eos','EOS','eos','https://assets.coingecko.com/coins/images/738/large/eos-eos-logo.png?1547034481)'),('ethereum','Ethereum','eth','https://assets.coingecko.com/coins/images/279/large/ethereum.png?1595348880)'),('ethereum-classic','Ethereum Classic','etc','https://assets.coingecko.com/coins/images/453/large/ethereum-classic-logo.png?1547034169)'),('fantom','Fantom','ftm','https://assets.coingecko.com/coins/images/4001/large/Fantom.png?1558015016)'),('filecoin','Filecoin','fil','https://assets.coingecko.com/coins/images/12817/large/filecoin.png?1602753933)'),('flow','Flow','flow','https://assets.coingecko.com/coins/images/13446/large/flow_logo.jpg?1608631239)'),('ftx-token','FTX Token','ftt','https://assets.coingecko.com/coins/images/9026/large/F.png?1609051564)'),('harmony','Harmony','one','https://assets.coingecko.com/coins/images/4344/large/Y88JAze.png?1565065793)'),('havven','Synthetix Network Token','snx','https://assets.coingecko.com/coins/images/3406/large/SNX.png?1598631139)'),('hedera-hashgraph','Hedera Hashgraph','hbar','https://assets.coingecko.com/coins/images/3688/large/mqTDGK7Q.png?1566256777)'),('helium','Helium','hnt','https://assets.coingecko.com/coins/images/4284/large/Helium_HNT.png?1612620071)'),('holotoken','Holo','hot','https://assets.coingecko.com/coins/images/3348/large/Holologo_Profile.png?1547037966)'),('huobi-btc','Huobi BTC','hbtc','https://assets.coingecko.com/coins/images/12407/large/Unknown-5.png?1599624896)'),('huobi-token','Huobi Token','ht','https://assets.coingecko.com/coins/images/2822/large/huobi-token-logo.png?1547036992)'),('icon','ICON','icx','https://assets.coingecko.com/coins/images/1060/large/icon-icx-logo.png?1547035003)'),('iostoken','IOST','iost','https://assets.coingecko.com/coins/images/2523/large/IOST.png?1557555183)'),('iota','IOTA','miota','https://assets.coingecko.com/coins/images/692/large/IOTA_Swirl.png?1604238557)'),('klay-token','Klaytn','klay','https://assets.coingecko.com/coins/images/9672/large/CjbT82vP_400x400.jpg?1570548320)'),('kucoin-shares','KuCoin Token','kcs','https://assets.coingecko.com/coins/images/1047/large/sa9z79.png?1610678720)'),('kusama','Kusama','ksm','https://assets.coingecko.com/coins/images/9568/large/m4zRhP5e_400x400.jpg?1576190080)'),('leo-token','LEO Token','leo','https://assets.coingecko.com/coins/images/8418/large/leo-token.png?1558326215)'),('liquity-usd','Liquity USD','lusd','https://assets.coingecko.com/coins/images/14666/large/Group_3.png?1617631327)'),('litecoin','Litecoin','ltc','https://assets.coingecko.com/coins/images/2/large/litecoin.png?1547033580)'),('maker','Maker','mkr','https://assets.coingecko.com/coins/images/1364/large/Mark_Maker.png?1585191826)'),('matic-network','Polygon','matic','https://assets.coingecko.com/coins/images/4713/large/matic___polygon.jpg?1612939050)'),('monero','Monero','xmr','https://assets.coingecko.com/coins/images/69/large/monero_logo.png?1547033729)'),('nano','Nano','nano','https://assets.coingecko.com/coins/images/756/large/nano-coin-logo.png?1547034501)'),('near','Near','near','https://assets.coingecko.com/coins/images/10365/large/near_icon.png?1601359077)'),('nem','NEM','xem','https://assets.coingecko.com/coins/images/242/large/NEM_Logo_256x256.png?1598687029)'),('neo','NEO','neo','https://assets.coingecko.com/coins/images/480/large/NEO_512_512.png?1594357361)'),('nexo','NEXO','nexo','https://assets.coingecko.com/coins/images/3695/large/nexo.png?1548086057)'),('okb','OKB','okb','https://assets.coingecko.com/coins/images/4463/large/okb_token.png?1548386209)'),('omisego','OMG Network','omg','https://assets.coingecko.com/coins/images/776/large/OMG_Network.jpg?1591167168)'),('ontology','Ontology','ont','https://assets.coingecko.com/coins/images/3447/large/ONT.png?1583481820)'),('pancakeswap-token','PancakeSwap','cake','https://assets.coingecko.com/coins/images/12632/large/IMG_0440.PNG?1602654093)'),('paxos-standard','Paxos Standard','pax','https://assets.coingecko.com/coins/images/6013/large/paxos_standard.png?1548386291)'),('polkadot','Polkadot','dot','https://assets.coingecko.com/coins/images/12171/large/aJGBjJFU_400x400.jpg?1597804776)'),('qtum','Qtum','qtum','https://assets.coingecko.com/coins/images/684/large/qtum.png?1547034438)'),('ravencoin','Ravencoin','rvn','https://assets.coingecko.com/coins/images/3412/large/ravencoin.png?1548386057)'),('ripple','XRP','xrp','https://assets.coingecko.com/coins/images/44/large/xrp-symbol-white-128.png?1605778731)'),('siacoin','Siacoin','sc','https://assets.coingecko.com/coins/images/289/large/siacoin.png?1548386465)'),('solana','Solana','sol','https://assets.coingecko.com/coins/images/4128/large/coinmarketcap-solana-200.png?1616489452)'),('stellar','Stellar','xlm','https://assets.coingecko.com/coins/images/100/large/Stellar_symbol_black_RGB.png?1552356157)'),('sushi','Sushi','sushi','https://assets.coingecko.com/coins/images/12271/large/512x512_Logo_no_chop.png?1606986688)'),('swissborg','SwissBorg','chsb','https://assets.coingecko.com/coins/images/2117/large/YJUrRy7r_400x400.png?1589794215)'),('telcoin','Telcoin','tel','https://assets.coingecko.com/coins/images/1899/large/tel.png?1547036203)'),('terra-luna','Terra','luna','https://assets.coingecko.com/coins/images/8284/large/luna1557227471663.png?1567147072)'),('terrausd','TerraUSD','ust','https://assets.coingecko.com/coins/images/12681/large/UST.png?1601612407)'),('tether','Tether','usdt','https://assets.coingecko.com/coins/images/325/large/Tether-logo.png?1598003707)'),('tezos','Tezos','xtz','https://assets.coingecko.com/coins/images/976/large/Tezos-logo.png?1547034862)'),('the-graph','The Graph','grt','https://assets.coingecko.com/coins/images/13397/large/Graph_Token.png?1608145566)'),('theta-token','Theta Network','theta','https://assets.coingecko.com/coins/images/2538/large/theta-token-logo.png?1548387191)'),('thorchain','THORChain','rune','https://assets.coingecko.com/coins/images/6595/large/RUNE.png?1614160507)'),('tron','TRON','trx','https://assets.coingecko.com/coins/images/1094/large/tron-logo.png?1547035066)'),('uma','UMA','uma','https://assets.coingecko.com/coins/images/10951/large/UMA.png?1586307916)'),('uniswap','Uniswap','uni','https://assets.coingecko.com/coins/images/12504/large/uniswap-uni.png?1600306604)'),('usd-coin','USD Coin','usdc','https://assets.coingecko.com/coins/images/6319/large/USD_Coin_icon.png?1547042389)'),('vechain','VeChain','vet','https://assets.coingecko.com/coins/images/1167/large/VeChain-Logo-768x725.png?1547035194)'),('venus','Venus','xvs','https://assets.coingecko.com/coins/images/12677/large/venus.png?1618319812)'),('waves','Waves','waves','https://assets.coingecko.com/coins/images/425/large/waves.png?1548386117)'),('wrapped-bitcoin','Wrapped Bitcoin','wbtc','https://assets.coingecko.com/coins/images/7598/large/wrapped_bitcoin_wbtc.png?1548822744)'),('yearn-finance','yearn.finance','yfi','https://assets.coingecko.com/coins/images/11849/large/yfi-192x192.png?1598325330)'),('zcash','Zcash','zec','https://assets.coingecko.com/coins/images/486/large/circle-zcash-color.png?1547034197)'),('zencash','Horizen','zen','https://assets.coingecko.com/coins/images/691/large/horizen.png?1555052241)'),('zilliqa','Zilliqa','zil','https://assets.coingecko.com/coins/images/2687/large/Zilliqa-logo.png?1547036894)');
/*!40000 ALTER TABLE `Crypto_Info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Crypto_Market`
--

DROP TABLE IF EXISTS `Crypto_Market`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Crypto_Market` (
  `id_market` int(11) NOT NULL AUTO_INCREMENT,
  `id_crypto` varchar(100) NOT NULL,
  `market_cap` float NOT NULL,
  `market_cap_rank` int(11) NOT NULL,
  `market_cap_change_24h` float NOT NULL,
  `market_cap_change_percentage_24h` float NOT NULL,
  PRIMARY KEY (`id_market`),
  KEY `id_crypto` (`id_crypto`),
  CONSTRAINT `Crypto_Market_ibfk_1` FOREIGN KEY (`id_crypto`) REFERENCES `Crypto_Info` (`id_crypto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Crypto_Market`
--

LOCK TABLES `Crypto_Market` WRITE;
/*!40000 ALTER TABLE `Crypto_Market` DISABLE KEYS */;
/*!40000 ALTER TABLE `Crypto_Market` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Crypto_Price`
--

DROP TABLE IF EXISTS `Crypto_Price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Crypto_Price` (
  `id_price` int(11) NOT NULL AUTO_INCREMENT,
  `id_crypto` varchar(100) NOT NULL,
  `current_price` float NOT NULL,
  `last_updated` int(11) NOT NULL,
  PRIMARY KEY (`id_price`),
  KEY `id_crypto` (`id_crypto`),
  CONSTRAINT `Crypto_Price_ibfk_1` FOREIGN KEY (`id_crypto`) REFERENCES `Crypto_Info` (`id_crypto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Crypto_Price`
--

LOCK TABLES `Crypto_Price` WRITE;
/*!40000 ALTER TABLE `Crypto_Price` DISABLE KEYS */;
/*!40000 ALTER TABLE `Crypto_Price` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-18 20:43:40
