package com.cmplay.j;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.icu.impl.IllegalIcuArgumentException;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.DigitsKeyListener;
import android.text.method.TextKeyListener;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.cmplay.tiles4.R;
import com.cmplay.util.NativeUtil;
import org.cocos2dx.lib.Cocos2dxHelper;

/* compiled from: EditTextDialog.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends Dialog {

    /* renamed from: a, reason: collision with root package name */
    private String f1552a;

    /* renamed from: b, reason: collision with root package name */
    private EnumC0049a f1553b;
    private TextView c;
    private EditText d;

    /* compiled from: EditTextDialog.java */
    /* renamed from: com.cmplay.j.a$a, reason: collision with other inner class name */
    public enum EnumC0049a {
        NUMBER(1),
        ALPHABET_NUMBER(2),
        NO_LIMIT(3);

        private int d;

        EnumC0049a(int i) {
            this.d = i;
        }

        public static EnumC0049a a(int i) {
            switch (i) {
                case 1:
                    return NUMBER;
                case 2:
                    return ALPHABET_NUMBER;
                case 3:
                    return NO_LIMIT;
                default:
                    throw new IllegalIcuArgumentException("");
            }
        }
    }

    public a(Context context) {
        super(context);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_edit_text);
        Window window = getWindow();
        window.getDecorView().getRootView().setBackgroundResource(android.R.color.transparent);
        int i = getContext().getResources().getDisplayMetrics().widthPixels;
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = (int) (i * 0.9d);
        window.setAttributes(attributes);
        setCanceledOnTouchOutside(false);
        a();
    }

    private void a() {
        this.c = (TextView) findViewById(R.id.title_textview);
        if (this.f1552a != null) {
            this.c.setText(this.f1552a);
        }
        ((ImageView) findViewById(R.id.close_button)).setOnClickListener(new View.OnClickListener() { // from class: com.cmplay.j.a.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                a.this.dismiss();
            }
        });
        final Button button = (Button) findViewById(R.id.btn_ok);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.cmplay.j.a.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                Cocos2dxHelper.runOnGLThread(new Runnable() { // from class: com.cmplay.j.a.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        NativeUtil.onEditTextDone(a.this.d.getText().toString());
                    }
                });
                a.this.dismiss();
            }
        });
        button.setEnabled(false);
        button.setAlpha(0.5f);
        button.setText(R.string.dialog_btn_ok);
        this.d = (EditText) findViewById(R.id.edt_convert_code);
        this.d.setFilters(new InputFilter[]{new InputFilter.LengthFilter(20)});
        if (this.f1553b != null) {
            a(this.f1553b);
        }
        this.d.setHintTextColor(-6900795);
        this.d.setHint(NativeUtil.getLanguageTextByKey("favorites_diy_txt10"));
        this.d.addTextChangedListener(new TextWatcher() { // from class: com.cmplay.j.a.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
                if (!TextUtils.isEmpty(a.this.d.getText().toString())) {
                    button.setEnabled(true);
                    button.setAlpha(1.0f);
                } else {
                    button.setEnabled(false);
                    button.setAlpha(0.5f);
                }
            }
        });
    }

    public void a(String str) {
        this.f1552a = str;
        if (this.c != null) {
            this.c.setText(this.f1552a);
        }
    }

    public void a(EnumC0049a enumC0049a) {
        this.f1553b = enumC0049a;
        if (this.d != null) {
            switch (enumC0049a) {
                case NUMBER:
                    this.d.setKeyListener(DigitsKeyListener.getInstance(false, true));
                    break;
                case ALPHABET_NUMBER:
                    this.d.setKeyListener(DigitsKeyListener.getInstance("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"));
                    break;
                case NO_LIMIT:
                    this.d.setKeyListener(TextKeyListener.getInstance());
                    break;
            }
        }
    }

    public static void a(Activity activity, String str, EnumC0049a enumC0049a) {
        if (activity != null) {
            a aVar = new a(activity);
            aVar.a(enumC0049a);
            aVar.a(str);
            aVar.show();
        }
    }
}
