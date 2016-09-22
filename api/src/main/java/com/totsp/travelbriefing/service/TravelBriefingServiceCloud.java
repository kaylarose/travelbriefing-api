package com.totsp.travelbriefing.service;

import com.totsp.travelbriefing.model.Country;
import com.totsp.travelbriefing.model.CountryListItem;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava.RxJavaCallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;
import rx.Observable;
import rx.functions.Action1;

import java.util.List;

/**
 * Created by cecollins on 6/29/16.
 */
class TravelBriefingServiceCloud implements TravelBriefingServiceInterface {

    public static final String HOST = "https://travelbriefing.org";

    private static final Retrofit RETROFIT = new Retrofit.Builder()
            .baseUrl(HOST)
            .addCallAdapterFactory(RxJavaCallAdapterFactory.create())
            .addConverterFactory(GsonConverterFactory.create())
            .build();

    private static final TravelBriefingServiceInterface SERVICE =
            RETROFIT.create(TravelBriefingServiceInterface.class);

    public TravelBriefingServiceCloud() {
        System.out.println("TravelBriefingServiceCloud created");
    }

    @Override
    public Observable<List<CountryListItem>> getCountries() {
        System.out.println("TravelBriefingServiceCloud getCountries");
        Observable<List<CountryListItem>> countries = SERVICE.getCountries();
        // pipe the stream to another observable to SAVE the item in the cache
        Observable<List<CountryListItem>> countriesWithSave = countries.doOnNext(new Action1<List<CountryListItem>>() {
            @Override
            public void call(List<CountryListItem> countryList) {
                System.out.println("   returning countryList from service, cache PUT");
                TravelBriefingServiceCache.cacheCountryList(countryList);
            }
        });
        return countriesWithSave;
    }

    @Override
    public Observable<Country> getCountry(final String countryName) {
        System.out.println("TravelBriefingServiceCloud getCountry:" + countryName);
        Observable<Country> country = SERVICE.getCountry(countryName);
        // pipe the stream to another observable to SAVE the item in the cache
        Observable<Country> countryWithSave = country.doOnNext(new Action1<Country>() {
            @Override
            public void call(Country country) {
                System.out.println("   returning country from service, cache PUT");
                TravelBriefingServiceCache.cacheCountry(countryName, country);
            }
        });
        return countryWithSave;
    }
}
