.PHONY: test install

all: install

BINDIR ?= ~/bin
BINARY ?= jifi

JIRADIR = ~/.jira.d
ROFIDIR = ~/.config/rofi

test:
	@echo -e '--> Running prerequisities check'
	@which rofi >/dev/null || (echo -e "Missing Rofi. Install it using your distro's package manager.\n" && false)
	@which jira >/dev/null || (echo -e "Missing GoJira CLI tool. Install it using:\n\n\tgo get gopkg.in/Netflix-Skunkworks/go-jira.v1/cmd/jira\n" && false)
	@which notify-send >/dev/null || (echo -e "Missing libnotify send tool. Install it using your distro's package manager. It should be part of `libnotify`.\n" && false)
	@echo -e '--> System is properly ready for installation ;)'

install: test
	mkdir -p ${JIRADIR}/templates ${JIRADIR}/commands ${JIRADIR}/cache ${BINDIR}
	install -CTm 755 jifi ${BINDIR}/${BINARY}
	install -CTm 755 config.yml ${JIRADIR}/config.yml
	find templates -type f | xargs install -Cm 644 -t ${JIRADIR}/templates
	find commands -type f | xargs install -Cm 644 -t ${JIRADIR}/commands
	@echo -e '--> Install finished'

