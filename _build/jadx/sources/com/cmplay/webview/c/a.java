package com.cmplay.webview.c;

import android.content.Context;
import android.content.res.AssetManager;
import android.media.SoundPool;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.util.Log;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* compiled from: SoundManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static a f1928a = null;

    /* renamed from: b, reason: collision with root package name */
    private SoundPool f1929b;
    private boolean c = false;
    private Map<String, Integer> d = new HashMap();
    private Map<Integer, Boolean> e = new HashMap();
    private int f = 0;
    private int g = 0;
    private int h = 0;
    private Timer i;
    private long j;

    /* compiled from: SoundManager.java */
    /* renamed from: com.cmplay.webview.c.a$a, reason: collision with other inner class name */
    public interface InterfaceC0055a {
        void a(int i);
    }

    static /* synthetic */ int b(a aVar) {
        int i = aVar.g;
        aVar.g = i + 1;
        return i;
    }

    static /* synthetic */ int c(a aVar) {
        int i = aVar.h;
        aVar.h = i + 1;
        return i;
    }

    private a() {
    }

    public static synchronized a a() {
        a aVar;
        synchronized (a.class) {
            if (f1928a == null) {
                f1928a = new a();
            }
            aVar = f1928a;
        }
        return aVar;
    }

    public void a(final Context context, final String[] strArr, final InterfaceC0055a interfaceC0055a) {
        synchronized (this) {
            this.c = false;
        }
        if (this.i == null) {
            this.i = new Timer();
        }
        new Thread(new Runnable() { // from class: com.cmplay.webview.c.a.1
            @Override // java.lang.Runnable
            public void run() {
                a.this.j = System.currentTimeMillis();
                if (strArr == null || strArr.length < 1) {
                    a.this.a(context, interfaceC0055a);
                } else {
                    a.this.b(context, strArr, interfaceC0055a);
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context, String[] strArr, InterfaceC0055a interfaceC0055a) {
        if ((strArr == null || strArr.length < 1 || this.c) && interfaceC0055a != null) {
            interfaceC0055a.a(0);
            return;
        }
        this.f = strArr.length;
        this.h = 0;
        this.g = 0;
        if (this.f1929b == null) {
            this.f1929b = new SoundPool(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION, 3, 0);
            this.f1929b.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: com.cmplay.webview.c.a.2
                @Override // android.media.SoundPool.OnLoadCompleteListener
                public void onLoadComplete(SoundPool soundPool, int sampleId, int status) {
                    if (status == 0) {
                        a.this.e.put(Integer.valueOf(sampleId), true);
                        a.b(a.this);
                    } else {
                        a.c(a.this);
                    }
                    if (a.this.g + a.this.h >= a.this.f) {
                        synchronized (a.this) {
                            a.this.c = true;
                            a.this.notifyAll();
                        }
                    }
                }
            });
        }
        AssetManager assets = context.getAssets();
        try {
            for (String str : strArr) {
                String[] split = str.split(":");
                if (split != null && split.length >= 2) {
                    String str2 = "res/music/" + split[0] + "/" + split[1] + ".mp3";
                    int a2 = a(assets, str2);
                    Log.d("mys", "load " + str2 + ", soundId = " + a2);
                    if (a2 != -1) {
                        this.d.put(str, Integer.valueOf(a2));
                    } else {
                        this.h++;
                    }
                }
            }
            if (this.d.size() > 0) {
                synchronized (this) {
                    b();
                    Log.d("mys", "load sound total time = " + (System.currentTimeMillis() - this.j));
                    if (interfaceC0055a != null) {
                        interfaceC0055a.a(this.g);
                    }
                }
            }
        } finally {
            assets.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, InterfaceC0055a interfaceC0055a) {
        String[] strArr;
        if (!this.c) {
            if (this.f1929b == null) {
                this.f1929b = new SoundPool(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION, 3, 0);
                this.f1929b.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: com.cmplay.webview.c.a.3
                    @Override // android.media.SoundPool.OnLoadCompleteListener
                    public void onLoadComplete(SoundPool soundPool, int sampleId, int status) {
                        if (status == 0) {
                            a.this.e.put(Integer.valueOf(sampleId), true);
                            a.b(a.this);
                        } else {
                            a.c(a.this);
                        }
                        if (a.this.g + a.this.h >= a.this.f) {
                            synchronized (a.this) {
                                a.this.c = true;
                                a.this.notifyAll();
                            }
                        }
                    }
                });
            }
            AssetManager assets = context.getAssets();
            try {
                this.f = a(assets);
                this.h = 0;
                this.g = 0;
                Log.d("mys", "Total sound count = " + this.f);
                try {
                    strArr = assets.list("res/music");
                } catch (IOException e) {
                    strArr = null;
                }
                if (strArr != null && strArr.length > 0) {
                    for (String str : strArr) {
                        try {
                            String str2 = "res/music/" + str;
                            String[] list = assets.list(str2);
                            if (list != null && list.length >= 1) {
                                for (String str3 : list) {
                                    int a2 = a(assets, str2 + "/" + str3 + ".mp3");
                                    if (a2 != -1) {
                                        this.d.put(str + ":" + str3, Integer.valueOf(a2));
                                    } else {
                                        this.h++;
                                    }
                                }
                            }
                        } catch (IOException e2) {
                        }
                    }
                }
                if (this.d.size() > 0) {
                    synchronized (this) {
                        b();
                        Log.d("mys", "load sound total time = " + (System.currentTimeMillis() - this.j));
                        if (interfaceC0055a != null) {
                            interfaceC0055a.a(this.g);
                        }
                    }
                }
            } finally {
                assets.close();
            }
        }
    }

    private int a(AssetManager assetManager) {
        int i = 0;
        try {
            String[] list = assetManager.list("res/music");
            if (list != null && list.length >= 1) {
                for (String str : list) {
                    String[] list2 = assetManager.list("res/music/" + str);
                    if (list2 != null && list2.length >= 1) {
                        i += list2.length;
                    }
                }
            }
        } catch (IOException e) {
        }
        return i;
    }

    private int a(AssetManager assetManager, String str) {
        try {
            return this.f1929b.load(assetManager.openFd(str), 1);
        } catch (Exception e) {
            return -1;
        }
    }

    private void b() {
        while (!this.c) {
            try {
                wait();
            } catch (InterruptedException e) {
            }
        }
    }

    public boolean a(String str, String str2) {
        Boolean bool;
        Integer num = this.d.get(b(str, str2));
        int intValue = num != null ? num.intValue() : -1;
        if (intValue != -1 && (bool = this.e.get(Integer.valueOf(intValue))) != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public static String b(String str, String str2) {
        return str + ":" + str2;
    }

    public boolean a(String str, String str2, float f, int i) {
        Integer num = this.d.get(b(str, str2));
        if (num == null) {
            return false;
        }
        final int play = this.f1929b.play(num.intValue(), f, f, 1, 0, 1.0f);
        if (i > 0) {
            this.i.schedule(new TimerTask() { // from class: com.cmplay.webview.c.a.4
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    if (a.this.f1929b != null) {
                        a.this.f1929b.stop(play);
                    }
                }
            }, i);
        }
        return play > 0;
    }
}
