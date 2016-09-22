package com.totsp.travelbriefing.model;

import com.google.common.base.MoreObjects;

/**
 * Created by cecollins on 6/29/16.
 */
public class Advisory {

    private String advise;
    private String url;

    public Advisory(String advise, String url) {
        this.advise = advise;
        this.url = url;
    }

    public String getAdvise() {
        return advise;
    }

    public void setAdvise(String advise) {
        this.advise = advise;
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
                .add("advise", advise + "\n")
                .add("url", url + "\n")
                .toString();
    }
}
