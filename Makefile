BIN_DIR := /usr/local/bin
SYSTEMD_DIR := /etc/systemd/system

.PHONY: install uninstall

install:
	install -m 755 -v proxpi.sh $(BIN_DIR)
	install -m 644 -v proxpi.service $(SYSTEMD_DIR)
	systemctl enable proxpi.service
	systemctl start proxpi.service

uninstall:
	systemctl disable proxpi.service
	systemctl stop proxpi.service
	rm -f $(SYSTEMD_DIR)/proxpi.service
	rm -f $(BIN_DIR)/proxpi.sh
	rm -rf /var/cache/proxpi
