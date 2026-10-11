package org.cocos2dx.lib;

import android.content.Context;
import android.media.SoundPool;
import android.util.Log;
import com.chukong.cocosplay.client.CocosPlayClient;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Cocos2dxSound {
    private static final int INVALID_SOUND_ID = -1;
    private static final int INVALID_STREAM_ID = -1;
    private static int LOAD_TIME_OUT = 500;
    private static final int MAX_SIMULTANEOUS_STREAMS_DEFAULT = 32;
    private static final int MAX_SIMULTANEOUS_STREAMS_I9100 = 3;
    private static final int MAX_SIMULTANEOUS_STREAMS_NUM_SCALE = 5;
    private static final String MUSIC_CFG_ASSET_PATH = "res/musicsrc.json";
    private static final int SOUND_PRIORITY = 1;
    private static final int SOUND_QUALITY = 5;
    private static final float SOUND_RATE = 1.0f;
    private static final String TAG = "Cocos2dxSound";
    private final Context mContext;
    private float mLeftVolume;
    private String mMusicDecodePath;
    private float mRightVolume;
    private SoundPool mSoundPool;
    private final ConcurrentHashMap<String, ArrayList<Integer>> mPathStreamIDsMap = new ConcurrentHashMap<>();
    private final HashMap<String, Integer> mPathSoundIDMap = new HashMap<>();
    private ConcurrentHashMap<Integer, SoundInfoForLoadedCompleted> mPlayWhenLoadedEffects = new ConcurrentHashMap<>();
    private List<Integer> streamQueue = new ArrayList();
    private List<TimerForStop> eraseSoundByTime = new ArrayList();

    public void eraseBassByStreamID(int streamID) {
        for (int i = 0; i < this.eraseSoundByTime.size(); i++) {
            TimerForStop timerForStop = this.eraseSoundByTime.get(i);
            if (timerForStop.getStreamID() == streamID) {
                timerForStop.setIsItemUsed(false);
            }
        }
    }

    public void checkBass() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.eraseSoundByTime.size()) {
                TimerForStop timerForStop = this.eraseSoundByTime.get(i2);
                if (timerForStop.checkErase()) {
                    int streamID = timerForStop.getStreamID();
                    int indexOf = this.streamQueue.indexOf(Integer.valueOf(streamID));
                    if (indexOf >= 0) {
                        this.streamQueue.remove(indexOf);
                        this.mSoundPool.stop(streamID);
                    }
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public void insertItemToBassList(int nstreamid, float playtime) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.eraseSoundByTime.size()) {
                TimerForStop timerForStop = this.eraseSoundByTime.get(i2);
                if (timerForStop.isItemUsed()) {
                    i = i2 + 1;
                } else {
                    timerForStop.setStopBassInfo(nstreamid, playtime);
                    return;
                }
            } else {
                TimerForStop timerForStop2 = new TimerForStop();
                timerForStop2.setStopBassInfo(nstreamid, playtime);
                this.eraseSoundByTime.add(timerForStop2);
                return;
            }
        }
    }

    public static class TimerForStop {
        private int streamID = -1;
        private long startTime = 0;
        private float playTime = 0.0f;
        private boolean bIsUsed = false;

        public void setStopBassInfo(int nstreamid, float playtime) {
            this.streamID = nstreamid;
            this.startTime = System.currentTimeMillis();
            this.playTime = playtime;
            this.bIsUsed = true;
        }

        public boolean isItemUsed() {
            return this.bIsUsed;
        }

        public void setIsItemUsed(boolean used) {
            this.bIsUsed = used;
        }

        public int getStreamID() {
            return this.streamID;
        }

        public boolean checkErase() {
            if (!isItemUsed() || System.currentTimeMillis() - this.startTime <= this.playTime * 1000.0f) {
                return false;
            }
            this.bIsUsed = false;
            return true;
        }
    }

    public Cocos2dxSound(Context context) {
        this.mMusicDecodePath = null;
        this.mContext = context;
        String musicVer = getMusicVer(readMusicCfgFromAsset());
        if (musicVer != null) {
            this.mMusicDecodePath = context.getFilesDir() + "/music/" + musicVer + "/";
            Log.d("wavemix-info", "sound decode path: " + this.mMusicDecodePath);
        } else {
            Log.d("wavemix-info", "sound decode path detect failed");
        }
        initData();
    }

    private void initData() {
        if ((Cocos2dxHelper.getDeviceModel().indexOf("GT-I9100") != -1 ? 3 : Cocos2dxHelper.getCpuNum() * 5) > Cocos2dxHelper.getCloudConfigGetter().getIntValue(2, CloudConfigKey.SECTION_COMMON, CloudConfigKey.CLOUD_MAX_STREAMS, 32)) {
        }
        this.mSoundPool = new SoundPool(500, 3, 5);
        this.mSoundPool.setOnLoadCompleteListener(new OnLoadCompletedListener());
        this.mLeftVolume = 0.5f;
        this.mRightVolume = 0.5f;
    }

    public int preloadEffect(String path) {
        if (CocosPlayClient.isEnabled() && !CocosPlayClient.isDemo()) {
            CocosPlayClient.updateAssets(path);
        }
        CocosPlayClient.notifyFileLoaded(path);
        Integer num = this.mPathSoundIDMap.get(path);
        if (num == null) {
            num = Integer.valueOf(createSoundIDFromAsset(path));
            if (num.intValue() != -1) {
                this.mPathSoundIDMap.put(path, num);
            } else {
                Log.d("wavemix-info", "preloading soud faild: " + path);
            }
        }
        return num.intValue();
    }

    public void unloadEffect(String path) {
        ArrayList<Integer> arrayList = this.mPathStreamIDsMap.get(path);
        if (arrayList != null) {
            Iterator<Integer> it = arrayList.iterator();
            while (it.hasNext()) {
                this.mSoundPool.stop(it.next().intValue());
            }
        }
        this.mPathStreamIDsMap.remove(path);
        Integer num = this.mPathSoundIDMap.get(path);
        if (num != null) {
            this.mSoundPool.unload(num.intValue());
            this.mPathSoundIDMap.remove(path);
        }
    }

    public int playEffect(String path, boolean loop, float pitch, float pan, float gain, float fPlayTime) {
        Integer num = this.mPathSoundIDMap.get(path);
        Log.d("shengmingplayeffect", "shengmingplayeffect");
        if (num != null) {
            if (this.streamQueue.size() >= 20) {
                this.mSoundPool.stop(this.streamQueue.remove(0).intValue());
            }
            int doPlayEffect = doPlayEffect(path, num.intValue(), loop, pitch, pan, gain);
            this.streamQueue.add(Integer.valueOf(doPlayEffect));
            return doPlayEffect;
        }
        Integer valueOf = Integer.valueOf(preloadEffect(path));
        if (valueOf.intValue() == -1) {
            return -1;
        }
        SoundInfoForLoadedCompleted soundInfoForLoadedCompleted = new SoundInfoForLoadedCompleted(path, loop, pitch, pan, gain);
        this.mPlayWhenLoadedEffects.putIfAbsent(valueOf, soundInfoForLoadedCompleted);
        synchronized (soundInfoForLoadedCompleted) {
            try {
                soundInfoForLoadedCompleted.wait(LOAD_TIME_OUT);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        int i = soundInfoForLoadedCompleted.effectID;
        this.mPlayWhenLoadedEffects.remove(valueOf);
        return i;
    }

    public void stopEffect(int steamID) {
        this.mSoundPool.stop(steamID);
        Iterator<String> it = this.mPathStreamIDsMap.keySet().iterator();
        while (it.hasNext()) {
            ArrayList<Integer> arrayList = this.mPathStreamIDsMap.get(it.next());
            if (arrayList != null && arrayList.contains(Integer.valueOf(steamID))) {
                arrayList.remove(arrayList.indexOf(Integer.valueOf(steamID)));
                return;
            }
        }
    }

    public void pauseEffect(int steamID) {
        this.mSoundPool.pause(steamID);
    }

    public void resumeEffect(int steamID) {
        this.mSoundPool.resume(steamID);
    }

    public void pauseAllEffects() {
        if (!this.mPathStreamIDsMap.isEmpty()) {
            Iterator<Map.Entry<String, ArrayList<Integer>>> it = this.mPathStreamIDsMap.entrySet().iterator();
            while (it.hasNext()) {
                Iterator<Integer> it2 = it.next().getValue().iterator();
                while (it2.hasNext()) {
                    this.mSoundPool.pause(it2.next().intValue());
                }
            }
        }
    }

    public void resumeAllEffects() {
        if (!this.mPathStreamIDsMap.isEmpty()) {
            Iterator<Map.Entry<String, ArrayList<Integer>>> it = this.mPathStreamIDsMap.entrySet().iterator();
            while (it.hasNext()) {
                Iterator<Integer> it2 = it.next().getValue().iterator();
                while (it2.hasNext()) {
                    this.mSoundPool.resume(it2.next().intValue());
                }
            }
        }
    }

    public void stopAllEffects() {
        if (!this.mPathStreamIDsMap.isEmpty()) {
            Iterator<Map.Entry<String, ArrayList<Integer>>> it = this.mPathStreamIDsMap.entrySet().iterator();
            while (it.hasNext()) {
                Iterator<Integer> it2 = it.next().getValue().iterator();
                while (it2.hasNext()) {
                    this.mSoundPool.stop(it2.next().intValue());
                }
            }
        }
        this.mPathStreamIDsMap.clear();
    }

    public float getEffectsVolume() {
        return (this.mLeftVolume + this.mRightVolume) / 2.0f;
    }

    public void setEffectsVolume(float volume) {
        if (volume < 0.0f) {
            volume = 0.0f;
        }
        if (volume > 1.0f) {
            volume = 1.0f;
        }
        this.mRightVolume = volume;
        this.mLeftVolume = volume;
        if (!this.mPathStreamIDsMap.isEmpty()) {
            Iterator<Map.Entry<String, ArrayList<Integer>>> it = this.mPathStreamIDsMap.entrySet().iterator();
            while (it.hasNext()) {
                Iterator<Integer> it2 = it.next().getValue().iterator();
                while (it2.hasNext()) {
                    this.mSoundPool.setVolume(it2.next().intValue(), this.mLeftVolume, this.mRightVolume);
                }
            }
        }
    }

    public void end() {
        this.mSoundPool.release();
        this.mPathStreamIDsMap.clear();
        this.mPathSoundIDMap.clear();
        this.mPlayWhenLoadedEffects.clear();
        this.mLeftVolume = 0.5f;
        this.mRightVolume = 0.5f;
        initData();
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x005a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0055 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String readMusicCfgFromAsset() {
        /*
            r8 = this;
            r3 = 0
            java.lang.String r0 = ""
            android.content.Context r1 = r8.mContext
            r4 = 0
            android.content.res.AssetManager r1 = r1.getAssets()     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L69
            java.lang.String r2 = "res/musicsrc.json"
            java.io.InputStream r2 = r1.open(r2)     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L69
            r1 = 1024(0x400, float:1.435E-42)
            byte[] r1 = new byte[r1]     // Catch: java.io.IOException -> L25 java.lang.Throwable -> L67
            java.io.ByteArrayOutputStream r5 = new java.io.ByteArrayOutputStream     // Catch: java.io.IOException -> L25 java.lang.Throwable -> L67
            r5.<init>()     // Catch: java.io.IOException -> L25 java.lang.Throwable -> L67
        L19:
            int r6 = r2.read(r1)     // Catch: java.io.IOException -> L25 java.lang.Throwable -> L67
            r7 = -1
            if (r6 == r7) goto L34
            r7 = 0
            r5.write(r1, r7, r6)     // Catch: java.io.IOException -> L25 java.lang.Throwable -> L67
            goto L19
        L25:
            r1 = move-exception
        L26:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L67
            if (r2 == 0) goto L2e
            r2.close()     // Catch: java.io.IOException -> L4c
        L2e:
            if (r3 == 0) goto L33
            r4.close()     // Catch: java.io.IOException -> L63
        L33:
            return r0
        L34:
            java.lang.String r1 = "UTF-8"
            java.lang.String r0 = r5.toString(r1)     // Catch: java.io.IOException -> L25 java.lang.Throwable -> L67
            if (r2 == 0) goto L3f
            r2.close()     // Catch: java.io.IOException -> L47
        L3f:
            if (r3 == 0) goto L33
            r4.close()     // Catch: java.io.IOException -> L45
            goto L33
        L45:
            r1 = move-exception
            goto L33
        L47:
            r1 = move-exception
            r1.printStackTrace()
            goto L3f
        L4c:
            r1 = move-exception
            r1.printStackTrace()
            goto L2e
        L51:
            r0 = move-exception
            r2 = r3
        L53:
            if (r2 == 0) goto L58
            r2.close()     // Catch: java.io.IOException -> L5e
        L58:
            if (r3 == 0) goto L5d
            r4.close()     // Catch: java.io.IOException -> L65
        L5d:
            throw r0
        L5e:
            r1 = move-exception
            r1.printStackTrace()
            goto L58
        L63:
            r1 = move-exception
            goto L33
        L65:
            r1 = move-exception
            goto L5d
        L67:
            r0 = move-exception
            goto L53
        L69:
            r1 = move-exception
            r2 = r3
            goto L26
        */
        throw new UnsupportedOperationException("Method not decompiled: org.cocos2dx.lib.Cocos2dxSound.readMusicCfgFromAsset():java.lang.String");
    }

    public String getMusicVer(String strCfg) {
        try {
            JSONObject jSONObject = new JSONObject(strCfg);
            if (jSONObject == null || !jSONObject.has("src_vesion")) {
                return null;
            }
            return jSONObject.getString("src_vesion");
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0054 A[Catch: Exception -> 0x0066, TRY_LEAVE, TryCatch #0 {Exception -> 0x0066, blocks: (B:3:0x0002, B:5:0x000a, B:11:0x0015, B:13:0x0032, B:15:0x003d, B:17:0x0047, B:19:0x0054), top: B:2:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int createSoundIDFromAsset(java.lang.String r10) {
        /*
            r9 = this;
            r1 = -1
            r0 = 0
            java.lang.String r2 = "/"
            boolean r2 = r10.startsWith(r2)     // Catch: java.lang.Exception -> L66
            if (r2 == 0) goto L15
            android.media.SoundPool r0 = r9.mSoundPool     // Catch: java.lang.Exception -> L66
            r2 = 0
            int r0 = r0.load(r10, r2)     // Catch: java.lang.Exception -> L66
        L11:
            if (r0 != 0) goto L14
            r0 = r1
        L14:
            return r0
        L15:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L66
            r2.<init>()     // Catch: java.lang.Exception -> L66
            java.lang.String r3 = r9.mMusicDecodePath     // Catch: java.lang.Exception -> L66
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Exception -> L66
            java.lang.StringBuilder r2 = r2.append(r10)     // Catch: java.lang.Exception -> L66
            java.lang.String r3 = ".wav"
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Exception -> L66
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L66
            java.lang.String r3 = r9.mMusicDecodePath     // Catch: java.lang.Exception -> L66
            if (r3 == 0) goto L85
            java.io.File r3 = new java.io.File     // Catch: java.lang.Exception -> L66
            r3.<init>(r2)     // Catch: java.lang.Exception -> L66
            boolean r4 = r3.exists()     // Catch: java.lang.Exception -> L66
            if (r4 == 0) goto L85
            long r4 = r3.length()     // Catch: java.lang.Exception -> L66
            r6 = 0
            int r3 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r3 <= 0) goto L85
            r0 = 1
            android.media.SoundPool r3 = r9.mSoundPool     // Catch: java.lang.Exception -> L66
            r4 = 0
            int r2 = r3.load(r2, r4)     // Catch: java.lang.Exception -> L66
            r8 = r0
            r0 = r2
            r2 = r8
        L52:
            if (r2 != 0) goto L11
            android.media.SoundPool r0 = r9.mSoundPool     // Catch: java.lang.Exception -> L66
            android.content.Context r2 = r9.mContext     // Catch: java.lang.Exception -> L66
            android.content.res.AssetManager r2 = r2.getAssets()     // Catch: java.lang.Exception -> L66
            android.content.res.AssetFileDescriptor r2 = r2.openFd(r10)     // Catch: java.lang.Exception -> L66
            r3 = 0
            int r0 = r0.load(r2, r3)     // Catch: java.lang.Exception -> L66
            goto L11
        L66:
            r0 = move-exception
            java.lang.String r2 = "Cocos2dxSound"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "error: "
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r4 = r0.getMessage()
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r3 = r3.toString()
            android.util.Log.e(r2, r3, r0)
            r0 = r1
            goto L11
        L85:
            r2 = r0
            r0 = r1
            goto L52
        */
        throw new UnsupportedOperationException("Method not decompiled: org.cocos2dx.lib.Cocos2dxSound.createSoundIDFromAsset(java.lang.String):int");
    }

    private float clamp(float value, float min, float max) {
        return Math.max(min, Math.min(value, max));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int doPlayEffect(String path, int soundId, boolean loop, float pitch, float pan, float gain) {
        int play = this.mSoundPool.play(soundId, clamp((1.0f - clamp(pan, 0.0f, 1.0f)) * this.mLeftVolume * gain, 0.0f, 1.0f), clamp(this.mRightVolume * gain * (1.0f - clamp(-pan, 0.0f, 1.0f)), 0.0f, 1.0f), 1, loop ? -1 : 0, clamp(1.0f * pitch, 0.5f, 2.0f));
        if (play == 0) {
            Log.d("wavemix-info", "paly sound failed: " + path);
        }
        ArrayList<Integer> arrayList = this.mPathStreamIDsMap.get(path);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.mPathStreamIDsMap.put(path, arrayList);
        }
        arrayList.add(Integer.valueOf(play));
        return play;
    }

    public void onEnterBackground() {
        this.mSoundPool.autoPause();
    }

    public void onEnterForeground() {
        this.mSoundPool.autoResume();
    }

    public class SoundInfoForLoadedCompleted {
        public int effectID = -1;
        public float gain;
        public boolean isLoop;
        public float pan;
        public String path;
        public float pitch;

        public SoundInfoForLoadedCompleted(String path, boolean isLoop, float pitch, float pan, float gain) {
            this.path = path;
            this.isLoop = isLoop;
            this.pitch = pitch;
            this.pan = pan;
            this.gain = gain;
        }
    }

    public class OnLoadCompletedListener implements SoundPool.OnLoadCompleteListener {
        public OnLoadCompletedListener() {
        }

        @Override // android.media.SoundPool.OnLoadCompleteListener
        public void onLoadComplete(SoundPool soundPool, int sampleId, int status) {
            SoundInfoForLoadedCompleted soundInfoForLoadedCompleted;
            if (status == 0 && (soundInfoForLoadedCompleted = (SoundInfoForLoadedCompleted) Cocos2dxSound.this.mPlayWhenLoadedEffects.get(Integer.valueOf(sampleId))) != null) {
                soundInfoForLoadedCompleted.effectID = Cocos2dxSound.this.doPlayEffect(soundInfoForLoadedCompleted.path, sampleId, soundInfoForLoadedCompleted.isLoop, soundInfoForLoadedCompleted.pitch, soundInfoForLoadedCompleted.pan, soundInfoForLoadedCompleted.gain);
                synchronized (soundInfoForLoadedCompleted) {
                    soundInfoForLoadedCompleted.notifyAll();
                }
            }
        }
    }
}
