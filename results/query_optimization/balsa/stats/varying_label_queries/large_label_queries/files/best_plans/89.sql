/*+ HashJoin(c ph v p pl b)
 HashJoin(c ph v p pl)
 MergeJoin(ph v p pl)
 HashJoin(v p pl)
 HashJoin(v p)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(v)
 SeqScan(p)
 IndexScan(pl)
 SeqScan(b)
 Leading(((c (ph ((v p) pl))) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.CreationDate>='2010-07-28 11:15:17'::timestamp AND c.CreationDate<='2014-09-09 16:01:11'::timestamp AND p.Score<=16 AND p.AnswerCount>=0 AND pl.LinkTypeId=1 AND pl.CreationDate>='2010-10-20 22:08:02'::timestamp AND pl.CreationDate<='2014-08-09 00:33:54'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND b.Date<='2014-09-12 07:19:35'::timestamp;

