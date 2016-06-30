package com.totsp.travelbriefing.service;

import com.google.common.cache.Cache;
import com.google.common.cache.CacheBuilder;
import com.totsp.travelbriefing.model.Country;
import rx.Observable;

import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 * Created by cecollins on 6/29/16.
 */
class TravelBriefingServiceCache implements TravelBriefingServiceInterface {

    // TODO allow cache to be configured
    // TODO overflow from mem to disk, etc
    public static final Cache<String, Country> CACHE = CacheBuilder.newBuilder()
            .maximumSize(100)
            .recordStats()
            .expireAfterWrite(1, TimeUnit.MINUTES)
            .build();

    public TravelBriefingServiceCache() {
        System.out.println("TravelBriefingServiceCache created");
    }

    @Override
    public Observable<List<Country>> getCountries() {
        System.out.println("TravelBriefingServiceCache getCountries");
        return Observable.empty();
    }

    @Override
    public Observable<Country> getCountry(final String countryName) {
        System.out.println("TravelBriefingServiceCache getCountry:" + countryName);
        Country country = CACHE.getIfPresent(countryName);
        if (country != null) {
            System.out.println("   CACHE HIT");
            return Observable.just(country);
        }
        return Observable.empty();
    }
}
