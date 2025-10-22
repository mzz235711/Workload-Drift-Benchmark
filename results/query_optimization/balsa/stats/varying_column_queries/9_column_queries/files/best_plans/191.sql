/*+ HashJoin(b c ph pl p v)
 HashJoin(c ph pl p v)
 HashJoin(ph pl p v)
 HashJoin(ph pl p)
 HashJoin(pl p)
 SeqScan(b)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(v)
 Leading((b (c ((ph (pl p)) v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.Score=0 AND p.Score>=0 AND p.AnswerCount<=6 AND p.CommentCount<=16 AND p.FavoriteCount>=0 AND p.FavoriteCount<=15 AND p.CreationDate>='2010-07-24 23:09:05'::timestamp AND ph.PostHistoryTypeId=3 AND b.Date>='2010-07-25 01:38:34'::timestamp;

