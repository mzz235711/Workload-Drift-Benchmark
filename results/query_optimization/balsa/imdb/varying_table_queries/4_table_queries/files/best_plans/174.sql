/*+ HashJoin(cast_info movie_keyword title movie_companies)
 MergeJoin(movie_keyword title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (movie_keyword (title movie_companies)))) */
select count(*) from cast_info,movie_keyword,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>52 and movie_companies.company_type_id<2 and title.season_nr>0;

