/*+ HashJoin(title movie_keyword cast_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 SeqScan(cast_info)
 Leading(((title movie_keyword) cast_info)) */
select count(*) from movie_keyword,cast_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>117 and cast_info.role_id<10 and title.production_year<113 and title.phonetic_code>9807 and title.imdb_index=0 and title.episode_nr<26;

