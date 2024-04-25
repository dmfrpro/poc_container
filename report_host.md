`sysbench cpu --threads=100 --time=60 --cpu-max-prime=64000 run`

|     | CPU events/s | total time, s | total # of events | latency min | latency avg | latency max | latency 95p | latency sum | events avg | events stddev | exec time avg | exec time sttdev |
| --- | ------------ | ------------- | ----------------- | ----------- | ----------- | ----------- | ----------- | ----------- | ---------- | ------------- | ------------- | ---------------- |
| 1 | 922.82 | 60.068 | 55433.0 | 11.69 | 108.29 | 188.98 | 125.52 | 6002935.14 | 554.33 | 14.47 | 60.0294 | 0.03 |
| 2 | 921.51 | 60.0604 | 55347.0 | 6.77 | 108.15 | 171.89 | 125.52 | 5985566.24 | 553.47 | 16.84 | 59.8557 | 0.15 |
| 3 | 921.21 | 60.0563 | 55325.0 | 12.0 | 108.48 | 194.08 | 125.52 | 6001655.62 | 553.25 | 12.92 | 60.0166 | 0.02 |
| 4 | 920.76 | 60.0507 | 55293.0 | 6.76 | 108.41 | 225.16 | 125.52 | 5994355.71 | 552.93 | 23.03 | 59.9436 | 0.08 |
| 5 | 920.7 | 60.059 | 55297.0 | 12.23 | 108.46 | 203.04 | 125.52 | 5997331.9 | 552.97 | 10.97 | 59.9733 | 0.06 |
| 6 | 920.3 | 60.0536 | 55268.0 | 12.33 | 108.3 | 168.22 | 125.52 | 5985539.74 | 552.68 | 11.35 | 59.8554 | 0.15 |
| 7 | 920.73 | 60.0578 | 55298.0 | 11.03 | 108.54 | 213.89 | 125.52 | 6001952.41 | 552.98 | 16.4 | 60.0195 | 0.02 |
| 8 | 920.74 | 60.0574 | 55298.0 | 12.78 | 108.53 | 182.13 | 125.52 | 6001487.5 | 552.98 | 15.95 | 60.0149 | 0.02 |
| 9 | 920.76 | 60.0559 | 55298.0 | 6.73 | 108.39 | 185.12 | 125.52 | 5994023.34 | 552.98 | 17.2 | 59.9402 | 0.08 |
| 10 | 920.82 | 60.0563 | 55302.0 | 11.94 | 108.52 | 340.89 | 125.52 | 6001582.46 | 553.02 | 14.21 | 60.0158 | 0.03 |
| Avg | 921.0350 | 60.0575 | 55315.9000 | 10.4260 | 108.4070 | 207.3400 | 125.5200 | 5996643.0060 | 553.1590 | 15.3340 | 59.9664 | 0.0640 |

`sysbench threads --threads=64 --thread-yields=100 --thread-locks=2 run`

|     | total time, s | total # of events | latency min | latency avg | latency max | latency 95p | latency sum | events avg | events stddev | exec time avg | exec time sttdev |
| --- | ------------- | ----------------- | ----------- | ----------- | ----------- | ----------- | ----------- | ---------- | ------------- | ------------- | ---------------- |
| 1 | 10.0041 | 139716.0 | 0.06 | 4.58 | 21.05 | 12.08 | 640096.76 | 2183.0625 | 35.89 | 10.0015 | 0.0 |
| 2 | 10.0038 | 140423.0 | 0.06 | 4.56 | 19.42 | 11.87 | 640095.08 | 2194.1094 | 41.33 | 10.0015 | 0.0 |
| 3 | 10.0043 | 140304.0 | 0.06 | 4.56 | 20.53 | 11.87 | 640116.64 | 2192.25 | 42.34 | 10.0018 | 0.0 |
| 4 | 10.0046 | 140194.0 | 0.06 | 4.57 | 21.63 | 11.87 | 640142.64 | 2190.5312 | 39.22 | 10.0022 | 0.0 |
| 5 | 10.004 | 140366.0 | 0.06 | 4.56 | 20.75 | 11.87 | 640120.15 | 2193.2188 | 44.17 | 10.0019 | 0.0 |
| 6 | 10.004 | 140484.0 | 0.06 | 4.56 | 20.57 | 11.87 | 640108.72 | 2195.0625 | 39.87 | 10.0017 | 0.0 |
| 7 | 10.0042 | 141933.0 | 0.06 | 4.51 | 19.48 | 11.87 | 640111.32 | 2217.7031 | 48.26 | 10.0017 | 0.0 |
| 8 | 10.0041 | 142150.0 | 0.06 | 4.5 | 19.4 | 11.65 | 640106.44 | 2221.0938 | 49.82 | 10.0017 | 0.0 |
| 9 | 10.0041 | 142056.0 | 0.06 | 4.51 | 19.19 | 11.65 | 640094.24 | 2219.625 | 48.22 | 10.0015 | 0.0 |
| 10 | 10.0037 | 141968.0 | 0.06 | 4.51 | 22.12 | 11.87 | 640093.51 | 2218.25 | 44.35 | 10.0015 | 0.0 |
| Avg | 10.0041 | 140959.4000 | 0.0600 | 4.5420 | 20.4140 | 11.8470 | 640108.5500 | 2202.4906 | 43.3470 | 10.0017 | 0.0000 |

