working_dir=$(cat data/pwd.txt)
tx_id=$(cat result3.txt)
${working_dir}/./tonos-cli --url https://main.ton.dev call `cat ${working_dir}/data/validator.addr`  confirmTransaction '{"transactionId": '${tx_id}'}' --abi ${working_dir}/SafeMultisigWallet.abi.json  --sign "`cat ${working_dir}/data/phrase.txt`" 
rm result1.txt
rm result2.txt
rm result3.txt
