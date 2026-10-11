package com.cmcm.dmc.sdk.e;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class m implements com.cmcm.dmc.sdk.a.p {

    /* renamed from: a, reason: collision with root package name */
    private HashMap<String, b> f747a;

    /* renamed from: b, reason: collision with root package name */
    private List<String> f748b;
    private Set<String> c;
    private BroadcastReceiver d;
    private ArrayList<String> e;

    /* JADX INFO: Access modifiers changed from: private */
    public b a(String str) {
        try {
            if (this.f747a == null) {
                return null;
            }
            b bVar = this.f747a.get(str);
            if (bVar != null) {
                if (bVar.e()) {
                    return bVar;
                }
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(Set<String> set) {
        com.cmcm.dmc.sdk.a.a aVar;
        FileOutputStream fileOutputStream = null;
        synchronized (this) {
            try {
                aVar = new com.cmcm.dmc.sdk.a.a(new File(com.cmcm.dmc.sdk.a.c.e(), "receiver_history_list.dat"));
            } catch (Throwable th) {
                th = th;
                aVar = null;
            }
            try {
                fileOutputStream = aVar.b();
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(fileOutputStream);
                objectOutputStream.writeInt(set.size());
                Iterator<String> it = set.iterator();
                while (it.hasNext()) {
                    objectOutputStream.writeUTF(it.next());
                }
                objectOutputStream.flush();
                aVar.a(fileOutputStream);
            } catch (Throwable th2) {
                th = th2;
                com.cmcm.dmc.sdk.a.i.a("ReceiverManager", "failed to writePackage" + th.getMessage());
                if (aVar != null) {
                    aVar.b(fileOutputStream);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean b(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmcm.dmc.sdk.e.m.b(java.lang.String):boolean");
    }

    private void c() {
        try {
            com.cmcm.dmc.sdk.a.d a2 = com.cmcm.dmc.sdk.a.d.a();
            if (a2.a("action_flow")) {
                d.a().a(true);
            } else {
                d.a().a(false);
            }
            this.e = new ArrayList<>();
            for (b bVar : this.f747a.values()) {
                String f = bVar.f();
                if (a2.a(f) && b(f)) {
                    bVar.a(true);
                    this.e.add(f);
                } else {
                    bVar.a(false);
                }
                com.cmcm.dmc.sdk.g.j.a().a(this.e);
            }
        } catch (Exception e) {
        }
    }

    private boolean c(String str) {
        return com.cmcm.dmc.sdk.a.c.c().getPackageManager().checkPermission(str, com.cmcm.dmc.sdk.a.c.c().getPackageName()) == 0;
    }

    private Set<String> d() {
        FileInputStream fileInputStream;
        try {
            fileInputStream = new com.cmcm.dmc.sdk.a.a(new File(com.cmcm.dmc.sdk.a.c.e(), "receiver_history_list.dat")).c();
            try {
                ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);
                int readInt = objectInputStream.readInt();
                if (readInt > 0) {
                    HashSet hashSet = new HashSet(readInt);
                    for (int i = 0; i < readInt; i++) {
                        hashSet.add(objectInputStream.readUTF());
                    }
                    return hashSet;
                }
            } catch (Exception e) {
                e = e;
                com.cmcm.dmc.sdk.a.i.a("ReceiverManager", "failed to readPackage" + e.getMessage());
                com.cmcm.dmc.sdk.a.q.a(fileInputStream);
                return null;
            }
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
        }
        return null;
    }

    private void e() {
        try {
            List<PackageInfo> installedPackages = com.cmcm.dmc.sdk.a.c.c().getPackageManager().getInstalledPackages(0);
            com.cmcm.dmc.sdk.a.k a2 = com.cmcm.dmc.sdk.a.k.a();
            long c = a2.c("last_app_install_list_time");
            long currentTimeMillis = System.currentTimeMillis();
            if (c == 0 || currentTimeMillis - c > 604800000) {
                a2.c().putLong("last_app_install_list_time", currentTimeMillis).commit();
                PackageManager packageManager = com.cmcm.dmc.sdk.a.c.c().getPackageManager();
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < installedPackages.size(); i++) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("packageName", installedPackages.get(i).packageName);
                    jSONObject.put("isSystemApp", (installedPackages.get(i).applicationInfo.flags & 1) != 0);
                    jSONObject.put("versionCode", installedPackages.get(i).versionCode);
                    jSONObject.put("versionName", installedPackages.get(i).versionName);
                    jSONObject.put("appSource", TextUtils.isEmpty(packageManager.getInstallerPackageName(installedPackages.get(i).packageName)) ? "" : packageManager.getInstallerPackageName(installedPackages.get(i).packageName));
                    jSONObject.put("installDate", installedPackages.get(i).firstInstallTime / 1000);
                    arrayList.add(jSONObject);
                }
                if (arrayList.size() > 0) {
                    com.cmcm.dmc.sdk.g.j.a().a(10, "inst_app_list2", arrayList.toString());
                }
            }
            this.c = new HashSet(installedPackages.size());
            Iterator<PackageInfo> it = installedPackages.iterator();
            while (it.hasNext()) {
                this.c.add(it.next().packageName);
            }
            Set<String> d = d();
            if (d == null || d.isEmpty()) {
                a(this.c);
                return;
            }
            LinkedList linkedList = new LinkedList();
            for (PackageInfo packageInfo : installedPackages) {
                if (!d.remove(packageInfo.packageName)) {
                    linkedList.add(packageInfo.packageName);
                }
            }
            if (d.isEmpty() && linkedList.isEmpty()) {
                return;
            }
            b a3 = a("inst_app");
            b a4 = a("uninst_app");
            if ((a3 != null && a3.e()) || (a4 != null && a4.e())) {
                if (a3 != null && a3.e()) {
                    Iterator it2 = linkedList.iterator();
                    while (it2.hasNext()) {
                        String c2 = j.c((String) it2.next());
                        if (c2 != null) {
                            com.cmcm.dmc.sdk.g.j.a().a(10, "inst_app2", c2);
                        }
                    }
                }
                if (a4 != null && a4.e()) {
                    Iterator<String> it3 = d.iterator();
                    while (it3.hasNext()) {
                        String c3 = r.c(it3.next());
                        if (c3 != null) {
                            com.cmcm.dmc.sdk.g.j.a().a(10, "uninst_app2", c3);
                        }
                    }
                }
            }
            a(this.c);
        } catch (Exception e) {
            com.cmcm.dmc.sdk.a.i.a("ReceiverManager", "failed to processPackage" + e.getMessage());
        }
    }

    @Override // com.cmcm.dmc.sdk.a.p
    public void a() {
        try {
            c();
            Iterator<b> it = this.f747a.values().iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        } catch (Exception e) {
        }
    }

    public void b() {
        try {
            com.cmcm.dmc.sdk.a.i.a("ReceiverManager", "init()");
            this.f748b = com.cmcm.dmc.sdk.a.q.k(com.cmcm.dmc.sdk.a.c.c());
            HashMap<String, b> hashMap = new HashMap<>();
            try {
                for (String str : h.f737a.keySet()) {
                    com.cmcm.dmc.sdk.a.i.a("ReceiverManager", "registerReceiver #" + str + "#");
                    hashMap.put(str, (b) ((Class) h.f737a.get(str)).newInstance());
                }
            } catch (Exception e) {
                com.cmcm.dmc.sdk.a.i.a("ReceiverManager", "failed to create receiver : " + e.getMessage());
            }
            this.f747a = hashMap;
            c();
            com.cmcm.dmc.sdk.a.c.a((com.cmcm.dmc.sdk.a.p) this);
            e();
            this.d = new BroadcastReceiver() { // from class: com.cmcm.dmc.sdk.e.m.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, final Intent intent) {
                    try {
                        com.cmcm.dmc.sdk.a.c.d().post(new Runnable() { // from class: com.cmcm.dmc.sdk.e.m.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (intent.getBooleanExtra("android.intent.extra.REPLACING", false)) {
                                    return;
                                }
                                String action = intent.getAction();
                                String substring = intent.getDataString().substring(8);
                                if (m.this.c != null) {
                                    if (action.equals("android.intent.action.PACKAGE_ADDED")) {
                                        if (m.this.c.contains(substring)) {
                                            return;
                                        }
                                        m.this.c.add(substring);
                                        m.this.a((Set<String>) m.this.c);
                                        j jVar = (j) m.this.a("inst_app");
                                        if (jVar == null || !jVar.e()) {
                                            return;
                                        }
                                        jVar.b(substring);
                                        return;
                                    }
                                    if (m.this.c.contains(substring)) {
                                        m.this.c.remove(substring);
                                        m.this.a((Set<String>) m.this.c);
                                        r rVar = (r) m.this.a("uninst_app");
                                        if (rVar == null || !rVar.e()) {
                                            return;
                                        }
                                        rVar.b(substring);
                                    }
                                }
                            }
                        });
                    } catch (Exception e2) {
                    }
                }
            };
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
            intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
            intentFilter.addDataScheme("package");
            com.cmcm.dmc.sdk.a.c.a(this.d, intentFilter);
            com.cmcm.dmc.sdk.b.a.a().b();
        } catch (Exception e2) {
        }
    }
}