`sysbench memory --threads=100 --time=60 --memory-oper=write run`

|     | Ops/s | Mem speed, MiB/s | total time, s | total # of events | latency min | latency avg | latency max | latency 95p | latency sum | events avg | events stddev | exec time avg | exec time sttdev |
| --- | ----- | ---------------- | ------------- | ----------------- | ----------- | ----------- | ----------- | ----------- | ----------- | ---------- | ------------- | ------------- | ---------------- |
| 1 | 9477435.5 | 9255.31 | 11.0632 | 104857600.0 | 0.0 | 0.01 | 43.01 | 0.0 | 955786.12 | 1048576.0 | 0.0 | 9.5579 | 0.19 |
| 2 | 9506536.5 | 9283.73 | 11.0288 | 104857600.0 | 0.0 | 0.01 | 37.01 | 0.0 | 901625.2 | 1048576.0 | 0.0 | 9.0163 | 0.64 |
| 3 | 9465104.96 | 9243.27 | 11.0771 | 104857600.0 | 0.0 | 0.01 | 41.01 | 0.0 | 924667.89 | 1048576.0 | 0.0 | 9.2467 | 0.54 |
| 4 | 9476260.76 | 9254.16 | 11.0645 | 104857600.0 | 0.0 | 0.01 | 51.01 | 0.0 | 929953.68 | 1048576.0 | 0.0 | 9.2995 | 0.52 |
| 5 | 9502692.47 | 9279.97 | 11.0338 | 104857600.0 | 0.0 | 0.01 | 46.01 | 0.0 | 921028.01 | 1048576.0 | 0.0 | 9.2103 | 0.54 |
| 6 | 9499654.93 | 9277.01 | 11.0369 | 104857600.0 | 0.0 | 0.01 | 31.01 | 0.0 | 934396.59 | 1048576.0 | 0.0 | 9.344 | 0.29 |
| 7 | 9439381.12 | 9218.15 | 11.1079 | 104857600.0 | 0.0 | 0.01 | 64.01 | 0.0 | 909928.23 | 1048576.0 | 0.0 | 9.0993 | 0.67 |
| 8 | 9492433.16 | 9269.95 | 11.0457 | 104857600.0 | 0.0 | 0.01 | 61.01 | 0.0 | 913419.64 | 1048576.0 | 0.0 | 9.1342 | 0.66 |
| 9 | 9501589.54 | 9278.9 | 11.0351 | 104857600.0 | 0.0 | 0.01 | 53.0 | 0.0 | 930594.55 | 1048576.0 | 0.0 | 9.3059 | 0.47 |
| 10 | 9474836.67 | 9252.77 | 11.0663 | 104857600.0 | 0.0 | 0.01 | 32.01 | 0.0 | 915816.57 | 1048576.0 | 0.0 | 9.1582 | 0.65 |
| Avg | 9483592.5610 | 9261.3220 | 11.0559 | 104857600.0000 | 0.0000 | 0.0100 | 45.9090 | 0.0000 | 923721.6480 | 1048576.0000 | 0.0000 | 9.2372 | 0.5170 |

`sysbench memory --memory-block-size=1M --memory-total-size=10G run`

|     | Ops/s | Mem speed, MiB/s | total time, s | total # of events | latency min | latency avg | latency max | latency 95p | latency sum | events avg | events stddev | exec time avg | exec time sttdev |
| --- | ----- | ---------------- | ------------- | ----------------- | ----------- | ----------- | ----------- | ----------- | ----------- | ---------- | ------------- | ------------- | ---------------- |
| 1 | 25653.36 | 25653.36 | 0.3984 | 10240.0 | 0.04 | 0.04 | 0.1 | 0.04 | 396.94 | 10240.0 | 0.0 | 0.3969 | 0.0 |
| 2 | 25670.11 | 25670.11 | 0.3973 | 10240.0 | 0.04 | 0.04 | 0.06 | 0.04 | 395.88 | 10240.0 | 0.0 | 0.3959 | 0.0 |
| 3 | 26189.65 | 26189.65 | 0.3894 | 10240.0 | 0.04 | 0.04 | 0.08 | 0.04 | 388.05 | 10240.0 | 0.0 | 0.388 | 0.0 |
| 4 | 26202.07 | 26202.07 | 0.3893 | 10240.0 | 0.04 | 0.04 | 0.09 | 0.04 | 387.88 | 10240.0 | 0.0 | 0.3879 | 0.0 |
| 5 | 26262.37 | 26262.37 | 0.3884 | 10240.0 | 0.04 | 0.04 | 0.1 | 0.04 | 386.91 | 10240.0 | 0.0 | 0.3869 | 0.0 |
| 6 | 26278.41 | 26278.41 | 0.3885 | 10240.0 | 0.04 | 0.04 | 0.07 | 0.04 | 387.14 | 10240.0 | 0.0 | 0.3871 | 0.0 |
| 7 | 26105.04 | 26105.04 | 0.3908 | 10240.0 | 0.04 | 0.04 | 0.1 | 0.04 | 389.32 | 10240.0 | 0.0 | 0.3893 | 0.0 |
| 8 | 26071.21 | 26071.21 | 0.3919 | 10240.0 | 0.04 | 0.04 | 0.09 | 0.04 | 390.41 | 10240.0 | 0.0 | 0.3904 | 0.0 |
| 9 | 25954.46 | 25954.46 | 0.393 | 10240.0 | 0.04 | 0.04 | 0.06 | 0.04 | 391.55 | 10240.0 | 0.0 | 0.3916 | 0.0 |
| 10 | 26046.64 | 26046.64 | 0.3917 | 10240.0 | 0.04 | 0.04 | 0.11 | 0.04 | 390.17 | 10240.0 | 0.0 | 0.3902 | 0.0 |
| Avg | 26043.3320 | 26043.3320 | 0.3919 | 10240.0000 | 0.0400 | 0.0400 | 0.0860 | 0.0400 | 390.4250 | 10240.0000 | 0.0000 | 0.3904 | 0.0000 |

