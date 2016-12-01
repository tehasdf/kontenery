gpg --batch --gen-key gpg-batch


gpg --no-default-keyring --secret-keyring ./rkt.sec --keyring ./rkt.pub --list-keys

gpg --no-default-keyring \
--secret-keyring ./rkt.sec \
--keyring ./rkt.pub \
--edit-key 06B17269 \            <---- ZMIEN TUTAJ
trust




gpg --no-default-keyring --armor \
--secret-keyring ./rkt.sec --keyring ./rkt.pub \
--export carly@example.com > pubkeys.gpg

gpg --no-default-keyring --armor \
--secret-keyring ./rkt.sec --keyring ./rkt.pub \
--output FILENAME.asc \
--detach-sig FILENAME

gpg --no-default-keyring \
--secret-keyring ./rkt.sec --keyring ./rkt.pub \
--verify FILENAME_TUTAJ