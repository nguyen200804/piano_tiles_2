package com.mnt;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import com.mnt.a.g;
import com.mnt.impl.e;
import java.lang.reflect.Constructor;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MntActivity extends Activity {
    public static final String EXTRA_IACTIVITY_CLASS_NAME = e.qd;
    public static final String EXTRA_IACTIVITY_KEY = e.qe;
    private static final Map<String, g> c = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    private g f3890a;

    /* renamed from: b, reason: collision with root package name */
    private String f3891b;

    public static Intent getIntent(Context context, Class<? extends g> cls) {
        return getIntent(context, cls, null);
    }

    public static Intent getIntent(Context context, Class<? extends g> cls, g gVar) {
        if (context == null || cls == null) {
            return null;
        }
        Intent intent = new Intent(context, (Class<?>) MntActivity.class);
        intent.putExtra(EXTRA_IACTIVITY_CLASS_NAME, cls.getName());
        intent.addFlags(268435456);
        if (gVar != null) {
            String uuid = UUID.randomUUID().toString();
            c.put(uuid, gVar);
            intent.putExtra(EXTRA_IACTIVITY_KEY, uuid);
            return intent;
        }
        return intent;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
            String string = getIntent().getExtras().getString(EXTRA_IACTIVITY_KEY);
            if (!TextUtils.isEmpty(string)) {
                this.f3890a = c.get(string);
                c.remove(string);
            }
            if (this.f3890a == null) {
                this.f3891b = getIntent().getExtras().getString(EXTRA_IACTIVITY_CLASS_NAME);
                Constructor<?> declaredConstructor = Class.forName(this.f3891b).getDeclaredConstructor(Activity.class);
                declaredConstructor.setAccessible(true);
                this.f3890a = (g) declaredConstructor.newInstance(this);
            }
            this.f3890a.a(this);
            this.f3890a.b(bundle);
        } catch (Throwable th) {
            th.printStackTrace();
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        try {
            super.onActivityResult(i, i2, intent);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        try {
            super.onAttachedToWindow();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        try {
            bundle.putString(EXTRA_IACTIVITY_CLASS_NAME, this.f3891b);
            this.f3890a.a(bundle);
            super.onSaveInstanceState(bundle);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onChildTitleChanged(Activity activity, CharSequence charSequence) {
        try {
            super.onChildTitleChanged(activity, charSequence);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        try {
            super.onConfigurationChanged(configuration);
            this.f3890a.a(configuration);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        try {
            super.onContentChanged();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public boolean onContextItemSelected(MenuItem menuItem) {
        try {
            return super.onContextItemSelected(menuItem);
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    @Override // android.app.Activity
    public void onContextMenuClosed(Menu menu) {
        try {
            super.onContextMenuClosed(menu);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        try {
            super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public CharSequence onCreateDescription() {
        try {
            return super.onCreateDescription();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i, Bundle bundle) {
        try {
            return super.onCreateDialog(i, bundle);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i) {
        try {
            return super.onCreateDialog(i);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        try {
            return super.onCreateOptionsMenu(menu);
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        try {
            return super.onCreatePanelMenu(i, menu);
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public View onCreatePanelView(int i) {
        try {
            return super.onCreatePanelView(i);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // android.app.Activity
    public boolean onCreateThumbnail(Bitmap bitmap, Canvas canvas) {
        try {
            return super.onCreateThumbnail(bitmap, canvas);
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        try {
            return super.onCreateView(str, context, attributeSet);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        try {
            super.onDestroy();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onDetachedFromWindow() {
        try {
            super.onDetachedFromWindow();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        try {
            super.onBackPressed();
            this.f3890a.a();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        try {
            return super.onKeyDown(i, keyEvent);
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        try {
            return super.onKeyLongPress(i, keyEvent);
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyMultiple(int i, int i2, KeyEvent keyEvent) {
        try {
            return super.onKeyMultiple(i, i2, keyEvent);
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        try {
            return super.onKeyUp(i, keyEvent);
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        try {
            super.onLowMemory();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        try {
            return super.onMenuItemSelected(i, menuItem);
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        try {
            return super.onMenuOpened(i, menu);
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        try {
            super.onNewIntent(intent);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        try {
            return super.onOptionsItemSelected(menuItem);
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    @Override // android.app.Activity
    public void onOptionsMenuClosed(Menu menu) {
        try {
            super.onOptionsMenuClosed(menu);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        try {
            super.onPanelClosed(i, menu);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        try {
            super.onPause();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        try {
            super.onPostCreate(bundle);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onPostResume() {
        try {
            super.onPostResume();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onPrepareDialog(int i, Dialog dialog, Bundle bundle) {
        try {
            super.onPrepareDialog(i, dialog, bundle);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onPrepareDialog(int i, Dialog dialog) {
        try {
            super.onPrepareDialog(i, dialog);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        try {
            return super.onPrepareOptionsMenu(menu);
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        try {
            return super.onPreparePanel(i, view, menu);
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    @Override // android.app.Activity
    protected void onRestart() {
        try {
            super.onRestart();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        try {
            super.onRestoreInstanceState(bundle);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        try {
            super.onResume();
            this.f3890a.b();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public Object onRetainNonConfigurationInstance() {
        try {
            return super.onRetainNonConfigurationInstance();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onSearchRequested() {
        try {
            return super.onSearchRequested();
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        try {
            super.onStart();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        try {
            super.onStop();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onTitleChanged(CharSequence charSequence, int i) {
        try {
            super.onTitleChanged(charSequence, i);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onTouchEvent(motionEvent);
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    @Override // android.app.Activity
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        try {
            return super.onTrackballEvent(motionEvent);
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    @Override // android.app.Activity
    public void onUserInteraction() {
        try {
            super.onUserInteraction();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onUserLeaveHint() {
        try {
            super.onUserLeaveHint();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        try {
            super.onWindowFocusChanged(z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
