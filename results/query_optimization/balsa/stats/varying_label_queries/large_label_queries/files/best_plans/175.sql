/*+ HashJoin(v p pl u c b)
 HashJoin(v p pl u c)
 HashJoin(v p pl u)
 HashJoin(v p pl)
 HashJoin(v p)
 IndexScan(v)
 SeqScan(p)
 IndexScan(pl)
 IndexScan(u)
 SeqScan(c)
 SeqScan(b)
 Leading((((((v p) pl) u) c) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.Score=0 AND p.ViewCount>=0 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.UpVotes<=233;

