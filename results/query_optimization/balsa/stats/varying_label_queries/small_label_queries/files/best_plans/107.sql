/*+ NestLoop(p v pl u b c)
 NestLoop(p v pl u b)
 HashJoin(p v pl u)
 HashJoin(p v pl)
 HashJoin(p v)
 SeqScan(p)
 SeqScan(v)
 SeqScan(pl)
 SeqScan(u)
 IndexScan(b)
 IndexScan(c)
 Leading((((((p v) pl) u) b) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.Score=0 AND p.Score>=-1 AND p.Score<=22 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND pl.LinkTypeId=1 AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.UpVotes<=44;

