FROM espressif/idf

ENV IDF_PATH=/esp/sdk
ENV PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/esp/sdk/components/esptool_py/esptool:/esp/sdk/components/partition_table:/esp/sdk/tools:/esp/xtensa-lx106-elf/bin

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
