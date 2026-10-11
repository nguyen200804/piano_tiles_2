package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Set;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class MediaMetadataCompat implements Parcelable {
    public static final Parcelable.Creator<MediaMetadataCompat> CREATOR;
    private static final ArrayMap<String, Integer> METADATA_KEYS_TYPE = new ArrayMap<>();
    public static final String METADATA_KEY_ALBUM = "android.media.metadata.ALBUM";
    public static final String METADATA_KEY_ALBUM_ART = "android.media.metadata.ALBUM_ART";
    public static final String METADATA_KEY_ALBUM_ARTIST = "android.media.metadata.ALBUM_ARTIST";
    public static final String METADATA_KEY_ALBUM_ART_URI = "android.media.metadata.ALBUM_ART_URI";
    public static final String METADATA_KEY_ART = "android.media.metadata.ART";
    public static final String METADATA_KEY_ARTIST = "android.media.metadata.ARTIST";
    public static final String METADATA_KEY_ART_URI = "android.media.metadata.ART_URI";
    public static final String METADATA_KEY_AUTHOR = "android.media.metadata.AUTHOR";
    public static final String METADATA_KEY_COMPILATION = "android.media.metadata.COMPILATION";
    public static final String METADATA_KEY_COMPOSER = "android.media.metadata.COMPOSER";
    public static final String METADATA_KEY_DATE = "android.media.metadata.DATE";
    public static final String METADATA_KEY_DISC_NUMBER = "android.media.metadata.DISC_NUMBER";
    public static final String METADATA_KEY_DISPLAY_DESCRIPTION = "android.media.metadata.DISPLAY_DESCRIPTION";
    public static final String METADATA_KEY_DISPLAY_ICON = "android.media.metadata.DISPLAY_ICON";
    public static final String METADATA_KEY_DISPLAY_ICON_URI = "android.media.metadata.DISPLAY_ICON_URI";
    public static final String METADATA_KEY_DISPLAY_SUBTITLE = "android.media.metadata.DISPLAY_SUBTITLE";
    public static final String METADATA_KEY_DISPLAY_TITLE = "android.media.metadata.DISPLAY_TITLE";
    public static final String METADATA_KEY_DURATION = "android.media.metadata.DURATION";
    public static final String METADATA_KEY_GENRE = "android.media.metadata.GENRE";
    public static final String METADATA_KEY_MEDIA_ID = "android.media.metadata.MEDIA_ID";
    public static final String METADATA_KEY_NUM_TRACKS = "android.media.metadata.NUM_TRACKS";
    public static final String METADATA_KEY_RATING = "android.media.metadata.RATING";
    public static final String METADATA_KEY_TITLE = "android.media.metadata.TITLE";
    public static final String METADATA_KEY_TRACK_NUMBER = "android.media.metadata.TRACK_NUMBER";
    public static final String METADATA_KEY_USER_RATING = "android.media.metadata.USER_RATING";
    public static final String METADATA_KEY_WRITER = "android.media.metadata.WRITER";
    public static final String METADATA_KEY_YEAR = "android.media.metadata.YEAR";
    private static final int METADATA_TYPE_BITMAP = 2;
    private static final int METADATA_TYPE_LONG = 0;
    private static final int METADATA_TYPE_RATING = 3;
    private static final int METADATA_TYPE_TEXT = 1;
    private static final String[] PREFERRED_BITMAP_ORDER;
    private static final String[] PREFERRED_DESCRIPTION_ORDER;
    private static final String[] PREFERRED_URI_ORDER;
    private static final String TAG = "MediaMetadata";
    private final Bundle mBundle;
    private MediaDescriptionCompat mDescription;
    private Object mMetadataObj;

    @Retention(RetentionPolicy.SOURCE)
    public @interface BitmapKey {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface LongKey {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RatingKey {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TextKey {
    }

    static {
        METADATA_KEYS_TYPE.put(METADATA_KEY_TITLE, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_ARTIST, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_DURATION, 0);
        METADATA_KEYS_TYPE.put(METADATA_KEY_ALBUM, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_AUTHOR, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_WRITER, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_COMPOSER, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_COMPILATION, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_DATE, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_YEAR, 0);
        METADATA_KEYS_TYPE.put(METADATA_KEY_GENRE, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_TRACK_NUMBER, 0);
        METADATA_KEYS_TYPE.put(METADATA_KEY_NUM_TRACKS, 0);
        METADATA_KEYS_TYPE.put(METADATA_KEY_DISC_NUMBER, 0);
        METADATA_KEYS_TYPE.put(METADATA_KEY_ALBUM_ARTIST, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_ART, 2);
        METADATA_KEYS_TYPE.put(METADATA_KEY_ART_URI, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_ALBUM_ART, 2);
        METADATA_KEYS_TYPE.put(METADATA_KEY_ALBUM_ART_URI, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_USER_RATING, 3);
        METADATA_KEYS_TYPE.put(METADATA_KEY_RATING, 3);
        METADATA_KEYS_TYPE.put(METADATA_KEY_DISPLAY_TITLE, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_DISPLAY_SUBTITLE, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_DISPLAY_DESCRIPTION, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_DISPLAY_ICON, 2);
        METADATA_KEYS_TYPE.put(METADATA_KEY_DISPLAY_ICON_URI, 1);
        METADATA_KEYS_TYPE.put(METADATA_KEY_MEDIA_ID, 1);
        PREFERRED_DESCRIPTION_ORDER = new String[]{METADATA_KEY_TITLE, METADATA_KEY_ARTIST, METADATA_KEY_ALBUM, METADATA_KEY_ALBUM_ARTIST, METADATA_KEY_WRITER, METADATA_KEY_AUTHOR, METADATA_KEY_COMPOSER};
        PREFERRED_BITMAP_ORDER = new String[]{METADATA_KEY_DISPLAY_ICON, METADATA_KEY_ART, METADATA_KEY_ALBUM_ART};
        PREFERRED_URI_ORDER = new String[]{METADATA_KEY_DISPLAY_ICON_URI, METADATA_KEY_ART_URI, METADATA_KEY_ALBUM_ART_URI};
        CREATOR = new Parcelable.Creator<MediaMetadataCompat>() { // from class: android.support.v4.media.MediaMetadataCompat.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MediaMetadataCompat createFromParcel(Parcel in) {
                return new MediaMetadataCompat(in);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MediaMetadataCompat[] newArray(int size) {
                return new MediaMetadataCompat[size];
            }
        };
    }

    private MediaMetadataCompat(Bundle bundle) {
        this.mBundle = new Bundle(bundle);
    }

    private MediaMetadataCompat(Parcel in) {
        this.mBundle = in.readBundle();
    }

    public boolean containsKey(String key) {
        return this.mBundle.containsKey(key);
    }

    public CharSequence getText(String key) {
        return this.mBundle.getCharSequence(key);
    }

    public String getString(String key) {
        CharSequence charSequence = this.mBundle.getCharSequence(key);
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    public long getLong(String key) {
        return this.mBundle.getLong(key, 0L);
    }

    public RatingCompat getRating(String key) {
        RatingCompat ratingCompat;
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                ratingCompat = RatingCompat.fromRating(this.mBundle.getParcelable(key));
            } else {
                ratingCompat = (RatingCompat) this.mBundle.getParcelable(key);
            }
            return ratingCompat;
        } catch (Exception e) {
            Log.w(TAG, "Failed to retrieve a key as Rating.", e);
            return null;
        }
    }

    public Bitmap getBitmap(String key) {
        try {
            return (Bitmap) this.mBundle.getParcelable(key);
        } catch (Exception e) {
            Log.w(TAG, "Failed to retrieve a key as Bitmap.", e);
            return null;
        }
    }

    public MediaDescriptionCompat getDescription() {
        int i;
        Bitmap bitmap;
        Uri uri = null;
        if (this.mDescription != null) {
            return this.mDescription;
        }
        String string = getString(METADATA_KEY_MEDIA_ID);
        CharSequence[] charSequenceArr = new CharSequence[3];
        CharSequence text = getText(METADATA_KEY_DISPLAY_TITLE);
        if (!TextUtils.isEmpty(text)) {
            charSequenceArr[0] = text;
            charSequenceArr[1] = getText(METADATA_KEY_DISPLAY_SUBTITLE);
            charSequenceArr[2] = getText(METADATA_KEY_DISPLAY_DESCRIPTION);
        } else {
            int i2 = 0;
            int i3 = 0;
            while (i3 < charSequenceArr.length && i2 < PREFERRED_DESCRIPTION_ORDER.length) {
                int i4 = i2 + 1;
                CharSequence text2 = getText(PREFERRED_DESCRIPTION_ORDER[i2]);
                if (TextUtils.isEmpty(text2)) {
                    i = i3;
                } else {
                    i = i3 + 1;
                    charSequenceArr[i3] = text2;
                }
                i3 = i;
                i2 = i4;
            }
        }
        int i5 = 0;
        while (true) {
            if (i5 >= PREFERRED_BITMAP_ORDER.length) {
                bitmap = null;
                break;
            }
            Bitmap bitmap2 = getBitmap(PREFERRED_BITMAP_ORDER[i5]);
            if (bitmap2 != null) {
                bitmap = bitmap2;
                break;
            }
            i5++;
        }
        int i6 = 0;
        while (true) {
            if (i6 >= PREFERRED_URI_ORDER.length) {
                break;
            }
            String string2 = getString(PREFERRED_URI_ORDER[i6]);
            if (TextUtils.isEmpty(string2)) {
                i6++;
            } else {
                uri = Uri.parse(string2);
                break;
            }
        }
        MediaDescriptionCompat.Builder builder = new MediaDescriptionCompat.Builder();
        builder.setMediaId(string);
        builder.setTitle(charSequenceArr[0]);
        builder.setSubtitle(charSequenceArr[1]);
        builder.setDescription(charSequenceArr[2]);
        builder.setIconBitmap(bitmap);
        builder.setIconUri(uri);
        this.mDescription = builder.build();
        return this.mDescription;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeBundle(this.mBundle);
    }

    public int size() {
        return this.mBundle.size();
    }

    public Set<String> keySet() {
        return this.mBundle.keySet();
    }

    public Bundle getBundle() {
        return this.mBundle;
    }

    public static MediaMetadataCompat fromMediaMetadata(Object metadataObj) {
        if (metadataObj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        MediaMetadataCompatApi21.writeToParcel(metadataObj, obtain, 0);
        obtain.setDataPosition(0);
        MediaMetadataCompat createFromParcel = CREATOR.createFromParcel(obtain);
        obtain.recycle();
        createFromParcel.mMetadataObj = metadataObj;
        return createFromParcel;
    }

    public Object getMediaMetadata() {
        if (this.mMetadataObj != null || Build.VERSION.SDK_INT < 21) {
            return this.mMetadataObj;
        }
        Parcel obtain = Parcel.obtain();
        writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        this.mMetadataObj = MediaMetadataCompatApi21.createFromParcel(obtain);
        obtain.recycle();
        return this.mMetadataObj;
    }

    public static final class Builder {
        private final Bundle mBundle;

        public Builder() {
            this.mBundle = new Bundle();
        }

        public Builder(MediaMetadataCompat source) {
            this.mBundle = new Bundle(source.mBundle);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder putText(String key, CharSequence value) {
            if (MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(key) && ((Integer) MediaMetadataCompat.METADATA_KEYS_TYPE.get(key)).intValue() != 1) {
                throw new IllegalArgumentException("The " + key + " key cannot be used to put a CharSequence");
            }
            this.mBundle.putCharSequence(key, value);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder putString(String key, String value) {
            if (MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(key) && ((Integer) MediaMetadataCompat.METADATA_KEYS_TYPE.get(key)).intValue() != 1) {
                throw new IllegalArgumentException("The " + key + " key cannot be used to put a String");
            }
            this.mBundle.putCharSequence(key, value);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder putLong(String key, long value) {
            if (MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(key) && ((Integer) MediaMetadataCompat.METADATA_KEYS_TYPE.get(key)).intValue() != 0) {
                throw new IllegalArgumentException("The " + key + " key cannot be used to put a long");
            }
            this.mBundle.putLong(key, value);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder putRating(String key, RatingCompat value) {
            if (MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(key) && ((Integer) MediaMetadataCompat.METADATA_KEYS_TYPE.get(key)).intValue() != 3) {
                throw new IllegalArgumentException("The " + key + " key cannot be used to put a Rating");
            }
            if (Build.VERSION.SDK_INT >= 21) {
                this.mBundle.putParcelable(key, (Parcelable) value.getRating());
            } else {
                this.mBundle.putParcelable(key, value);
            }
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder putBitmap(String key, Bitmap value) {
            if (MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(key) && ((Integer) MediaMetadataCompat.METADATA_KEYS_TYPE.get(key)).intValue() != 2) {
                throw new IllegalArgumentException("The " + key + " key cannot be used to put a Bitmap");
            }
            this.mBundle.putParcelable(key, value);
            return this;
        }

        public MediaMetadataCompat build() {
            return new MediaMetadataCompat(this.mBundle);
        }
    }
}
