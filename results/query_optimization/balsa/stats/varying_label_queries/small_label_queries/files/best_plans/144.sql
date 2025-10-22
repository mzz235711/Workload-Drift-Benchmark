/*+ HashJoin(ph v p pl c b)
 HashJoin(ph v p pl c)
 NestLoop(v p pl c)
 HashJoin(v p pl)
 HashJoin(v p)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(c)
 SeqScan(b)
 Leading(((ph (((v p) pl) c)) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.Score=1 AND p.Score>=-3 AND p.Score<=59 AND p.CommentCount>=0 AND p.CreationDate>='2010-07-22 11:58:21'::timestamp AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=5 AND ph.CreationDate<='2014-07-20 00:49:36'::timestamp AND v.BountyAmount>=0 AND v.CreationDate>='2009-02-02 00:00:00'::timestamp;

