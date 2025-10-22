/*+ MergeJoin(cast_info title movie_companies movie_keyword)
 NestLoop(title movie_companies movie_keyword)
 MergeJoin(title movie_companies)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((cast_info ((title movie_companies) movie_keyword))) */
select count(*) from cast_info,movie_keyword,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<31 and movie_keyword.keyword_id<34960 and title.phonetic_code>0 and title.imdb_index=0 and title.production_year>77 and title.season_nr>0;

