//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/package-info.java
//

/*!
 @brief <p>Rx Observables</p>
 <p>A library that enables subscribing to and composing asynchronous events and
 callbacks.
 </p>
 <p>The Observable/Observer interfaces and associated operators (in
 the .operations package) are inspired by and attempt to conform to the
 Reactive Rx library in Microsoft .Net.</p>
 <p>
 More information can be found at <a
 href="http://msdn.microsoft.com/en-us/data/gg577609">http://msdn.microsoft.com/en-us/data/gg577609</a>.
 </p>
 <p>Compared with the Microsoft implementation:
 <ul>
 <li>Observable == IObservable</li>
 <li>Observer == IObserver</li>
 <li>Subscription == IDisposable</li>
 <li>ObservableExtensions == Observable</li>
 </ul>
 </p>
 <p>Services which intend on exposing data asynchronously and wish
 to allow reactive processing and composition can implement the <code>rx.Observable</code> interface which then allows Observers to subscribe to them
 and receive events.</p>
 <p>Usage examples can be found on the <code>rx.Observable</code> and <code>rx.Subscriber</code> classes.</p>
 */
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RxPackage_info")
#ifdef RESTRICT_RxPackage_info
#define INCLUDE_ALL_RxPackage_info 0
#else
#define INCLUDE_ALL_RxPackage_info 1
#endif
#undef RESTRICT_RxPackage_info

#pragma pop_macro("INCLUDE_ALL_RxPackage_info")
