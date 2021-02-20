PWD                 = $(shell pwd)
PWDQ                = $(shell pwd | sed 's_/_\\/_g')

create-launcher:
	@echo ${PWDQ}
	@cp phpMyAdmin.desktop.dist phpMyAdmin.desktop
	@sed -i s@/PATH/TO@${PWDQ}@ phpMyAdmin.desktop

start:
	@npm start

stop:
	@npm stop
