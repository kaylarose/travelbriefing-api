package com.totsp.travelbriefing.model;

/**
 * Created by cecollins on 6/28/16.
 */
public class Vaccination {

    private String name;
    private String message;

    public Vaccination(String name, String message) {
        this.name = name;
        this.message = message;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String toString() {
        return com.google.common.base.MoreObjects.toStringHelper(this)
                .add("name", name)
                .add("message", message)
                .toString();
    }
}
