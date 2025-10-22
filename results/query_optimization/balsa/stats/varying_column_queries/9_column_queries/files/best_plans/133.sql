/*+ HashJoin(b c u p v)
 HashJoin(c u p v)
 HashJoin(c u p)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (((c u) p) v))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND p.AnswerCount<=3 AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.FavoriteCount>=0 AND p.FavoriteCount<=22 AND v.BountyAmount>=0 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.Reputation=101 AND u.Views=2;

