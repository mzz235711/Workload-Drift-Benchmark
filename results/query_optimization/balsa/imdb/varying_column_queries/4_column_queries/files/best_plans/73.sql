/*+ NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((title movie_keyword)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id<97682 and title.phonetic_code<7321 and title.imdb_index=0 and title.episode_nr>0;

