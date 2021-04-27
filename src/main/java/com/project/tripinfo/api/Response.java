package com.project.tripinfo.api;

import lombok.Data;
import org.springframework.http.StreamingHttpOutputMessage;
import sun.jvm.hotspot.memory.HeapBlock;

@Data
public class Response {
    public HeapBlock.Header header;
    public StreamingHttpOutputMessage.Body body;
}
