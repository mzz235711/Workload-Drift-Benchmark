/*+ HashJoin(movie_info movie_keyword title movie_companies)
 HashJoin(movie_keyword title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (movie_keyword (title movie_companies)))) */
select count(*) from movie_keyword,movie_companies,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>3 and movie_info.info_type_id>5 and title.season_nr=0;

