/*+ HashJoin(movie_companies movie_info_idx title movie_keyword)
 HashJoin(movie_info_idx title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_companies)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((movie_companies (movie_info_idx (title movie_keyword)))) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id=1 and title.series_years>0 and title.imdb_index=0 and title.phonetic_code<6426;

