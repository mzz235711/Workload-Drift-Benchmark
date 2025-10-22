/*+ NestLoop(title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_keyword) cast_info)) */
select count(*) from movie_companies,movie_keyword,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<101914 and cast_info.role_id>1 and title.episode_nr>0 and title.phonetic_code<167;

