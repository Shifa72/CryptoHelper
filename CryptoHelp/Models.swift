//
//  Models.swift
//  CryptoHelp
//
//  Created by ilshat shagbanov on 15.02.2022.
//

import Foundation

struct Crypto:    Codable {
    let id:       String?
    let currency: String?
    let symbol:   String?
    let name:     String?
    let price:    String?
    let logo_url: String?
}

/*
{
    "id": "BTC",
    "currency": "BTC",
    "symbol": "BTC",
    "name": "Bitcoin",
    "logo_url": "https://s3.us-east-2.amazonaws.com/nomics-api/static/images/currencies/btc.svg",
    "status": "active",
    "price": "44155.96259398",
    "price_date": "2022-02-15T00:00:00Z",
    "price_timestamp": "2022-02-15T10:23:00Z",
    "circulating_supply": "18958806",
    "max_supply": "21000000",
    "market_cap": "837144328563",
    "market_cap_dominance": "0.4086",
    "num_exchanges": "409",
    "num_pairs": "85285",
    "num_pairs_unmapped": "6978",
    "first_candle": "2011-08-18T00:00:00Z",
    "first_trade": "2011-08-18T00:00:00Z",
    "first_order_book": "2017-01-06T00:00:00Z",
    "rank": "1",
    "rank_delta": "0",
    "high": "67600.65630696",
    "high_timestamp": "2021-11-08T00:00:00Z",
    "1d": {
      "volume": "28572021962.11",
      "price_change": "1792.39276140",
      "price_change_pct": "0.0423",
      "volume_change": "6711520750.15",
      "volume_change_pct": "0.3070",
      "market_cap_change": "34023990209.07",
      "market_cap_change_pct": "0.0424"
    },
    "30d": {
      "volume": "963166004910.15",
      "price_change": "1013.35295718",
      "price_change_pct": "0.0235",
      "volume_change": "-35058322612.83",
      "volume_change_pct": "-0.0351",
      "market_cap_change": "20417280352.78",
      "market_cap_change_pct": "0.0250"
    }
  }
*/
