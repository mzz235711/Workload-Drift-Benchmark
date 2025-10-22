/*+ HashJoin(c ph v u)
 HashJoin(ph v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(ph)
 IndexScan(v)
 SeqScan(u)
 Leading((c (ph (v u)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND v.VoteTypeId=5 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.DownVotes<=0;

