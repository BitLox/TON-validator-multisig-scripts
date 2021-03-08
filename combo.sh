working_dir=$(cat data/pwd.txt)
${working_dir}/./check.sh | ${working_dir}/./filter.sh | xargs ${working_dir}/./signer.sh