`sysbench fileio --file-total-size=10G --file-test-mode=rndrw --time=120 --time=300 --max-requests=0 run`

|     | ops reads/s | ops writes/s | ops fsyncs/s | throughput read, MiB/s | throughput write, MiB/s | total time, s | total # of events | latency min | latency avg | latency max | latency 95p | latency sum | events avg | events stddev | exec time avg | exec time sttdev |
| --- | ----------- | ------------ | ------------ | ---------------------- | ----------------------- | ------------- | ----------------- | ----------- | ----------- | ----------- | ----------- | ----------- | ---------- | ------------- | ------------- | ---------------- |
| 1 | 929.61 | 619.74 | 1983.17 | 14.53 | 9.68 | 300.0603 | 1059846.0 | 0.0 | 0.28 | 16.92 | 1.39 | 299586.28 | 1059846.0 | 0.0 | 299.5863 | 0.0 |
| 2 | 924.55 | 616.37 | 1972.8 | 14.45 | 9.63 | 300.0132 | 1054040.0 | 0.0 | 0.28 | 14.35 | 1.37 | 299586.31 | 1054040.0 | 0.0 | 299.5863 | 0.0 |
| 3 | 926.22 | 617.48 | 1975.97 | 14.47 | 9.65 | 300.0568 | 1055979.0 | 0.0 | 0.28 | 12.37 | 1.37 | 299579.98 | 1055979.0 | 0.0 | 299.58 | 0.0 |
| 4 | 928.59 | 619.06 | 1981.06 | 14.51 | 9.67 | 300.0653 | 1058721.0 | 0.0 | 0.28 | 14.95 | 1.37 | 299580.65 | 1058721.0 | 0.0 | 299.5807 | 0.0 |
| 5 | 929.51 | 619.67 | 1983.21 | 14.52 | 9.68 | 300.0287 | 1059695.0 | 0.0 | 0.28 | 13.64 | 1.37 | 299577.61 | 1059695.0 | 0.0 | 299.5776 | 0.0 |
| 6 | 924.6 | 616.4 | 1972.55 | 14.45 | 9.63 | 300.0647 | 1054168.0 | 0.0 | 0.28 | 12.21 | 1.37 | 299587.75 | 1054168.0 | 0.0 | 299.5877 | 0.0 |
| 7 | 920.65 | 613.77 | 1964.15 | 14.39 | 9.59 | 300.0473 | 1049614.0 | 0.0 | 0.29 | 14.72 | 1.37 | 299587.57 | 1049614.0 | 0.0 | 299.5876 | 0.0 |
| 8 | 918.12 | 612.08 | 1958.94 | 14.35 | 9.56 | 300.026 | 1046709.0 | 0.0 | 0.29 | 14.0 | 1.37 | 299581.67 | 1046709.0 | 0.0 | 299.5817 | 0.0 |
| 9 | 920.72 | 613.81 | 1964.46 | 14.39 | 9.59 | 300.0249 | 1049663.0 | 0.0 | 0.29 | 12.75 | 1.37 | 299585.59 | 1049663.0 | 0.0 | 299.5856 | 0.0 |
| 10 | 915.46 | 610.3 | 1953.1 | 14.3 | 9.54 | 300.0456 | 1043694.0 | 0.0 | 0.29 | 14.85 | 1.37 | 299591.08 | 1043694.0 | 0.0 | 299.5911 | 0.0 |
| Avg | 923.8030 | 615.8680 | 1970.9410 | 14.4360 | 9.6220 | 300.0433 | 1053212.9000 | 0.0000 | 0.2840 | 14.0760 | 1.3720 | 299584.4490 | 1053212.9000 | 0.0000 | 299.5845 | 0.0000 |