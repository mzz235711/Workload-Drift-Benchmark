/*+ HashJoin(movie_keyword title movie_companies cast_info)
 MergeJoin(movie_keyword title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(cast_info)
 Leading(((movie_keyword (title movie_companies)) cast_info)) */
select count(*) from movie_companies,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id<8 and title.episode_nr>0;

