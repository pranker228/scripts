while true; do (echo "%CPU %MEM ARGS $(date)" && ps -eo pcpu,pmem,args --sort=pcpu | cut -d" " -f1-5  | tail | head -n -5) >> cpu_mem.log; sleep 5; done

