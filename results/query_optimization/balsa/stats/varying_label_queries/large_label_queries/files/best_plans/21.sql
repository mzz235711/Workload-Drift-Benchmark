/*+ HashJoin(c ph v pl p b)
 HashJoin(c ph v pl p)
 MergeJoin(ph v pl p)
 MergeJoin(v pl p)
 MergeJoin(pl p)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(pl)
 SeqScan(p)
 IndexScan(b)
 Leading(((c (ph (v (pl p)))) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.Score=2 AND p.Score>=-1 AND p.Score<=14 AND p.CommentCount>=0 AND pl.LinkTypeId=1 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp;

