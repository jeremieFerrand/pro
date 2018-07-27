package com.github.forax.pro.main.runner;

import java.nio.file.Path;
import java.util.List;
import java.util.Optional;

public interface ConfigRunner {
  public Optional<Runnable> accept(Path configFile, PropertySequence propertySeq, List<String> arguments);
}
