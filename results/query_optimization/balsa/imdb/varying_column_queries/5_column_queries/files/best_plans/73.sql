/*+ HashJoin(movie_info title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_info ((title movie_companies) cast_info))) */
select count(*) from movie_companies,movie_info,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and cast_info.nr_order>1 and title.kind_id<7 and title.phonetic_code>16957 and title.episode_nr<3 and title.season_nr<1;

