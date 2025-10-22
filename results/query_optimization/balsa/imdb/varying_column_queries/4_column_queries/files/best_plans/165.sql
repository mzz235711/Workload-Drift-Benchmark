/*+ HashJoin(movie_keyword title)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id<26514 and title.season_nr>0 and title.series_years>0 and title.phonetic_code<12240;

