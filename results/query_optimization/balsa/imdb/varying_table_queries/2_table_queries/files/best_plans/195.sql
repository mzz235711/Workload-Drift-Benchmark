/*+ MergeJoin(cast_info title)
 IndexScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.production_year<127 and title.season_nr>0 and title.series_years>0 and title.episode_nr>0;

