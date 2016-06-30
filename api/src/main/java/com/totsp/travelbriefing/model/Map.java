package com.totsp.travelbriefing.model;

import com.google.common.base.MoreObjects;
import com.google.gson.annotations.SerializedName;

/**
 * Created by cecollins on 6/28/16.
 */
public class Map {

    private String lat;
    @SerializedName("long")
    private String lng;
    private String zoom;

    public Map(String lat, String lng, String zoom) {
        this.lat = lat;
        this.lng = lng;
        this.zoom = zoom;
    }

    public String getLat() {
        return lat;
    }

    public void setLat(String lat) {
        this.lat = lat;
    }

    public String getLng() {
        return lng;
    }

    public void setLng(String lng) {
        this.lng = lng;
    }

    public String getZoom() {
        return zoom;
    }

    public void setZoom(String zoom) {
        this.zoom = zoom;
    }

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this)
                .add("lat", lat)
                .add("lng", lng)
                .add("zoom", zoom)
                .toString();
    }
}
