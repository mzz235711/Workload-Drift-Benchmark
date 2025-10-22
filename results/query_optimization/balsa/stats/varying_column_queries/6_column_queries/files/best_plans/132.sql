/*+ HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.ViewCount>=0 AND p.CommentCount=10 AND p.CreationDate<='2014-09-13 07:19:09'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=229;

