#!/bin/bash

./build/ARM/gem5.opt -d fibonacci_minor configs/example/se.py --cpu-type=MinorCPU --caches -c our_program/fibonacci_arm
./build/ARM/gem5.opt -d fibonacci_timingsimple configs/example/se.py --cpu-type=TimingSimpleCPU --caches -c our_program/fibonacci_arm

./build/ARM/gem5.opt -d fibonacci_minor_500MHz configs/example/se.py --cpu-type=MinorCPU --cpu-clock=500MHz --caches -c our_program/fibonacci_arm
./build/ARM/gem5.opt -d fibonacci_minor_1000MHz configs/example/se.py --cpu-type=MinorCPU --cpu-clock=1000MHz --caches -c our_program/fibonacci_arm
./build/ARM/gem5.opt -d fibonacci_timingsimple_500MHz configs/example/se.py --cpu-type=TimingSimpleCPU --cpu-clock=500MHz --caches -c our_program/fibonacci_arm
./build/ARM/gem5.opt -d fibonacci_timingsimple_1000MHz configs/example/se.py --cpu-type=TimingSimpleCPU --cpu-clock=1000MHz --caches -c our_program/fibonacci_arm

./build/ARM/gem5.opt -d fibonacci_minor_DDR3 configs/example/se.py --cpu-type=MinorCPU --mem-type=DDR3_1600_8x8 --caches -c our_program/fibonacci_arm
./build/ARM/gem5.opt -d fibonacci_minor_DDR4 configs/example/se.py --cpu-type=MinorCPU --mem-type=DDR4_2400_8x8 --caches -c our_program/fibonacci_arm
./build/ARM/gem5.opt -d fibonacci_timingsimple_DDR3 configs/example/se.py --cpu-type=TimingSimpleCPU --mem-type=DDR3_1600_8x8 --caches -c our_program/fibonacci_arm
./build/ARM/gem5.opt -d fibonacci_timingsimple_DDR4 configs/example/se.py --cpu-type=TimingSimpleCPU --mem-type=DDR4_2400_8x8 --caches -c our_program/fibonacci_arm
