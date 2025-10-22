/*+ MergeJoin(cast_info title)
 IndexScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.phonetic_code>0 and title.series_years>0;

