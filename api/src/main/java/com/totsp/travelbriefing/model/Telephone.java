package com.totsp.travelbriefing.model;

import com.google.common.base.MoreObjects;

/**
 * Created by cecollins on 6/29/16.
 */
public class Telephone {

    private String callingCode;
    private String police;
    private String ambulance;
    private String fire;

    public Telephone(String callingCode, String police, String ambulance, String fire) {
        this.callingCode = callingCode;
        this.police = police;
        this.ambulance = ambulance;
        this.fire = fire;
    }

    public String getCallingCode() {
        return callingCode;
    }

    public void setCallingCode(String callingCode) {
        this.callingCode = callingCode;
    }

    public String getPolice() {
        return police;
    }

    public void setPolice(String police) {
        this.police = police;
    }

    public String getAmbulance() {
        return ambulance;
    }

    public void setAmbulance(String ambulance) {
        this.ambulance = ambulance;
    }

    public String getFire() {
        return fire;
    }

    public void setFire(String fire) {
        this.fire = fire;
    }

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this)
                .add("callingCode", callingCode + "\n")
                .add("police", police + "\n")
                .add("ambulance", ambulance + "\n")
                .add("fire", fire + "\n")
                .toString();
    }
}
