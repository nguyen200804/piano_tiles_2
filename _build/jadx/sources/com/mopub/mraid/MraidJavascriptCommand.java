package com.mopub.mraid;

import android.support.annotation.NonNull;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum MraidJavascriptCommand {
    CLOSE("close"),
    EXPAND("expand") { // from class: com.mopub.mraid.MraidJavascriptCommand.1
        @Override // com.mopub.mraid.MraidJavascriptCommand
        boolean a(@NonNull PlacementType placementType) {
            return placementType == PlacementType.INLINE;
        }
    },
    USE_CUSTOM_CLOSE("usecustomclose"),
    OPEN("open") { // from class: com.mopub.mraid.MraidJavascriptCommand.2
        @Override // com.mopub.mraid.MraidJavascriptCommand
        boolean a(@NonNull PlacementType placementType) {
            return true;
        }
    },
    RESIZE("resize") { // from class: com.mopub.mraid.MraidJavascriptCommand.3
        @Override // com.mopub.mraid.MraidJavascriptCommand
        boolean a(@NonNull PlacementType placementType) {
            return true;
        }
    },
    SET_ORIENTATION_PROPERTIES("setOrientationProperties"),
    PLAY_VIDEO("playVideo") { // from class: com.mopub.mraid.MraidJavascriptCommand.4
        @Override // com.mopub.mraid.MraidJavascriptCommand
        boolean a(@NonNull PlacementType placementType) {
            return placementType == PlacementType.INLINE;
        }
    },
    STORE_PICTURE("storePicture") { // from class: com.mopub.mraid.MraidJavascriptCommand.5
        @Override // com.mopub.mraid.MraidJavascriptCommand
        boolean a(@NonNull PlacementType placementType) {
            return true;
        }
    },
    CREATE_CALENDAR_EVENT("createCalendarEvent") { // from class: com.mopub.mraid.MraidJavascriptCommand.6
        @Override // com.mopub.mraid.MraidJavascriptCommand
        boolean a(@NonNull PlacementType placementType) {
            return true;
        }
    },
    UNSPECIFIED("");


    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final String f4559a;

    MraidJavascriptCommand(String javascriptString) {
        this.f4559a = javascriptString;
    }

    static MraidJavascriptCommand a(@NonNull String str) {
        for (MraidJavascriptCommand mraidJavascriptCommand : values()) {
            if (mraidJavascriptCommand.f4559a.equals(str)) {
                return mraidJavascriptCommand;
            }
        }
        return UNSPECIFIED;
    }

    String a() {
        return this.f4559a;
    }

    boolean a(@NonNull PlacementType placementType) {
        return false;
    }
}
