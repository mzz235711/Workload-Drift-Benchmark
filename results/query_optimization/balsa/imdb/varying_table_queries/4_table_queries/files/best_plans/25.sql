/*+ HashJoin(movie_info cast_info title movie_companies)
 MergeJoin(cast_info title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (cast_info (title movie_companies)))) */
select count(*) from movie_companies,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.nr_order>1 and movie_info.info_type_id<16 and title.season_nr>0;

