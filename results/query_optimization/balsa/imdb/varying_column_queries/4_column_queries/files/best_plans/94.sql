/*+ HashJoin(cast_info movie_companies movie_info title movie_keyword)
 HashJoin(movie_companies movie_info title movie_keyword)
 MergeJoin(movie_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 SeqScan(title)
 SeqScan(movie_keyword)
 Leading((cast_info (movie_companies (movie_info (title movie_keyword))))) */
select count(*) from movie_info,cast_info,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>2 and cast_info.nr_order>0 and movie_keyword.keyword_id>905 and title.season_nr>0;

