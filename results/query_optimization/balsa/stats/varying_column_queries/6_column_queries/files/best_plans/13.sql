/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=1 AND c.CreationDate<='2014-09-10 18:16:29'::timestamp AND p.PostTypeId=1 AND p.CommentCount>=0 AND u.Views>=0 AND u.Views<=382;

