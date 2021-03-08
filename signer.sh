working_dir=$(cat data/pwd.txt)
tx_id=$(cat ${working_dir}/result3.txt)
${working_dir}/./tonos-cli --url https://main.ton.dev call `cat ${working_dir}/data/validator.addr`  confirmTransaction '{"transactionId": '${tx_id}'}' --abi ${working_dir}/SafeMultisigWallet.abi.json  --sign "`cat ${working_dir}/data/phrase.txt`" 
rm ${working_dir}/result1.txt
rm ${working_dir}/result2.txt
rm ${working_dir}/result3.txt
