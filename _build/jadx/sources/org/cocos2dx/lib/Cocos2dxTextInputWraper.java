package org.cocos2dx.lib;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import org.apache.commons.io.IOUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Cocos2dxTextInputWraper implements TextWatcher, TextView.OnEditorActionListener {
    private static final String TAG = Cocos2dxTextInputWraper.class.getSimpleName();
    private final Cocos2dxGLSurfaceView mCocos2dxGLSurfaceView;
    private String mOriginText;
    private String mText;

    public Cocos2dxTextInputWraper(Cocos2dxGLSurfaceView pCocos2dxGLSurfaceView) {
        this.mCocos2dxGLSurfaceView = pCocos2dxGLSurfaceView;
    }

    private boolean isFullScreenEdit() {
        return ((InputMethodManager) this.mCocos2dxGLSurfaceView.getCocos2dxEditText().getContext().getSystemService("input_method")).isFullscreenMode();
    }

    public void setOriginText(String pOriginText) {
        this.mOriginText = pOriginText;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable s) {
        if (!isFullScreenEdit()) {
            int length = s.length() - this.mText.length();
            if (length > 0) {
                this.mCocos2dxGLSurfaceView.insertText(s.subSequence(this.mText.length(), s.length()).toString());
            } else {
                while (length < 0) {
                    this.mCocos2dxGLSurfaceView.deleteBackward();
                    length++;
                }
            }
            this.mText = s.toString();
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence pCharSequence, int start, int count, int after) {
        this.mText = pCharSequence.toString();
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence pCharSequence, int start, int before, int count) {
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView pTextView, int pActionID, KeyEvent pKeyEvent) {
        if (this.mCocos2dxGLSurfaceView.getCocos2dxEditText() == pTextView && isFullScreenEdit()) {
            if (this.mOriginText != null) {
                for (int length = this.mOriginText.length(); length > 0; length--) {
                    this.mCocos2dxGLSurfaceView.deleteBackward();
                }
            }
            String charSequence = pTextView.getText().toString();
            if (charSequence != null) {
                if (charSequence.compareTo("") == 0) {
                    charSequence = IOUtils.LINE_SEPARATOR_UNIX;
                }
                if ('\n' != charSequence.charAt(charSequence.length() - 1)) {
                    charSequence = charSequence + '\n';
                }
            }
            this.mCocos2dxGLSurfaceView.insertText(charSequence);
        }
        if (pActionID == 6) {
            this.mCocos2dxGLSurfaceView.requestFocus();
            return false;
        }
        return false;
    }
}
