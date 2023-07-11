sed -i '1s/^/caption\turl\n/' webdataset.tsv #add column names in 1 row
img2dataset --url_list webdataset.tsv --input_format "tsv"\
         --url_col "url" --caption_col "caption" --output_format webdataset\
           --output_folder webdataset --processes_count 16 --thread_count 64 --image_size 256\
             --enable_wandb True