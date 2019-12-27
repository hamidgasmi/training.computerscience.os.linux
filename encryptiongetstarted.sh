#Symmetric Encryption 
gpg -c fileNameToEncypt #We'll be asked to enter a "Pass Phrase": EncryptionKey
#Symmetric Decryption 
gpg -o outputfileCipherText inputEncryptedFileName
#Asymmetric Encryption 
##Generate multi part keys: # 
gpg --gen-key 
##Export the public part of the generated keys: # 
gpg --armor --output pubkey.txt --export 'Hamid' 
##Encrypt a message for a recipient # 
gpg --encrypt --recipient 'Hamid' hiddenmessage.txt 
##Decryption: gpg will use the private key# 
gpg --output decrypted.txt --decrypt hiddenmessage.txt.gpg 
#Backup a private key
gpg --armor --output privkey.asc --export-secret-keys 'Hamid'