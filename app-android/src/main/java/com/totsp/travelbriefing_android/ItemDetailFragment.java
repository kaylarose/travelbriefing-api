package com.totsp.travelbriefing_android;

import android.os.Bundle;
import android.support.design.widget.CollapsingToolbarLayout;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.totsp.travelbriefing.model.Country;
import com.totsp.travelbriefing.service.TravelBriefingService;
import rx.Subscriber;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;


/**
 * A fragment representing a single Item detail screen.
 * This fragment is either contained in a {@link ItemListActivity}
 * in two-pane mode (on tablets) or a {@link ItemDetailActivity}
 * on handsets.
 */
public class ItemDetailFragment extends Fragment {

    public static final String ARG_ITEM_ID = "item_id";

    private static final String TAG = "TRAVELBRIEF";

    private ProgressBar progressBar;

    public ItemDetailFragment() {
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
            Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.item_detail, container, false);

        progressBar = (ProgressBar) rootView.findViewById(R.id.item_progress);

        if (getArguments().containsKey(ARG_ITEM_ID)) {
            String name = (getArguments().getString(ARG_ITEM_ID));
            loadData(name);

            /*
            Activity activity = this.getActivity();
            CollapsingToolbarLayout appBarLayout = (CollapsingToolbarLayout) activity.findViewById(R.id.toolbar_layout);
            if (appBarLayout != null) {
                appBarLayout.setTitle(mItem.getName());
            }
            */
        } else {
            log("name not present, nothing to load");
        }

        return rootView;
    }

    //
    // priv
    //

    private void updateView(Country country) {

        CollapsingToolbarLayout appBarLayout = (CollapsingToolbarLayout) getActivity().findViewById(R.id.toolbar_layout);
        TextView itemDetail = (TextView) getActivity().findViewById(R.id.item_detail);

        if (appBarLayout != null) {
            appBarLayout.setTitle(country.getName().getName());
        }

        if (itemDetail != null) {
            itemDetail.setText(country.getName().getName());
        }
    }

    private void loadData(String name) {

        log("*** loadData name:" + name);

        progressBar.setVisibility(View.VISIBLE);

        // TODO check is connected
        // TODO rxandroid dep?
        // TODO rxandroid pattern
        TravelBriefingService service = ((TravelBriefingApplication)getActivity().getApplication()).getService();
        Subscriber<Country> subscriber = new Subscriber<Country>() {
            @Override
            public void onCompleted() {
                log("subscriber onCompleted");
                progressBar.setVisibility(View.INVISIBLE);
            }

            @Override
            public void onError(Throwable e) {
                Log.e(TAG, "subscriber error", e);
                progressBar.setVisibility(View.INVISIBLE);
            }

            @Override
            public void onNext(Country country) {
                // setup views
                updateView(country);
            }
        };
        service.getCountry(name)
                .subscribeOn(Schedulers.newThread())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(subscriber);
    }

    private void log(String message) {
        Log.i(TAG, message);
    }
}
