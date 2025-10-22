/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=0 AND c.CreationDate>='2010-07-23 15:29:16'::timestamp AND c.CreationDate<='2014-09-10 20:25:49'::timestamp AND p.Score>=0 AND p.Score<=25 AND p.AnswerCount<=4 AND p.CommentCount<=10 AND p.FavoriteCount<=14 AND p.CreationDate>='2010-07-27 06:01:10'::timestamp AND p.CreationDate<='2014-09-07 03:38:41'::timestamp;

