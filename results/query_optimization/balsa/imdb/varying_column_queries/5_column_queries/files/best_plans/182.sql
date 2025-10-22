/*+ NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.nr_order<45 and title.phonetic_code>3636 and title.series_years>0 and title.imdb_index>0 and title.kind_id<6;

