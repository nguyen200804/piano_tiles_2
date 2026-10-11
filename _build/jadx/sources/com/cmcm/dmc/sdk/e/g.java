package com.cmcm.dmc.sdk.e;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g extends com.cmcm.dmc.sdk.e.b {

    /* renamed from: a, reason: collision with root package name */
    Map<String, b> f730a;

    /* renamed from: b, reason: collision with root package name */
    private a f731b;

    private class a extends BroadcastReceiver {
        private a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, final Intent intent) {
            try {
                com.cmcm.dmc.sdk.a.c.d().post(new Runnable() { // from class: com.cmcm.dmc.sdk.e.g.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        long currentTimeMillis = System.currentTimeMillis() / 1000;
                        String action = intent.getAction();
                        BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                        if (action.equals("android.bluetooth.device.action.ACL_CONNECTED")) {
                            g.this.f730a.put(bluetoothDevice.getAddress(), g.this.new b(bluetoothDevice, currentTimeMillis));
                            return;
                        }
                        if (action.equals("android.bluetooth.device.action.ACL_DISCONNECTED") && g.this.f730a.containsKey(bluetoothDevice.getAddress())) {
                            if (bluetoothDevice.getBondState() == 12 || g.this.f730a.get(bluetoothDevice.getAddress()).a().getBondState() == 12) {
                                g.this.a(bluetoothDevice, g.this.f730a.get(bluetoothDevice.getAddress()).b(), currentTimeMillis);
                            }
                            g.this.f730a.remove(bluetoothDevice.getAddress());
                        }
                    }
                });
            } catch (Exception e) {
                com.cmcm.dmc.sdk.a.i.a("ReceiverBluetoothDevices", "" + e.getMessage());
            }
        }
    }

    private class b {

        /* renamed from: b, reason: collision with root package name */
        private BluetoothDevice f736b;
        private long c;

        public b(BluetoothDevice bluetoothDevice, long j) {
            this.f736b = bluetoothDevice;
            this.c = j;
        }

        public BluetoothDevice a() {
            return this.f736b;
        }

        public long b() {
            return this.c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(BluetoothDevice bluetoothDevice, long j, long j2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("deviceName", bluetoothDevice.getName());
            jSONObject.put("deviceAddress", bluetoothDevice.getAddress());
            if (bluetoothDevice.getBluetoothClass() != null) {
                jSONObject.put("deviceCategory", bluetoothDevice.getBluetoothClass().getDeviceClass());
            }
            if (Build.VERSION.SDK_INT >= 18) {
                jSONObject.put("deviceBluetoothType", bluetoothDevice.getType());
            }
            jSONObject.put("startTime", j);
            jSONObject.put("endTime", j2);
            a(jSONObject.toString());
        } catch (Exception e) {
            com.cmcm.dmc.sdk.a.i.a("ReceiverBluetoothDevices", "" + e.getMessage());
        }
    }

    @Override // com.cmcm.dmc.sdk.e.b
    protected void b() {
        if (BluetoothAdapter.getDefaultAdapter() != null) {
            if (this.f730a == null) {
                this.f730a = new HashMap();
            } else {
                this.f730a.clear();
            }
            this.f731b = new a();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.bluetooth.device.action.ACL_CONNECTED");
            intentFilter.addAction("android.bluetooth.device.action.ACL_DISCONNECTED");
            a(this.f731b, intentFilter);
        }
    }

    @Override // com.cmcm.dmc.sdk.e.b
    public String f() {
        return "bluetooth";
    }

    @Override // com.cmcm.dmc.sdk.e.b
    protected void g() {
        if (this.f731b != null) {
            a(this.f731b);
        }
        if (this.f730a != null) {
            this.f730a.clear();
        }
    }
}
