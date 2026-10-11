package com.cmplay.tile2.ui;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.Html;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cmplay.b.b;
import com.cmplay.g.e;
import com.cmplay.tile2.GameApp;
import com.cmplay.tiles4.R;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.aa;
import com.cmplay.util.t;
import com.cmplay.webview.ui.WebViewActivity;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.util.Random;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: GameProblemLayout.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends RelativeLayout implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    private Context f1665a;

    /* renamed from: b, reason: collision with root package name */
    private Button f1666b;
    private Button c;
    private TextView d;
    private TextView e;
    private ImageView f;
    private TextView g;
    private int h;
    private boolean i;
    private com.cmplay.b.a j;
    private BroadcastReceiver k;

    public a(Context context, int i, com.cmplay.b.a aVar) {
        super(context);
        this.i = false;
        this.k = new BroadcastReceiver() { // from class: com.cmplay.tile2.ui.a.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if ("android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(intent.getAction()) && a.this.i && "homekey".equals(intent.getStringExtra("reason"))) {
                    e.a("1", 5, a.this.h, a.this.j.h, a.this.j.c);
                    a.this.b();
                }
            }
        };
        this.j = aVar;
        this.h = i;
        this.i = true;
        context.registerReceiver(this.k, new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
        this.f1665a = context;
        aa.a("key_gameproblem_lastshowtime", new Long(System.currentTimeMillis() / 86400000).intValue());
        a();
    }

    private void a() {
        LayoutInflater.from(this.f1665a).inflate(R.layout.activity_gameproblem, this);
        this.f1666b = (Button) findViewById(R.id.activity_gameproble_canclelbtn);
        this.c = (Button) findViewById(R.id.activity_gameproble_tryitbtn);
        this.d = (TextView) findViewById(R.id.activity_gameproble_tvbottom);
        this.e = (TextView) findViewById(R.id.activity_gameproble_tvtop);
        this.g = (TextView) findViewById(R.id.title_layout);
        this.f = (ImageView) findViewById(R.id.icon_memory);
        this.f1666b.setOnClickListener(this);
        this.c.setOnClickListener(this);
        Resources resources = getResources();
        Random random = new Random();
        String str = String.valueOf(random.nextInt(20) + 30) + "." + String.valueOf(random.nextInt(10)) + "%";
        String str2 = String.valueOf(random.nextInt(270) + 30) + "." + String.valueOf(random.nextInt(10));
        this.e.getPaint().setFakeBoldText(true);
        this.f1666b.setText(!this.j.l.contains("||") ? this.j.l : this.j.l.split("\\|\\|")[0]);
        this.c.setText(!this.j.l.contains("||") ? this.j.l : this.j.l.split("\\|\\|")[1]);
        if (this.j.o != null) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inDensity = 320;
            options.inTargetDensity = this.f1665a.getResources().getDisplayMetrics().densityDpi;
            options.inScaled = true;
            Bitmap decodeFile = BitmapFactory.decodeFile(this.j.o, options);
            if (decodeFile != null) {
                this.f.setImageBitmap(decodeFile);
            } else {
                this.f.setImageResource(this.j.c == 3 ? R.drawable.gameproblem_icon_speed : R.drawable.icon_gift);
            }
        } else {
            this.f.setImageResource(this.j.c == 3 ? R.drawable.gameproblem_icon_speed : R.drawable.icon_gift);
        }
        if (this.j.c == 3) {
            this.e.setText(Html.fromHtml(this.j.j.replace("&&", str2).replace("##", str)));
            this.d.setText(Html.fromHtml(this.j.k.replace("##", str).replace("&&", str2)));
            this.g.setCompoundDrawablesWithIntrinsicBounds(getResources().getDrawable(R.drawable.gamebox_tag_gamebox_dialog_title_icon), (Drawable) null, (Drawable) null, (Drawable) null);
            this.g.setText(resources.getString(R.string.gameboxproblem_gameboost));
            return;
        }
        if (this.j.c == 2) {
            String str3 = "<img src='2130837809'/><font color =#feb32b > x" + this.j.d + "</font>";
            Html.ImageGetter imageGetter = new Html.ImageGetter() { // from class: com.cmplay.tile2.ui.a.2
                @Override // android.text.Html.ImageGetter
                public Drawable getDrawable(String source) {
                    Drawable drawable = a.this.getResources().getDrawable(Integer.parseInt(source));
                    drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
                    return drawable;
                }
            };
            this.e.setText(Html.fromHtml(this.j.j.replace("&&", str2).replace("##", str)));
            this.e.setTextColor(getResources().getColor(R.color.babyblue));
            this.d.setText(Html.fromHtml(this.j.k.replace("##", str).replace("&&", str2) + "    " + str3, imageGetter, null));
            this.d.setTextColor(getResources().getColor(R.color.babyblue));
            Drawable drawable = getResources().getDrawable(R.drawable.app_logo);
            drawable.setBounds(0, 0, com.cmplay.util.e.a(30), com.cmplay.util.e.a(30));
            this.g.setCompoundDrawables(drawable, null, null, null);
            this.g.setText(resources.getString(2131034150));
            return;
        }
        if (this.j.c == 1) {
            String str4 = "<img src='2130837689'/><font color =#feb32b > x" + this.j.d + "</font>";
            Html.ImageGetter imageGetter2 = new Html.ImageGetter() { // from class: com.cmplay.tile2.ui.a.3
                @Override // android.text.Html.ImageGetter
                public Drawable getDrawable(String source) {
                    Drawable drawable2 = a.this.getResources().getDrawable(Integer.parseInt(source));
                    drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight());
                    return drawable2;
                }
            };
            this.e.setText(Html.fromHtml(this.j.j.replace("&&", str2).replace("##", str)));
            this.e.setTextColor(getResources().getColor(R.color.babyblue));
            this.d.setText(Html.fromHtml(this.j.k.replace("##", str).replace("&&", str2) + "    " + str4, imageGetter2, null));
            this.d.setTextColor(getResources().getColor(R.color.babyblue));
            Drawable drawable2 = getResources().getDrawable(R.drawable.app_logo);
            drawable2.setBounds(0, 0, com.cmplay.util.e.a(30), com.cmplay.util.e.a(30));
            this.g.setCompoundDrawables(drawable2, null, null, null);
            this.g.setText(resources.getString(2131034150));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.activity_gameproble_canclelbtn /* 2131230774 */:
                b();
                e.a("1", 2, this.h, this.j.h, this.j.c);
                break;
            case R.id.activity_gameproble_tryitbtn /* 2131230775 */:
                if (this.j.n == 2) {
                    com.cmplay.util.e.b(this.f1665a, this.j.m);
                } else {
                    WebViewActivity.a(this.f1665a, this.j.m, 0);
                }
                NativeUtil.setCardClick(this.j.b());
                b();
                e.a("1", 3, this.h, this.j.h, this.j.c);
                break;
        }
    }

    public static void a(Context context, final int i, final String str) {
        final Context applicationContext = context.getApplicationContext();
        new Handler().postDelayed(new Runnable() { // from class: com.cmplay.tile2.ui.a.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    applicationContext.startActivity(new Intent().setClass(applicationContext, GameProblemActivity.class).addFlags(268435456).putExtra(VastExtensionXmlManager.TYPE, i).putExtra("type_name", str));
                } catch (Exception e) {
                }
            }
        }, 100L);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent event) {
        switch (event.getKeyCode()) {
            case 4:
                b();
                break;
        }
        return super.dispatchKeyEvent(event);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.k != null) {
            try {
                this.f1665a.unregisterReceiver(this.k);
            } catch (Exception e) {
            }
            this.k = null;
        }
        if (this.f1665a instanceof GameProblemActivity) {
            ((Activity) this.f1665a).finish();
            Log.d("finish", "GameProblemActivity");
        }
    }

    public static String a(String str) {
        JSONObject jSONObject;
        String str2;
        if (!t.c(GameApp.f1598a) || GameApp.f1598a == null) {
            return null;
        }
        int intValue = new Long(System.currentTimeMillis() / 86400000).intValue();
        int b2 = aa.b("key_gameproblem_lastshowtime", 0);
        boolean z = NativeUtil.getGameStartTimes() <= 1;
        int b3 = aa.b("key_gameproblem_mess_recommend", 0);
        boolean b4 = aa.b("key_gameproblem_adshowed", false);
        String a2 = b.a().a(4);
        boolean a3 = com.cmplay.cloud.a.a().a(2, "section_common", "cloud_key_gameproblem_homekey", true);
        boolean z2 = System.currentTimeMillis() - GameApp.a() >= 30000;
        com.cmplay.b.a aVar = null;
        if (a2 != null) {
            try {
                jSONObject = new JSONObject(a2);
            } catch (JSONException e) {
                jSONObject = null;
            }
            if (jSONObject == null) {
                aVar = null;
            } else {
                aVar = new com.cmplay.b.a(jSONObject);
            }
        }
        if ((str == "exit" || (str == "home" && a3)) && aVar != null && !z && intValue - b2 >= aVar.f && intValue != b3 && !b4 && z2) {
            return a2;
        }
        if (str == "exit" && z) {
            str2 = "0";
        } else if (str == "home" && z) {
            str2 = "0";
        } else if (!a3 && str == "home") {
            str2 = "7";
        } else {
            str2 = (aVar == null || intValue - b2 >= aVar.f) ? "" : "2";
            if (intValue == b3) {
                str2 = str2 + "4";
            }
            if (b4) {
                str2 = str2 + "5";
            }
            if (!z2) {
                str2 = str2 + "8";
            }
            if (aVar == null) {
                str2 = str2 + "9";
            }
        }
        Intent intent = new Intent(GameApp.f1598a, (Class<?>) ReportService.class);
        intent.putExtra("command_start_report", "command_start_gameproblem_disproble");
        intent.putExtra("command_start_gameproblem_errorcode", str2);
        intent.putExtra("command_start_gameproblem_errortype", str == "exit" ? 2 : 3);
        intent.putExtra("command_start_gameproblem_adtype", aVar == null ? "all" : aVar.h);
        intent.putExtra("command_start_gameproblem_abname", aVar == null ? 4 : aVar.c);
        GameApp.f1598a.startService(intent);
        return null;
    }
}
