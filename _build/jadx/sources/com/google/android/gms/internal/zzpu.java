package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import android.support.v4.app.FragmentActivity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.TimeUnit;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzpu extends GoogleApiClient {
    private final UnsupportedOperationException tv;

    public zzpu(String str) {
        this.tv = new UnsupportedOperationException(str);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public ConnectionResult blockingConnect() {
        throw this.tv;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public ConnectionResult blockingConnect(long j, @NonNull TimeUnit timeUnit) {
        throw this.tv;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public PendingResult<Status> clearDefaultAccountAndReconnect() {
        throw this.tv;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void connect() {
        throw this.tv;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void disconnect() {
        throw this.tv;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        throw this.tv;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    @NonNull
    public ConnectionResult getConnectionResult(@NonNull Api<?> api) {
        throw this.tv;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean hasConnectedApi(@NonNull Api<?> api) {
        throw this.tv;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnected() {
        throw this.tv;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnecting() {
        throw this.tv;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnectionCallbacksRegistered(@NonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        throw this.tv;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnectionFailedListenerRegistered(@NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        throw this.tv;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void reconnect() {
        throw this.tv;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void registerConnectionCallbacks(@NonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        throw this.tv;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void registerConnectionFailedListener(@NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        throw this.tv;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void stopAutoManage(@NonNull FragmentActivity fragmentActivity) {
        throw this.tv;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void unregisterConnectionCallbacks(@NonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        throw this.tv;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void unregisterConnectionFailedListener(@NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        throw this.tv;
    }
}
