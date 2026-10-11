package com.cmplay.util.crop;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.cmplay.util.crop.ImageViewTouchBase;
import com.cmplay.util.crop.c;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CropImageView extends ImageViewTouchBase {

    /* renamed from: a, reason: collision with root package name */
    ArrayList<c> f1746a;

    /* renamed from: b, reason: collision with root package name */
    c f1747b;
    Context c;
    private float k;
    private float l;
    private int m;

    @Override // com.cmplay.util.crop.ImageViewTouchBase
    public /* bridge */ /* synthetic */ Matrix a() {
        return super.a();
    }

    @Override // com.cmplay.util.crop.ImageViewTouchBase
    public /* bridge */ /* synthetic */ void a(Bitmap bitmap, boolean z) {
        super.a(bitmap, z);
    }

    @Override // com.cmplay.util.crop.ImageViewTouchBase
    public /* bridge */ /* synthetic */ void a(ImageViewTouchBase.a aVar) {
        super.a(aVar);
    }

    @Override // com.cmplay.util.crop.ImageViewTouchBase
    public /* bridge */ /* synthetic */ void a(e eVar, boolean z) {
        super.a(eVar, z);
    }

    @Override // com.cmplay.util.crop.ImageViewTouchBase
    public /* bridge */ /* synthetic */ void b() {
        super.b();
    }

    @Override // com.cmplay.util.crop.ImageViewTouchBase, android.view.View, android.view.KeyEvent.Callback
    public /* bridge */ /* synthetic */ boolean onKeyDown(int x0, KeyEvent x1) {
        return super.onKeyDown(x0, x1);
    }

    @Override // com.cmplay.util.crop.ImageViewTouchBase, android.view.View, android.view.KeyEvent.Callback
    public /* bridge */ /* synthetic */ boolean onKeyUp(int x0, KeyEvent x1) {
        return super.onKeyUp(x0, x1);
    }

    @Override // com.cmplay.util.crop.ImageViewTouchBase, android.widget.ImageView
    public /* bridge */ /* synthetic */ void setImageBitmap(Bitmap x0) {
        super.setImageBitmap(x0);
    }

    public CropImageView(Context context) {
        super(context);
        this.f1746a = new ArrayList<>();
    }

    public CropImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f1746a = new ArrayList<>();
    }

    public CropImageView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f1746a = new ArrayList<>();
    }

    @Override // com.cmplay.util.crop.ImageViewTouchBase, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (this.f.b() != null) {
            Iterator<c> it = this.f1746a.iterator();
            while (it.hasNext()) {
                c next = it.next();
                next.c.set(a());
                next.a();
                if (next.b()) {
                    c(next);
                }
            }
        }
    }

    @Override // com.cmplay.util.crop.ImageViewTouchBase
    protected void a(float f, float f2, float f3) {
        super.a(f, f2, f3);
        Iterator<c> it = this.f1746a.iterator();
        while (it.hasNext()) {
            c next = it.next();
            next.c.set(a());
            next.a();
        }
    }

    @Override // com.cmplay.util.crop.ImageViewTouchBase
    protected void a(float f, float f2) {
        super.a(f, f2);
        Iterator<c> it = this.f1746a.iterator();
        while (it.hasNext()) {
            c next = it.next();
            next.c.postTranslate(f, f2);
            next.a();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (((CropImageActivity) this.c).a()) {
            return false;
        }
        switch (event.getAction()) {
            case 0:
                Iterator<c> it = this.f1746a.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else {
                        c next = it.next();
                        int a2 = next.a(event.getX(), event.getY());
                        if (a2 != 1) {
                            this.m = a2;
                            this.f1747b = next;
                            this.k = event.getX();
                            this.l = event.getY();
                            this.f1747b.a(a2 == 32 ? c.b.Move : c.b.Grow);
                            break;
                        }
                    }
                }
            case 1:
                if (this.f1747b != null) {
                    c(this.f1747b);
                    this.f1747b.a(c.b.None);
                }
                this.f1747b = null;
                break;
            case 2:
                if (this.f1747b != null) {
                    this.f1747b.a(this.m, event.getX() - this.k, event.getY() - this.l);
                    this.k = event.getX();
                    this.l = event.getY();
                    b(this.f1747b);
                    break;
                }
                break;
        }
        switch (event.getAction()) {
            case 1:
                a(true, true);
                break;
            case 2:
                if (c() == 1.0f) {
                    a(true, true);
                    break;
                }
                break;
        }
        return true;
    }

    private void b(c cVar) {
        Rect rect = cVar.f1759b;
        int max = Math.max(0, getLeft() - rect.left);
        int min = Math.min(0, getRight() - rect.right);
        int max2 = Math.max(0, getTop() - rect.top);
        int min2 = Math.min(0, getBottom() - rect.bottom);
        if (max == 0) {
            max = min;
        }
        if (max2 == 0) {
            max2 = min2;
        }
        if (max != 0 || max2 != 0) {
            b(max, max2);
        }
    }

    private void c(c cVar) {
        Rect rect = cVar.f1759b;
        float max = Math.max(1.0f, Math.min((getWidth() / rect.width()) * 0.6f, (getHeight() / rect.height()) * 0.6f) * c());
        if (Math.abs(max - c()) / max > 0.1d) {
            float[] fArr = {cVar.f1758a.centerX(), cVar.f1758a.centerY()};
            a().mapPoints(fArr);
            a(max, fArr[0], fArr[1], 300.0f);
        }
        b(cVar);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(@NonNull Canvas canvas) {
        super.onDraw(canvas);
        Iterator<c> it = this.f1746a.iterator();
        while (it.hasNext()) {
            it.next().a(canvas);
        }
    }

    public void a(c cVar) {
        this.f1746a.add(cVar);
        invalidate();
    }
}
