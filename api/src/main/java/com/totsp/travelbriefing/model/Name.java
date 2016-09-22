package com.totsp.travelbriefing.model;

import com.google.common.base.MoreObjects;

/**
 * Created by cecollins on 6/28/16.
 */
public class Name {

    private String name;
    private String full;
    private String iso2;
    private String iso3;
    private String continent;

    public Name(String name, String full, String iso2, String iso3, String continent) {
        this.name = name;
        this.full = full;
        this.iso2 = iso2;
        this.iso3 = iso3;
        this.continent = continent;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFull() {
        return full;
    }

    public void setFull(String full) {
        this.full = full;
    }

    public String getIso2() {
        return iso2;
    }

    public void setIso2(String iso2) {
        this.iso2 = iso2;
    }

    public String getIso3() {
        return iso3;
    }

    public void setIso3(String iso3) {
        this.iso3 = iso3;
    }

    public String getContinent() {
        return continent;
    }

    public void setContinent(String continent) {
        this.continent = continent;
    }

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this)
                .add("name", name)
                .add("full", full)
                .add("iso2", iso2)
                .add("iso3", iso3)
                .add("continent", continent)
                .toString();
    }
}
