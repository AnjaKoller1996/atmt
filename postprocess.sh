infile=model_trans_bpe.txt # raw translations as input to sacrebleu
outfile=model_trans_bpe.out
lang=en

cat $infile | perl moses_scripts/detruecase.perl | perl moses_scripts/detokenizer.perl -q -l $lang > $outfile
cat $outfile | sacrebleu baseline/preprocessed_data/test.en
# cat $model_translations_lexicalmodel.out | sacrebleu baseline/preprocessed_data/test.en

# cat model_translations.out | sacrebleu indomain/raw_data/test.en
# bash postprocess.sh model_translations.txt model_translations.out en
# cat befehl --> computes bleu score of our translation given the reference translation from the raw data folder