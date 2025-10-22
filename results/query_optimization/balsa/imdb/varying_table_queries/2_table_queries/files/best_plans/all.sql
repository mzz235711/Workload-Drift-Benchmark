/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.phonetic_code>0 and title.season_nr=0 and title.series_years>0;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.phonetic_code>0 and title.production_year>77 and title.kind_id=7;

/*+ MergeJoin(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.nr_order>3 and title.kind_id=7;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.phonetic_code>0 and title.season_nr<12 and title.imdb_index=0 and title.kind_id=1;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.production_year>24 and title.imdb_index=0 and title.episode_nr<1216 and title.series_years>0;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.imdb_index=0 and title.production_year<126;

/*+ MergeJoin(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.season_nr<8;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.series_years>0 and title.production_year<124 and title.episode_nr>0 and title.kind_id>1;

/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id=101 and title.production_year>125;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.episode_nr<30 and title.kind_id>1 and title.season_nr<6 and title.phonetic_code<15854;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.phonetic_code<17697;

/*+ HashJoin(movie_companies title)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.phonetic_code<16921;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.phonetic_code>0 and title.kind_id=7;

/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.episode_nr>0;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.kind_id=1 and title.imdb_index>0 and title.season_nr=0;

/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.imdb_index=0 and title.season_nr>0 and title.production_year<125;

/*+ MergeJoin(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.role_id>1 and title.production_year<123;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id<18 and title.production_year<60 and title.kind_id>1;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.season_nr>0 and title.series_years<1381 and title.phonetic_code<20029 and title.kind_id=7;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.episode_nr>0 and title.production_year>35 and title.kind_id=7 and title.imdb_index=0;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.series_years>0 and title.episode_nr>0 and title.phonetic_code<17702 and title.season_nr<16;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.episode_nr<153 and title.kind_id=7 and title.season_nr>0;

/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.role_id=11 and title.episode_nr<15 and title.series_years>0;

/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.role_id=1 and title.phonetic_code>0 and title.kind_id=7 and title.production_year>121 and title.series_years>0;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.episode_nr>0 and title.season_nr<4 and title.imdb_index=0;

/*+ MergeJoin(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.imdb_index=0 and title.production_year<127;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id<62602 and title.episode_nr>0;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.episode_nr<48 and title.kind_id<7 and title.phonetic_code>0;

/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.episode_nr>0 and title.production_year<128 and title.season_nr>0;

/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id>99 and title.series_years>782;

/*+ MergeJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.imdb_index=1;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.production_year>76 and title.episode_nr>0;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.kind_id<7;

/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id=99 and title.production_year>126 and title.imdb_index=0 and title.phonetic_code<10568;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id>3 and title.production_year<109;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id<35311 and title.episode_nr>0 and title.production_year<103;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.phonetic_code<19400 and title.series_years>0 and title.imdb_index=0 and title.kind_id<7;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id>56 and title.production_year<114;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id=101 and title.production_year<126;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.season_nr=0;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id>658 and title.kind_id<3 and title.imdb_index>0 and title.production_year>114;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id<8725 and title.production_year<57 and title.kind_id=1;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.phonetic_code<18280;

/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.nr_order>0 and title.episode_nr>12;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id=1 and title.imdb_index>0 and title.episode_nr<14 and title.series_years>0;

/*+ MergeJoin(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.role_id>1 and title.season_nr<1;

/*+ HashJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id>1 and title.production_year<127;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.phonetic_code<18169 and title.season_nr=0 and title.kind_id>1 and title.production_year<125;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.phonetic_code<16973 and title.production_year>0;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.series_years>0;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id<94 and title.imdb_index>0;

/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.role_id=10 and title.series_years>0 and title.season_nr=0;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.production_year>67 and title.series_years>0;

/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.phonetic_code<18888 and title.episode_nr<15 and title.kind_id=1;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id>99 and title.episode_nr>0;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.season_nr=0 and title.phonetic_code>0;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.series_years>0 and title.production_year>69 and title.phonetic_code<20984 and title.episode_nr>0;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id<98 and title.production_year>55 and title.season_nr>0;

/*+ MergeJoin(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.episode_nr<180;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id<71 and title.series_years>0 and title.production_year>68 and title.kind_id=7;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.imdb_index=0 and title.episode_nr<29;

/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.nr_order>0 and title.episode_nr>8 and title.production_year<89;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.kind_id<7;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.imdb_index>0 and title.series_years>0 and title.production_year<125;

/*+ MergeJoin(cast_info title)
 IndexScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.kind_id=7 and title.series_years>0 and title.production_year<126 and title.phonetic_code<21025;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id<94 and title.season_nr=0;

/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id>99 and title.kind_id=1;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.kind_id<7;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id<16 and title.production_year<120;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.phonetic_code>0 and title.production_year>68 and title.episode_nr<19;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.kind_id>1 and title.imdb_index>0 and title.production_year>91 and title.phonetic_code>0;

/*+ MergeJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.role_id>1 and title.imdb_index>0 and title.phonetic_code<4063 and title.series_years>0;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.kind_id=1 and title.production_year<125;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id<106 and title.phonetic_code<5478 and title.series_years>0 and title.imdb_index=0;

/*+ NestLoop(title cast_info)
 SeqScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.production_year<126 and title.kind_id=7 and title.imdb_index=0;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.kind_id=7 and title.season_nr=4;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.series_years>0;

/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.kind_id<7 and title.phonetic_code>0;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.production_year<126 and title.episode_nr>0 and title.series_years<1349;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.phonetic_code<20956 and title.production_year>77;

/*+ HashJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.kind_id>3;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id<18 and title.episode_nr>0;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.imdb_index>0;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.kind_id<7 and title.season_nr<2 and title.production_year>0;

/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.season_nr=1;

/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.production_year<123 and title.season_nr=0;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id=2 and title.season_nr=0 and title.imdb_index=0 and title.production_year<127;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.phonetic_code>0;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.production_year<126 and title.series_years>0;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.season_nr>0 and title.episode_nr>0;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.kind_id=1;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id<18 and title.season_nr>0 and title.phonetic_code<871;

/*+ HashJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.kind_id=7;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.phonetic_code>0;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.episode_nr>0 and title.kind_id=7;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id>99 and title.episode_nr>0 and title.imdb_index=0;

/*+ MergeJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.kind_id<7 and title.phonetic_code>0 and title.production_year>25 and title.imdb_index>0;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id>1 and title.series_years>0;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id>99 and title.phonetic_code>2678;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.season_nr=0 and title.episode_nr<5843;

/*+ MergeJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.imdb_index>0 and title.production_year>68;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id<18 and title.production_year<112 and title.phonetic_code>757 and title.kind_id=1 and title.imdb_index>0;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.production_year>103 and title.imdb_index>0;

/*+ MergeJoin(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.season_nr<3;

/*+ MergeJoin(cast_info title)
 IndexScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.season_nr<8 and title.series_years>0;

/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.season_nr>0 and title.episode_nr>0;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id=101 and title.kind_id<3;

/*+ MergeJoin(cast_info title)
 IndexScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.production_year<127 and title.season_nr>0 and title.series_years>0 and title.episode_nr>0;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id<97871 and title.imdb_index>0;

/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.role_id=6 and title.season_nr=1;

/*+ NestLoop(title cast_info)
 SeqScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.season_nr<8 and title.kind_id>1 and title.production_year<127;

/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.nr_order>1 and title.production_year<69;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.phonetic_code<22816 and title.kind_id>1;

/*+ MergeJoin(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.nr_order>1 and title.season_nr>0;

/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.episode_nr>0;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.phonetic_code>0 and title.episode_nr>0;

/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.production_year<67 and title.kind_id=1;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id>331 and title.phonetic_code<1445 and title.series_years>0 and title.episode_nr>0;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.series_years>0 and title.phonetic_code>0;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.kind_id>1 and title.production_year>25 and title.series_years>0;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.episode_nr>0;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.kind_id>1 and title.episode_nr>0 and title.phonetic_code>0;

/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.kind_id<7;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.kind_id=7 and title.phonetic_code>0;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id>580 and title.production_year>119;

/*+ MergeJoin(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.production_year>0;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id>25 and title.kind_id=1;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id<69906 and title.episode_nr<89 and title.production_year<116 and title.series_years>0;

/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.production_year>69 and title.season_nr<1 and title.kind_id<7 and title.imdb_index=0;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.phonetic_code>0 and title.production_year>87;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.series_years>0 and title.kind_id>1;

/*+ NestLoop(title cast_info)
 SeqScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.kind_id=7 and title.production_year<127 and title.season_nr<4 and title.phonetic_code>0;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id<66592 and title.season_nr=0 and title.production_year<109;

/*+ MergeJoin(cast_info title)
 IndexScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.production_year<128 and title.series_years>0 and title.phonetic_code>0;

/*+ MergeJoin(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.imdb_index=0;

/*+ MergeJoin(movie_info title)
 IndexScan(movie_info)
 IndexScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.season_nr<8;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.phonetic_code>0 and title.production_year>0;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id=101 and title.production_year>82;

/*+ MergeJoin(cast_info title)
 IndexScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.episode_nr>0 and title.phonetic_code<20999 and title.production_year<126 and title.series_years>0;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id>117 and title.episode_nr<30 and title.season_nr=1 and title.imdb_index=0;

/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.nr_order<52 and title.production_year<50;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id<84433 and title.episode_nr>0 and title.phonetic_code>1921;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id>99 and title.episode_nr>0 and title.phonetic_code>18145 and title.season_nr>0 and title.production_year>119;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id>1 and title.production_year<124 and title.series_years>0 and title.season_nr=0;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.episode_nr<105 and title.production_year>26;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.season_nr<2 and title.imdb_index=0 and title.production_year>66;

/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.episode_nr<6102 and title.phonetic_code<17102 and title.season_nr>0;

/*+ MergeJoin(cast_info title)
 IndexScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.phonetic_code>0 and title.series_years>0;

/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.phonetic_code>0 and title.series_years<1387 and title.season_nr>0 and title.kind_id>1;

/*+ HashJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.phonetic_code<19005;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.production_year<125 and title.kind_id<4 and title.phonetic_code<7081 and title.imdb_index>0;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.season_nr<32 and title.kind_id>1 and title.production_year>88;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.imdb_index>0;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id>50 and title.phonetic_code>10842;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.series_years>0 and title.season_nr<2 and title.phonetic_code<19380 and title.imdb_index=0;

/*+ MergeJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.role_id>1 and title.series_years>0 and title.season_nr<1;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id<15192 and title.production_year>52 and title.season_nr>0;

/*+ MergeJoin(movie_info title)
 IndexScan(movie_info)
 IndexScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.phonetic_code<17183 and title.production_year>0;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id>99 and title.production_year>87;

/*+ MergeJoin(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.production_year>0;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.phonetic_code<18292;

/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.season_nr>0 and title.phonetic_code>0;

/*+ MergeJoin(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.phonetic_code>0;

/*+ NestLoop(title cast_info)
 SeqScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.production_year<126 and title.kind_id>1;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id=1 and title.kind_id=1;

/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.nr_order<2000 and title.episode_nr>16 and title.kind_id=7 and title.season_nr=1;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id>2 and title.phonetic_code<5371 and title.episode_nr<12 and title.imdb_index>0;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.episode_nr>0;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id<107 and title.imdb_index>0 and title.production_year<32;

/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.season_nr>0 and title.imdb_index=0 and title.phonetic_code>0;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.phonetic_code>0;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.season_nr<19;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.kind_id>1 and title.season_nr>0;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.imdb_index>0;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.season_nr=1;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.production_year>0;

/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.episode_nr<1071 and title.season_nr>0 and title.production_year<125 and title.phonetic_code<17391;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.kind_id=7;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.production_year>35 and title.episode_nr<14529;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.imdb_index=0 and title.episode_nr>0;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.episode_nr>0;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.series_years<1203 and title.imdb_index>0 and title.production_year<125;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id<52826 and title.production_year>115 and title.season_nr<1 and title.kind_id=7;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id>286 and title.phonetic_code>3587;

/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.role_id>1 and title.imdb_index=0 and title.episode_nr>16;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id>797 and title.kind_id>1 and title.season_nr>0 and title.phonetic_code>10210 and title.episode_nr>0;

/*+ NestLoop(title cast_info)
 SeqScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.kind_id>1;

/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id>99 and title.series_years>0;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.production_year>42 and title.phonetic_code>0;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.series_years>0 and title.kind_id<7;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.kind_id<7 and title.series_years>0 and title.episode_nr<3398 and title.imdb_index>0;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.production_year<126 and title.series_years>0 and title.imdb_index=0;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.imdb_index=0;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.production_year<127;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.phonetic_code>0;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id>2 and title.production_year<102;

/*+ NestLoop(title cast_info)
 SeqScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.nr_order>2 and title.production_year<103;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.kind_id<7;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.season_nr=0;

/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.production_year<123 and title.episode_nr<22 and title.kind_id<7 and title.series_years<1374;

