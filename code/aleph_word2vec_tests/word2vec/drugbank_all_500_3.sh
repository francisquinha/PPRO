#!/bin/bash

yap -s5000 -h20000 <<+
[aleph].
read_all(drugbank_all_500_3).
induce.
+
