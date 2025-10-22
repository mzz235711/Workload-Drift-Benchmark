/*+ HashJoin(c u p v b)
 HashJoin(c u p v)
 HashJoin(c u p)
 NestLoop(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 SeqScan(b)
 Leading(((((c u) p) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND c.CreationDate>='2010-08-02 23:49:50'::timestamp AND p.Score<=13 AND p.CommentCount>=0 AND p.CommentCount<=8 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-23 00:00:00'::timestamp AND u.Views<=83;

