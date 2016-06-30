package com.totsp.travelbriefing.model;

import com.google.common.base.MoreObjects;
import com.google.gson.annotations.SerializedName;

/**
 * Created by cecollins on 6/29/16.
 */
public class Water {

    @SerializedName("short")
    private String shrt;
    private String full;

    public Water(String shrt, String full) {
        this.full = full;
        this.shrt = shrt;
    }

    public String getShrt() {
        return shrt;
    }

    public void setShrt(String shrt) {
        this.shrt = shrt;
    }

    public String getFull() {
        return full;
    }

    public void setFull(String full) {
        this.full = full;
    }

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this)
                .add("shrt", shrt + "\n")
                .add("full", full + "\n")
                .toString();
    }
}


