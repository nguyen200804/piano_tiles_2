package org.apache.commons.csv;

import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class CSVRecord implements Serializable, Iterable<String> {
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    private static final long serialVersionUID = 1;
    private final long characterPosition;
    private final String comment;
    private final Map<String, Integer> mapping;
    private final long recordNumber;
    private final String[] values;

    CSVRecord(String[] values, Map<String, Integer> mapping, String comment, long recordNumber, long characterPosition) {
        this.recordNumber = recordNumber;
        this.values = values == null ? EMPTY_STRING_ARRAY : values;
        this.mapping = mapping;
        this.comment = comment;
        this.characterPosition = characterPosition;
    }

    public String get(Enum<?> e) {
        return get(e.toString());
    }

    public String get(int i) {
        return this.values[i];
    }

    public String get(String name) {
        if (this.mapping == null) {
            throw new IllegalStateException("No header mapping was specified, the record values can't be accessed by name");
        }
        Integer num = this.mapping.get(name);
        if (num == null) {
            throw new IllegalArgumentException(String.format("Mapping for %s not found, expected one of %s", name, this.mapping.keySet()));
        }
        try {
            return this.values[num.intValue()];
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new IllegalArgumentException(String.format("Index for header '%s' is %d but CSVRecord only has %d values!", name, num, Integer.valueOf(this.values.length)));
        }
    }

    public long getCharacterPosition() {
        return this.characterPosition;
    }

    public String getComment() {
        return this.comment;
    }

    public long getRecordNumber() {
        return this.recordNumber;
    }

    public boolean isConsistent() {
        return this.mapping == null || this.mapping.size() == this.values.length;
    }

    public boolean hasComment() {
        return this.comment != null;
    }

    public boolean isMapped(String name) {
        return this.mapping != null && this.mapping.containsKey(name);
    }

    public boolean isSet(String name) {
        return isMapped(name) && this.mapping.get(name).intValue() < this.values.length;
    }

    @Override // java.lang.Iterable
    public Iterator<String> iterator() {
        return toList().iterator();
    }

    <M extends Map<String, String>> M putIn(M map) {
        if (this.mapping != null) {
            for (Map.Entry<String, Integer> entry : this.mapping.entrySet()) {
                int intValue = entry.getValue().intValue();
                if (intValue < this.values.length) {
                    map.put(entry.getKey(), this.values[intValue]);
                }
            }
        }
        return map;
    }

    public int size() {
        return this.values.length;
    }

    private List<String> toList() {
        return Arrays.asList(this.values);
    }

    public Map<String, String> toMap() {
        return putIn(new HashMap(this.values.length));
    }

    public String toString() {
        return "CSVRecord [comment=" + this.comment + ", mapping=" + this.mapping + ", recordNumber=" + this.recordNumber + ", values=" + Arrays.toString(this.values) + "]";
    }

    String[] values() {
        return this.values;
    }
}
