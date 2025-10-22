/*+ HashJoin(movie_info movie_keyword movie_companies title)
 MergeJoin(movie_keyword movie_companies title)
 HashJoin(movie_companies title)
 IndexScan(movie_info)
 IndexScan(movie_keyword)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_info (movie_keyword (movie_companies title)))) */
select count(*) from movie_companies,movie_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id>412 and title.production_year<120;

