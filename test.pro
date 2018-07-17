import static com.github.forax.pro.Pro.*
import static com.github.forax.pro.builder.Builders.*
import com.github.forax.pro.api.*;

Command test(boolean parallel) {
  return command(() -> {
    tester.parallel(parallel);
    run(tester);  
  });
}

// pro.loglevel("debug")
tester.timeout(99)

// See https://junit.org/junit5/docs/current/user-guide/#running-tests-tag-expressions
//   tester.includeTags(list("integration"))
//   tester.excludeTags(list("slow", "flaky"))

// run "pro" tests, once in serial, once in parallel
run(test(false), test(true))

// run "plugins" tests
tester.moduleExplodedTestPath(path("plugins/tester/target/test/exploded"))
run(test(false), test(true))

/exit
