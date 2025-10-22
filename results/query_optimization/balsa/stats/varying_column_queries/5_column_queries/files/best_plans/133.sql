/*+ HashJoin(ph pl p c b v)
 HashJoin(ph pl p c b)
 HashJoin(ph pl p c)
 MergeJoin(ph pl p)
 HashJoin(pl p)
 IndexScan(ph)
 SeqScan(pl)
 SeqScan(p)
 IndexScan(c)
 SeqScan(b)
 IndexScan(v)
 Leading(((((ph (pl p)) c) b) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.CreationDate<='2014-09-10 20:16:37'::timestamp AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.FavoriteCount<=10 AND v.CreationDate<='2014-09-08 00:00:00'::timestamp;

