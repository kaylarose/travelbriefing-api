package com.totsp.travelbriefing.service;

import com.totsp.travelbriefing.model.Country;
import com.totsp.travelbriefing.model.Name;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava.RxJavaCallAdapterFactory;
import retrofit2.http.Path;
import retrofit2.mock.BehaviorDelegate;
import retrofit2.mock.MockRetrofit;
import retrofit2.mock.NetworkBehavior;
import rx.Observable;
import rx.observers.TestSubscriber;

import java.util.List;

/**
 * Created by cecollins on 6/29/16.
 */
public class TravelBriefingServiceCloudMockTest {

    private TravelBriefingServiceInterface mockService;

    public class MockService implements TravelBriefingServiceInterface {
        private final BehaviorDelegate<TravelBriefingServiceInterface> delegate;

        public MockService(BehaviorDelegate<TravelBriefingServiceInterface> delegate) {
            this.delegate = delegate;
        }

        @Override
        public Observable<List<Country>> getCountries() {
            return Observable.empty();
        }

        @Override
        public Observable<Country> getCountry(@Path("country") String countryName) {
            Name name = new Name("Kenya", null, null, null, null);
            Country country = new Country(name, null, null, null, null, null, null, null, null, null);
            return delegate.returningResponse(country).getCountry(countryName);
        }
    }

    @Before
    public void setUp() throws Exception {
        Retrofit retrofit = new Retrofit.Builder()
                .addCallAdapterFactory(RxJavaCallAdapterFactory.create())
                .baseUrl(TravelBriefingServiceCloud.HOST).build();

        NetworkBehavior networkBehavior = NetworkBehavior.create();
        MockRetrofit mockRetrofit = new MockRetrofit.Builder(retrofit)
                .networkBehavior(networkBehavior).build();

        final BehaviorDelegate<TravelBriefingServiceInterface> delegate = mockRetrofit.create(TravelBriefingServiceInterface.class);

        mockService = new MockService(delegate);
    }

    @Test
    public void getCountry() {
        Observable<Country> kenya = mockService.getCountry("Kenya");
        TestSubscriber<Country> testSubscriber = new TestSubscriber<>();
        kenya.subscribe(testSubscriber);
        List<Country> countries = testSubscriber.getOnNextEvents();
        Country kenyaCountry = countries.get(0);
        Assert.assertNotNull(kenyaCountry);
        Assert.assertEquals("Kenya", kenyaCountry.getName().getName());


        testSubscriber.unsubscribe();

    }

}