package com.totsp.travelbriefing.model;

import com.google.common.base.MoreObjects;

/**
 * Created by cecollins on 6/28/16.
 */
public class Electricity {

    private String voltage;
    private String frequency;
    private String[] plugs;

    public Electricity(String voltage, String frequency, String[] plugs) {
        this.voltage = voltage;
        this.frequency = frequency;
        this.plugs = plugs;
    }

    public String getVoltage() {
        return voltage;
    }

    public void setVoltage(String voltage) {
        this.voltage = voltage;
    }

    public String getFrequency() {
        return frequency;
    }

    public void setFrequency(String frequency) {
        this.frequency = frequency;
    }

    public String[] getPlugs() {
        return plugs;
    }

    public void setPlugs(String[] plugs) {
        this.plugs = plugs;
    }

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this)
                .add("voltage", voltage)
                .add("frequency", frequency)
                .add("plugs", plugs)
                .toString();
    }
}
