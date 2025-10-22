/*+ MergeJoin(cast_info title movie_companies movie_keyword movie_info)
 MergeJoin(cast_info title movie_companies movie_keyword)
 MergeJoin(cast_info title movie_companies)
 MergeJoin(title movie_companies)
 IndexScan(cast_info)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((cast_info (title movie_companies)) movie_keyword) movie_info)) */
select count(*) from movie_info,cast_info,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>2 and cast_info.nr_order>0 and movie_keyword.keyword_id>905 and title.season_nr>0;

