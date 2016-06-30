package com.totsp.travelbriefing.model;

import com.google.common.base.MoreObjects;

/**
 * Created by cecollins on 6/28/16.
 */
public class Language {

    private String language;
    private String official;

    public Language(String language, String official) {
        this.language = language;
        this.official = official;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getOfficial() {
        return official;
    }

    public void setOfficial(String official) {
        this.official = official;
    }

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this)
                .add("language", language)
                .add("official", official)
                .toString();
    }
}
