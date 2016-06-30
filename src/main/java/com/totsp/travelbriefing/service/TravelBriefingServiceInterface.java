package com.totsp.travelbriefing.service;


import com.totsp.travelbriefing.model.Country;
import retrofit2.http.GET;
import retrofit2.http.Path;
import rx.Observable;
import java.util.List;

/**
 * Created by cecollins on 6/29/16.
 *
 *
 */
public interface TravelBriefingServiceInterface {

    @GET("/countries.json")
    Observable<List<Country>> getCountries();

    @GET("{country}?format=json")
    Observable<Country> getCountry(@Path("country") final String countryName);

}
