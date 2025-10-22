/*+ HashJoin(c ph v u)
 HashJoin(ph v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(u)
 Leading((c (ph (v u)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2011-06-06 03:21:50'::timestamp AND u.Reputation>=1 AND u.UpVotes<=6;

