/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.ViewCount<=15219 AND p.CreationDate>='2010-07-20 07:17:58'::timestamp AND u.Views>=0 AND u.Views<=635 AND u.UpVotes=0;

