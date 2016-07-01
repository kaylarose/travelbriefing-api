package com.totsp.travelbriefing_android;

import android.app.Application;
import com.totsp.travelbriefing.service.TravelBriefingService;

/**
 * Created by cecollins on 7/1/16.
 */
public class TravelBriefingApplication extends Application {

    // don't make this a religious thing, I like Application object for the framework mgmt and implied lifecyecle
    // (I know it' a singleton too)

    private TravelBriefingService service;

   @Override
    public void onCreate() {
       super.onCreate();
       this.service = new TravelBriefingService();
    }

    @Override
    public void unregisterActivityLifecycleCallbacks(ActivityLifecycleCallbacks callback) {
        super.unregisterActivityLifecycleCallbacks(callback);
    }

    @Override
    public void registerActivityLifecycleCallbacks(ActivityLifecycleCallbacks callback) {
        super.registerActivityLifecycleCallbacks(callback);
    }

    public TravelBriefingService getService() {
        return service;
    }
}
