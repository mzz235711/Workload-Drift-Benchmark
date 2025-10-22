/*+ HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND c.CreationDate>='2010-07-23 16:06:37'::timestamp AND c.CreationDate<='2014-09-07 17:11:10'::timestamp AND p.Score>=-2 AND p.CreationDate>='2010-08-12 13:20:13'::timestamp AND p.CreationDate<='2014-09-04 15:48:59'::timestamp AND u.Views>=0 AND u.Views<=260 AND u.UpVotes<=18;

