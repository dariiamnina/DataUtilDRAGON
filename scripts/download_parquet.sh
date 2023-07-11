# files from https://the-eye.eu/public/AI/cah/laion400m-met-release/laion400m-meta/
img2dataset --url_list laion400m-meta/part-00000-5b54c5d5-bbcf-484d-a2ce-0d6f73df1a36-c000.snappy.parquet --input_format "parquet"\
         --url_col "URL" --caption_col "TEXT" --output_format webdataset\
           --output_folder mock_data/laion400m-met-release --processes_count 16 --thread_count 128 --image_size 256\
             --save_additional_columns '["NSFW","similarity","LICENSE"]' --enable_wandb True