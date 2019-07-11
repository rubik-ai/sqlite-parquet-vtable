FROM ubuntu:16.04
RUN apt-get update \
 && apt-get install -y \
            lsb-release \
            wget \
            git \
            sudo \
            curl
RUN git clone https://github.com/rubik-ai/sqlite-parquet-vtable.git
WORKDIR sqlite-parquet-vtable
RUN wget https://s3.amazonaws.com/cldellow/public/libparquet/libparquet.so.xz \
 && unxz libparquet.so.xz
RUN ./make-linux
