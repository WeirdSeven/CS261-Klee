klee --simplify-sym-indices --write-cvcs --write-cov --output-module \  
\--max-memory=1000 --disable-inlining --optimize --use-forked-solver \  
\--use-cex-cache --libc=uclibc --posix-runtime \  
\--allow-external-sym-calls --only-output-states-covering-new \  
\--environ=test.env --run-in=/tmp/sandbox \  
\--max-sym-array-size=4096 --max-instruction-time=30. --max-time=3600. \  
\--watchdog --max-memory-inhibit=false --max-static-fork-pct=1 \  
\--max-static-solve-pct=1 --max-static-cpfork-pct=1 --switch-type=internal \  
\--randomize-fork --search=random-path --search=nurs:covnew \  
\--use-batching-search --batch-instructions=10000 \  
./paste.bc --sym-args 0 1 10 --sym-args 0 2 2 --sym-files 1 8 --sym-stdin 8 --sym-stdout
