function yubact
  ssh-add -D && ssh-add -e /usr/lib/x86_64-linux-gnu/opensc-pkcs11.so
  ssh-add -s /usr/lib/x86_64-linux-gnu/opensc-pkcs11.so
end
