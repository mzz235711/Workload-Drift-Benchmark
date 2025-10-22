/*+ HashJoin(v u ph c)
 HashJoin(v u ph)
 HashJoin(v u)
 SeqScan(v)
 IndexScan(u)
 SeqScan(ph)
 SeqScan(c)
 Leading((((v u) ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.CreationDate>='2010-09-08 06:25:25'::timestamp AND ph.PostHistoryTypeId=3 AND ph.CreationDate<='2014-09-13 07:12:49'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0;

