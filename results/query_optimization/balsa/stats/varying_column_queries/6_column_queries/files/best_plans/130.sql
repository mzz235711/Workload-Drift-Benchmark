/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-07-27 12:57:59'::timestamp AND p.CreationDate>='2010-07-21 16:50:35'::timestamp AND p.CreationDate<='2014-09-12 14:27:05'::timestamp AND u.Views>=0 AND u.Views<=20 AND u.DownVotes>=0;

