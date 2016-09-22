package com.totsp.travelbriefing.model;

import com.google.common.base.MoreObjects;

/**
 * Created by cecollins on 6/29/16.
 */
public class Currency {

    private String name;
    private String code;
    private String symbol;
    private String rate;

    public Currency(String name, String code, String symbol, String rate) {
        this.name = name;
        this.code = code;
        this.symbol = symbol;
        this.rate = rate;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getSymbol() {
        return symbol;
    }

    public void setSymbol(String symbol) {
        this.symbol = symbol;
    }

    public String getRate() {
        return rate;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this)
                .add("name", name + "\n")
                .add("code", code + "\n")
                .add("symbol", symbol + "\n")
                .add("rate", rate + "\n")
                .toString();
    }
}
