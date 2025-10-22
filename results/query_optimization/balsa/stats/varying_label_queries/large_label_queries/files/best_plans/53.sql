/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.Score<=30 AND p.CreationDate>='2010-07-20 05:04:40'::timestamp AND u.Views<=26 AND u.CreationDate>='2010-09-19 18:34:42'::timestamp;

