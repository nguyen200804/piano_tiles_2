package com.google.pay.util;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class IabResult {
    private int mError;
    String mMessage;
    int mResponse;

    public IabResult(int error, int response, String message) {
        this(response, message);
        this.mError = error;
    }

    public IabResult(int response, String message) {
        this.mError = -1;
        this.mResponse = response;
        if (message == null || message.trim().length() == 0) {
            this.mMessage = IabHelper.getResponseDesc(response);
        } else {
            this.mMessage = message + " (response: " + IabHelper.getResponseDesc(response) + ")";
        }
    }

    public int getError() {
        int i = this.mError;
        this.mError = -1;
        return i;
    }

    public int getResponse() {
        return this.mResponse;
    }

    public String getMessage() {
        return this.mMessage;
    }

    public boolean isSuccess() {
        return this.mResponse == 0;
    }

    public boolean isFailure() {
        return !isSuccess();
    }

    public String toString() {
        return "IabResult: " + getMessage();
    }
}
