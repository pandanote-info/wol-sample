VAR_ADM_DIR=/var/adm/bin

install:
	if [ ! -d $(VAR_ADM_DIR) ]; \
	then \
		mkdir -p $(VAR_ADM_DIR) ; \
	fi ; \
	install -m 0755 ether-wake.sh $(VAR_ADM_DIR) ; \
	install -m 0644 wol.service /usr/lib/systemd/system ; \
	chcon -t bin_t $(VAR_ADM_DIR)/ether-wake.sh ; \
	systemctl daemon-reload

clean:
	rm -f *~
