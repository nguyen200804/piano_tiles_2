package com.cmplay.h;

import com.tencent.mm.sdk.constants.ConstantsAPI;

/* compiled from: EPlatform.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum a {
    Facebook("com.facebook.katana", "com.facebook.composer.shareintent.ImplicitShareIntentHandlerDefaultAlias"),
    Twitter("com.twitter.android", "com.twitter.android.composer.ComposerActivity"),
    Messenger("com.facebook.orca", null),
    QQ("com.tencent.mobileqq", "com.tencent.mobileqq.activity.JumpActivity"),
    QQZone("com.qzone", "com.qzonex.module.operation.ui.QZonePublishMoodActivity"),
    WeChat(ConstantsAPI.WXApp.WXAPP_PACKAGE_NAME, "com.tencent.mm.ui.tools.ShareImgUI"),
    QQWechatMoment(ConstantsAPI.WXApp.WXAPP_PACKAGE_NAME, "com.tencent.mm.ui.tools.ShareToTimeLineUI");

    private String h;
    private String i;

    a(String str, String str2) {
        this.h = str;
        this.i = str2;
    }

    public String a() {
        return this.h;
    }

    public String b() {
        return this.i;
    }
}
