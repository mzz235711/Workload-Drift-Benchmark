for dir in */; do
    if [ -d "$dir" ]; then
	cd $dir 
        mv lero_stats.log_stats_test_model_9 output.log
	mv stats_test_model_9 model 	
	rm lero*
	rm dump*
	rm -r stats*
	cd ..
    fi
done
