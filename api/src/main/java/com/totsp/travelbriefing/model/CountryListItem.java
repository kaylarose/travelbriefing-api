package com.totsp.travelbriefing.model;

import com.google.common.base.MoreObjects;

/**
 * Created by cecollins on 7/1/16.
 */
public class CountryListItem {

    private String name;
    private String url;

    public CountryListItem(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this)
                .add("name", name + "\n")
                .add("url", url + "\n")
                .toString();
    }
}
