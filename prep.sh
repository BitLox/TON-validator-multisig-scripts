#!/bin/bash

case "$OSTYPE" in
  darwin*)  os_type="OSX" ;; 
  linux*)   os_type="LINUX" ;; 
  *)        os_type="unknown" ;; 
esac
  
if [ "$os_type" == 'LINUX' ] 
then
  wget http://sdkbinaries.tonlabs.io/tonos-cli-0_6_0-linux.zip
  unzip tonos-cli-0_6_0-linux.zip 
  rm tonos-cli-0_6_0-linux.zip
fi
if [ "$os_type" == 'OSX' ]
then
  wget http://sdkbinaries.tonlabs.io/tonos-cli-0_6_0-darwin.zip
  unzip tonos-cli-0_6_0-darwin.zip 
  rm tonos-cli-0_6_0-darwin.zip
fi

wget https://github.com/tonlabs/ton-labs-contracts/raw/master/solidity/safemultisig/SafeMultisigWallet.abi.json
wget https://github.com/tonlabs/ton-labs-contracts/raw/master/solidity/safemultisig/SafeMultisigWallet.tvc

wget https://raw.githubusercontent.com/BitLox/TON-validator-multisig-scripts/main/check.sh
wget https://raw.githubusercontent.com/BitLox/TON-validator-multisig-scripts/main/filter.sh
wget https://raw.githubusercontent.com/BitLox/TON-validator-multisig-scripts/main/signer.sh
wget https://raw.githubusercontent.com/BitLox/TON-validator-multisig-scripts/main/combo.sh

mkdir data

pwd > data/pwd.txt

function setCustomDepool {
  echo
  echo -e "\tDestination DePool address:"  
  read inputDepool
  customDepool=$inputDepool
  echo $customDepool > data/destination.addr
}

function setCustomValidator {
  echo
  echo -e "\tValidator wallet address:"  
  read inputValidator
  customValidator=$inputValidator
  echo $inputValidator > data/validator.addr
}

function setCustomPhrase {
  echo
  echo -e "\tSecret phrase for the signing (no quotes):"  
  read inputPhrase
  customPhrase=$inputPhrase
  echo $inputPhrase > data/phrase.txt
}

setCustomDepool
setCustomValidator
setCustomPhrase

echo "READY"
exit