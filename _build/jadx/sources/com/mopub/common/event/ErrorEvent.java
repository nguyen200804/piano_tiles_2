package com.mopub.common.event;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.event.BaseEvent;
import java.io.PrintWriter;
import java.io.StringWriter;
import org.apache.commons.io.IOUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ErrorEvent extends BaseEvent {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private final String f4205a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final String f4206b;

    @Nullable
    private final String c;

    @Nullable
    private final String d;

    @Nullable
    private final String e;

    @Nullable
    private final String f;

    @Nullable
    private final Integer g;

    private ErrorEvent(@NonNull Builder builder) {
        super(builder);
        this.f4205a = builder.f4207a;
        this.f4206b = builder.f4208b;
        this.c = builder.c;
        this.d = builder.d;
        this.e = builder.e;
        this.f = builder.f;
        this.g = builder.g;
    }

    @Nullable
    public String getErrorExceptionClassName() {
        return this.f4205a;
    }

    @Nullable
    public String getErrorMessage() {
        return this.f4206b;
    }

    @Nullable
    public String getErrorStackTrace() {
        return this.c;
    }

    @Nullable
    public String getErrorFileName() {
        return this.d;
    }

    @Nullable
    public String getErrorClassName() {
        return this.e;
    }

    @Nullable
    public String getErrorMethodName() {
        return this.f;
    }

    @Nullable
    public Integer getErrorLineNumber() {
        return this.g;
    }

    @Override // com.mopub.common.event.BaseEvent
    public String toString() {
        return super.toString() + "ErrorEvent\nErrorExceptionClassName: " + getErrorExceptionClassName() + IOUtils.LINE_SEPARATOR_UNIX + "ErrorMessage: " + getErrorMessage() + IOUtils.LINE_SEPARATOR_UNIX + "ErrorStackTrace: " + getErrorStackTrace() + IOUtils.LINE_SEPARATOR_UNIX + "ErrorFileName: " + getErrorFileName() + IOUtils.LINE_SEPARATOR_UNIX + "ErrorClassName: " + getErrorClassName() + IOUtils.LINE_SEPARATOR_UNIX + "ErrorMethodName: " + getErrorMethodName() + IOUtils.LINE_SEPARATOR_UNIX + "ErrorLineNumber: " + getErrorLineNumber() + IOUtils.LINE_SEPARATOR_UNIX;
    }

    public static class Builder extends BaseEvent.Builder {

        /* renamed from: a, reason: collision with root package name */
        @Nullable
        private String f4207a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        private String f4208b;

        @Nullable
        private String c;

        @Nullable
        private String d;

        @Nullable
        private String e;

        @Nullable
        private String f;

        @Nullable
        private Integer g;

        public Builder(@NonNull BaseEvent.Name name, @NonNull BaseEvent.Category category, double samplingRate) {
            super(BaseEvent.ScribeCategory.EXCHANGE_CLIENT_ERROR, name, category, samplingRate);
        }

        @NonNull
        public Builder withErrorExceptionClassName(@Nullable String errorExceptionClassName) {
            this.f4207a = errorExceptionClassName;
            return this;
        }

        @NonNull
        public Builder withErrorMessage(@Nullable String errorMessage) {
            this.f4208b = errorMessage;
            return this;
        }

        @NonNull
        public Builder withErrorStackTrace(@Nullable String errorStackTrace) {
            this.c = errorStackTrace;
            return this;
        }

        @NonNull
        public Builder withErrorFileName(@Nullable String errorFileName) {
            this.d = errorFileName;
            return this;
        }

        @NonNull
        public Builder withErrorClassName(@Nullable String errorClassName) {
            this.e = errorClassName;
            return this;
        }

        @NonNull
        public Builder withErrorMethodName(@Nullable String errorMethodName) {
            this.f = errorMethodName;
            return this;
        }

        @NonNull
        public Builder withErrorLineNumber(@Nullable Integer errorLineNumber) {
            this.g = errorLineNumber;
            return this;
        }

        @NonNull
        public Builder withException(@Nullable Exception exception) {
            this.f4207a = exception.getClass().getName();
            this.f4208b = exception.getMessage();
            StringWriter stringWriter = new StringWriter();
            exception.printStackTrace(new PrintWriter(stringWriter));
            this.c = stringWriter.toString();
            if (exception.getStackTrace().length > 0) {
                this.d = exception.getStackTrace()[0].getFileName();
                this.e = exception.getStackTrace()[0].getClassName();
                this.f = exception.getStackTrace()[0].getMethodName();
                this.g = Integer.valueOf(exception.getStackTrace()[0].getLineNumber());
            }
            return this;
        }

        @Override // com.mopub.common.event.BaseEvent.Builder
        @NonNull
        public ErrorEvent build() {
            return new ErrorEvent(this);
        }
    }
}
