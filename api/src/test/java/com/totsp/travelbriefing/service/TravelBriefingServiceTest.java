package com.totsp.travelbriefing.service;

import com.totsp.travelbriefing.model.Country;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import rx.Observable;
import rx.observers.TestSubscriber;

import java.util.List;

/**
 * Created by cecollins on 6/29/16.
 */
public class TravelBriefingServiceTest {

    // NOTE this test is poorly behaved for a unit test and ACTUALLY calls the service! -- do not automate CI/CD this
    // TODO move to actual unit tests with mocks, and make functional tests separate

    private TravelBriefingService service;

    @Before
    public void setUp() {
        service = new TravelBriefingService();
    }

    @Test
    public void getCountryForReals() {

        Observable<Country> kenya = service.getCountry("Kenya");
        TestSubscriber<Country> testSubscriber = new TestSubscriber<>();
        kenya.subscribe(testSubscriber);
        List<Country> countries = testSubscriber.getOnNextEvents();
        Country kenyaCountry = countries.get(0);
        Assert.assertNotNull(kenyaCountry);
        Assert.assertEquals("KES", kenyaCountry.getCurrency().getCode());
        testSubscriber.unsubscribe();

        // call it again to make sure cache is operating as expected
        kenya = service.getCountry("Kenya");
        kenya.subscribe(testSubscriber);

        testSubscriber.assertCompleted();
    }

}