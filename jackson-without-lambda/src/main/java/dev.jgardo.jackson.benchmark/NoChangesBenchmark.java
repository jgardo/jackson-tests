package dev.jgardo.jackson.benchmark;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.openjdk.jmh.annotations.*;
import org.openjdk.jmh.runner.Runner;
import org.openjdk.jmh.runner.options.Options;
import org.openjdk.jmh.runner.options.OptionsBuilder;
import org.openjdk.jmh.runner.options.TimeValue;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.Scanner;
import java.util.concurrent.TimeUnit;

@State(Scope.Benchmark)
public class NoChangesBenchmark {

    private static final ObjectMapper OBJECT_MAPPER = new ObjectMapper();

    @Param({""})
    private String fileName;

    @Param({""})
    private String className;

    private String content;
    private Class<?> targetClass;

    public static void main(String[] args) throws Exception {
        Options opt = new OptionsBuilder()
                .include(NoChangesBenchmark.class.getSimpleName())
                .forks(1)
                .warmupTime(TimeValue.seconds(10))
                .warmupIterations(3)
                .measurementIterations(10)
                .measurementTime(TimeValue.seconds(10))
                .mode(Mode.AverageTime)
                .threads(1)
                .param("fileName", args[0])
                .param("className", args[1])
                .build();
        new Runner(opt).run();
    }

    @Setup
    public void setup() throws Exception{
        InputStream inputStream = NoChangesBenchmark.class.getResourceAsStream(fileName);
        try (Scanner scanner = new Scanner(inputStream, StandardCharsets.UTF_8.name())) {
            content = scanner.useDelimiter("\\A").next();
        }
        targetClass = Class.forName(className);
    }

    @Benchmark
    @Fork(1)
    @Warmup(time = 10, iterations = 3)
    @Measurement(time = 10, iterations = 10)
    @BenchmarkMode(Mode.AverageTime)
    @OutputTimeUnit(TimeUnit.NANOSECONDS)
    public Object benchmark() throws IOException {
        return OBJECT_MAPPER.readValue(content, targetClass);
    }
}
