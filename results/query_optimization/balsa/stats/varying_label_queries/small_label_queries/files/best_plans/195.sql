/*+ HashJoin(b v p pl u c)
 NestLoop(v p pl u c)
 HashJoin(v p pl u)
 HashJoin(v p pl)
 HashJoin(v p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 IndexScan(c)
 Leading((b ((((v p) pl) u) c))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.Score=0 AND p.Score<=34 AND p.CommentCount>=0 AND pl.LinkTypeId=1 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-21 00:00:00'::timestamp;

