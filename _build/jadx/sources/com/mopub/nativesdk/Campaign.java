package com.mopub.nativesdk;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Campaign implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    private long f4581a;

    /* renamed from: b, reason: collision with root package name */
    private String f4582b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private double h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;
    private String n;
    private String o;
    private long p;
    private List<String> q;
    private String r;
    private int s;
    private String t;
    private String u;
    private String v;
    private int w;
    private List<PermissionItem> x;
    private List<CategoryItem> y;

    public long getId() {
        return this.f4581a;
    }

    public void setId(long j) {
        this.f4581a = j;
    }

    public String getClickUrl() {
        return this.f4582b;
    }

    public void setClickUrl(String str) {
        this.f4582b = str;
    }

    public String getPackageName() {
        return this.d;
    }

    public void setPackageName(String str) {
        this.d = str;
    }

    public String getIconUrl() {
        return this.e;
    }

    public void setIconUrl(String str) {
        this.e = str;
    }

    public String getAppName() {
        return this.f;
    }

    public void setAppName(String str) {
        this.f = str;
    }

    public String getAppDesc() {
        return this.g;
    }

    public void setAppDesc(String str) {
        this.g = str;
    }

    public double getAppScore() {
        return this.h;
    }

    public void setAppScore(double d) {
        this.h = d;
    }

    public String getImageUrl() {
        return this.k;
    }

    public void setImageUrl(String str) {
        this.k = str;
    }

    public String getImageSize() {
        return this.l;
    }

    public void setImageSize(String str) {
        this.l = str;
    }

    public String getDataUrl() {
        return this.m;
    }

    public void setDataUrl(String str) {
        this.m = str;
    }

    public String getImpressionUrl() {
        return this.c;
    }

    public void setImpressionUrl(String str) {
        this.c = str;
    }

    public String getFileMD5() {
        return this.n;
    }

    public void setFileMD5(String str) {
        this.n = str;
    }

    public String getFileSizeText() {
        return this.o;
    }

    public void setFileSizeText(String str) {
        this.o = str;
    }

    public long getFileSizeLong() {
        return this.p;
    }

    public void setFileSizeLong(long j) {
        this.p = j;
    }

    public List<String> getScreenShot() {
        return this.q;
    }

    public String getAppCategoryID() {
        return this.j;
    }

    public void setAppCategoryID(String str) {
        this.j = str;
    }

    public void setScreenShot(List<String> list) {
        this.q = list;
    }

    public void setScreenShot(String str) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            this.q = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                this.q.add(jSONArray.optString(i));
            }
        } catch (Exception e) {
        }
    }

    public String getVersionName() {
        return this.r;
    }

    public void setVersionName(String str) {
        this.r = str;
    }

    public int getVersionCode() {
        return this.s;
    }

    public void setVersionCode(int i) {
        this.s = i;
    }

    public String getDownloadNum() {
        return this.t;
    }

    public void setDownloadNum(String str) {
        this.t = str;
    }

    public String getAppCategory() {
        return this.i;
    }

    public void setAppCategory(String str) {
        this.i = str;
    }

    public String getDeveloper() {
        return this.u;
    }

    public void setDeveloper(String str) {
        this.u = str;
    }

    public int getPermissionsNum() {
        return this.w;
    }

    public void setPermissionsNum(int i) {
        this.w = i;
    }

    public List<PermissionItem> getPermissionList() {
        return this.x;
    }

    public void setPermissionList(List<PermissionItem> list) {
        this.x = list;
    }

    public String getCategoryIconURL() {
        return this.v;
    }

    public void setCategoryIconURL(String str) {
        this.v = str;
    }

    public List<CategoryItem> getCategoryList() {
        return this.y;
    }

    public void setCategoryList(List<CategoryItem> list) {
        this.y = list;
    }
}
