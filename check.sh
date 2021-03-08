working_dir=$(cat data/pwd.txt)
${working_dir}/tonos-cli --url https://main.ton.dev run `cat ${working_dir}/data/validator.addr` getTransactions {} --abi ${working_dir}/SafeMultisigWallet.abi.json

