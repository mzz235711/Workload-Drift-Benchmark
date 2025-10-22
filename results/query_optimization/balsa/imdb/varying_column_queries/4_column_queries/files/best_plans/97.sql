/*+ HashJoin(movie_companies movie_info_idx title movie_keyword)
 HashJoin(movie_info_idx title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_companies)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((movie_companies (movie_info_idx (title movie_keyword)))) */
select count(*) from movie_info_idx,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id<2 and title.series_years>0 and title.production_year>16 and title.phonetic_code<15908;

