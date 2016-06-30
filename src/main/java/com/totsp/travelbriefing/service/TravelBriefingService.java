package com.totsp.travelbriefing.service;

import com.totsp.travelbriefing.model.Country;
import rx.Observable;

import java.util.List;

/**
 * Created by cecollins on 6/29/16.
 */
public class TravelBriefingService implements TravelBriefingServiceInterface {

    private final TravelBriefingServiceCache travelBriefingServiceCache;
    private final TravelBriefingServiceCloud travelBriefingServiceCloud;

    public TravelBriefingService() {
        travelBriefingServiceCache = new TravelBriefingServiceCache();
        travelBriefingServiceCloud = new TravelBriefingServiceCloud();
        System.out.println("TravelBriefingService created");
    }

    @Override
    public Observable<List<Country>> getCountries() {
        System.out.println("TravelBriefingService getCountries");
        return travelBriefingServiceCloud.getCountries();
    }

    @Override
    public Observable<Country> getCountry(final String countryName) {
        System.out.println("TravelBriefingService getCountry:" + countryName);
        Observable<Country> cachedData = travelBriefingServiceCache.getCountry(countryName);
        Observable<Country> netData = travelBriefingServiceCloud.getCountry(countryName);

        // combine concat and first (in order, only first first will be returned, so cache has precedence)
        return Observable.concat(cachedData, netData).first();
    }
}
