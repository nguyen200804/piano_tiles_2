package com.mopub.mraid;

import android.R;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.StateListDrawable;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.view.View;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Drawables;
import com.mopub.mobileads.BaseVideoPlayerActivity;
import com.mopub.mobileads.BaseVideoViewController;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MraidVideoViewController extends BaseVideoViewController {

    /* renamed from: a, reason: collision with root package name */
    private final VideoView f4569a;

    /* renamed from: b, reason: collision with root package name */
    private ImageButton f4570b;
    private int c;
    private int d;

    public MraidVideoViewController(Context context, Bundle intentExtras, Bundle savedInstanceState, BaseVideoViewController.BaseVideoViewControllerListener baseVideoViewControllerListener) {
        super(context, null, baseVideoViewControllerListener);
        this.f4569a = new VideoView(context);
        this.f4569a.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.mopub.mraid.MraidVideoViewController.1
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mp) {
                MraidVideoViewController.this.f4570b.setVisibility(0);
                MraidVideoViewController.this.b(true);
            }
        });
        this.f4569a.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.mopub.mraid.MraidVideoViewController.2
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int what, int extra) {
                MraidVideoViewController.this.f4570b.setVisibility(0);
                MraidVideoViewController.this.a(false);
                return false;
            }
        });
        this.f4569a.setVideoPath(intentExtras.getString(BaseVideoPlayerActivity.VIDEO_URL));
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected void a() {
        super.a();
        this.d = Dips.asIntPixels(50.0f, h());
        this.c = Dips.asIntPixels(8.0f, h());
        i();
        this.f4570b.setVisibility(8);
        this.f4569a.start();
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected VideoView b() {
        return this.f4569a;
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected void e() {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected void c() {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected void d() {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected void a(@NonNull Bundle bundle) {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected void a(Configuration configuration) {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    protected void f() {
    }

    private void i() {
        this.f4570b = new ImageButton(h());
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{-16842919}, Drawables.INTERSTITIAL_CLOSE_BUTTON_NORMAL.createDrawable(h()));
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, Drawables.INTERSTITIAL_CLOSE_BUTTON_PRESSED.createDrawable(h()));
        this.f4570b.setImageDrawable(stateListDrawable);
        this.f4570b.setBackgroundDrawable(null);
        this.f4570b.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.mraid.MraidVideoViewController.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                MraidVideoViewController.this.g().onFinish();
            }
        });
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.d, this.d);
        layoutParams.addRule(11);
        layoutParams.setMargins(this.c, 0, this.c, 0);
        getLayout().addView(this.f4570b, layoutParams);
    }
}
