/*+ HashJoin(movie_companies title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((movie_companies (title movie_keyword))) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id>348 and title.imdb_index=0 and title.phonetic_code<16344 and title.series_years>0 and title.kind_id<7;

