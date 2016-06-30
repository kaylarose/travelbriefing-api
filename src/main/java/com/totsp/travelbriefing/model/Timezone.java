package com.totsp.travelbriefing.model;

import com.google.common.base.MoreObjects;

/**
 * Created by cecollins on 6/28/16.
 */
public class Timezone {

    private String name;

    public Timezone(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this)
                .add("name", name)
                .toString();
    }
}
