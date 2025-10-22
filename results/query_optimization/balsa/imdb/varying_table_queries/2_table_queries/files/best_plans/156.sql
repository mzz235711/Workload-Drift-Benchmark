/*+ MergeJoin(cast_info title)
 IndexScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.kind_id=7 and title.series_years>0 and title.production_year<126 and title.phonetic_code<21025;

