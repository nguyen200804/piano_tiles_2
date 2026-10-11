package org.apache.commons.io.input;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface TailerListener {
    void fileNotFound();

    void fileRotated();

    void handle(Exception exc);

    void handle(String str);

    void init(Tailer tailer);
}
