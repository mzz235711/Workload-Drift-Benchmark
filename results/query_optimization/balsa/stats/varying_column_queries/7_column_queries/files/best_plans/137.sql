/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-08-03 13:52:52'::timestamp AND c.CreationDate<='2014-09-10 15:16:14'::timestamp AND p.Score>=-1 AND p.CommentCount<=13 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-08-04 21:12:03'::timestamp AND p.CreationDate<='2014-09-04 12:41:45'::timestamp;

