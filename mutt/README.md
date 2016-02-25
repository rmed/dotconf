# Mutt config

Configurations for mutt as mail client.

## Requirements

- mutt (view)
- offlineimap (receive)
- msmtp (send)
- abook (optional, for addresses)
- [python keyring](https://pypi.python.org/pypi/keyring)

## Usage

Just dump every file and directory into `~/` and modify things to create new
accounts.

My password management is done through the GNOME keyring using a python module
(`keyring`) and setting `mail` as the service for the password. This way,
I simply reuse it for both `msmtp` and `offlineimap`.

The mailboxes are located in `/var/mail` and by default I onlyy synchronize the
gmail **inbox** and **sent** mail folders.

## Background sync

I have been using [mailnag](https://github.com/pulb/mailnag) for a while in
order to get mail notifications. When a new mail arrives, and so that I don't
need to manually sync mails within mutt, I have configured it to call
`~/.mutt/scripts/mail-sync.sh`, which runs offlineimap in background.
