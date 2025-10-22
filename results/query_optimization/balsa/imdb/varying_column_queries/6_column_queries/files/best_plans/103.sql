/*+ NestLoop(title movie_companies movie_keyword movie_info_idx)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info_idx)
 Leading((((title movie_companies) movie_keyword) movie_info_idx)) */
select count(*) from movie_keyword,movie_info_idx,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id<130892 and movie_info_idx.info_type_id=100 and movie_companies.company_type_id>1 and title.episode_nr>0 and title.season_nr>0 and title.phonetic_code>18430;

