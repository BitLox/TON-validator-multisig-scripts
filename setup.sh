#!/bin/bash


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
	