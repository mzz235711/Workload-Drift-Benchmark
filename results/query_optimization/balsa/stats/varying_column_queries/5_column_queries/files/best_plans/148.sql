/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.Score<=57 AND u.Reputation>=1 AND u.UpVotes=0 AND u.CreationDate>='2010-07-26 17:50:10'::timestamp AND u.CreationDate<='2014-07-17 15:38:19'::timestamp;

