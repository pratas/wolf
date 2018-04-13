#!/bin/bash
GET_GOOSE=1;
GET_FALCON=1;
GET_WOLF=1;
FILTER_TRIM=1;
RUN_FALCON=1;
#==============================================================================
# GET GOOSE
if [[ "$GET_GOOSE" -eq "1" ]]; then
  rm -fr goose*
  git clone https://github.com/pratas/goose.git
  cd goose/src/
  make
  cp goose-* ../../
  cd ../../
fi
#==============================================================================
# GET FALCON
if [[ "$GET_FALCON" -eq "1" ]]; then
  git clone https://github.com/pratas/falcon.git
  cd falcon/src/
  cmake .
  make
  cp FALCON ../../
  cp FALCON-FILTER ../../
  cp FALCON-EYE ../../
  cd ../../
fi
#==============================================================================
# GET WOLF
if [[ "$GET_WOLF" -eq "1" ]]; then
  wget ftp://ftp.sra.ebi.ac.uk/vol1/ERA434/ERA434629/fastq/Taimyr1.131211.UDGminus.Kircher_merged.fastq.gz # -
  wget ftp://ftp.sra.ebi.ac.uk/vol1/ERA434/ERA434629/fastq/Taimyr1.140205.UDGplus.seqprep_merged.fastq.gz # +
  wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR868/ERR868146/ERR868146.fastq.gz #MAYBE THE LIBRARY?
  wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR868/ERR868147/ERR868147.fastq.gz #MAYBE THE LIBRARY?
fi
#==============================================================================
# FILTER_TRIM
if [[ "$FILTER_TRIM" -eq "1" ]]; then
  echo "void";
fi
#==============================================================================
# RUN FALCON
if [[ "$RUN_FALCON" -eq "1" ]]; then
  echo "void";
fi
#==============================================================================

