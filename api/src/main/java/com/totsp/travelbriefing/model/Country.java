package com.totsp.travelbriefing.model;

import com.google.common.base.MoreObjects;
import com.google.gson.annotations.SerializedName;

import java.util.*;

/**
 * Created by cecollins on 6/28/16.
 */
public class Country {

    @SerializedName("names")
    private Name name;
    @SerializedName("language")
    private List<Language> languages;
    private List<Vaccination> vaccinations;

    @SerializedName("maps")
    private Map map;
    private Timezone timezone;
    private Electricity electricity;
    private Currency currency;
    private Water water;
    private Telephone telephone;
    @SerializedName("advise")
    private java.util.Map<String, Advisory> advisories;

    public Country(Name name, List<Language> languages, List<Vaccination> vaccinations, Map map, Timezone timezone, Electricity electricity, Currency currency, Water water, Telephone telephone, java.util.Map<String, Advisory> advisories) {
        this.name = name;
        this.languages = languages;
        this.vaccinations = vaccinations;
        this.map = map;
        this.timezone = timezone;
        this.electricity = electricity;
        this.currency = currency;
        this.water = water;
        this.telephone = telephone;
        this.advisories = advisories;
    }

    public Name getName() {
        return name;
    }

    public void setName(Name name) {
        this.name = name;
    }

    public List<Language> getLanguages() {
        return languages;
    }

    public void setLanguages(List<Language> languages) {
        this.languages = languages;
    }

    public List<Vaccination> getVaccinations() {
        return vaccinations;
    }

    public void setVaccinations(List<Vaccination> vaccinations) {
        this.vaccinations = vaccinations;
    }

    public Map getMap() {
        return map;
    }

    public void setMap(Map map) {
        this.map = map;
    }

    public Timezone getTimezone() {
        return timezone;
    }

    public void setTimezone(Timezone timezone) {
        this.timezone = timezone;
    }

    public Electricity getElectricity() {
        return electricity;
    }

    public void setElectricity(Electricity electricity) {
        this.electricity = electricity;
    }

    public Currency getCurrency() {
        return currency;
    }

    public void setCurrency(Currency currency) {
        this.currency = currency;
    }

    public Water getWater() {
        return water;
    }

    public void setWater(Water water) {
        this.water = water;
    }

    public Telephone getTelephone() {
        return telephone;
    }

    public void setTelephone(Telephone telephone) {
        this.telephone = telephone;
    }

    public java.util.Map<String, Advisory> getAdvisories() {
        return advisories;
    }

    public void setAdvisories(java.util.Map<String, Advisory> advisories) {
        this.advisories = advisories;
    }

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this)
                .add("name", name + "\n")
                .add("languages", languages + "\n")
                .add("vaccinations", vaccinations + "\n")
                .add("map", map + "\n")
                .add("timezone", timezone + "\n")
                .add("electricity", electricity + "\n")
                .add("currency", currency + "\n")
                .add("water", water + "\n")
                .add("telephone", telephone + "\n")
                .add("advisories", advisories + "\n")
                .toString();
    }
}