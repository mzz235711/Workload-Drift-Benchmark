/*+ HashJoin(ph u v c)
 HashJoin(ph u v)
 HashJoin(u v)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(v)
 SeqScan(c)
 Leading(((ph (u v)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.CreationDate>='2010-07-20 10:02:05'::timestamp AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-07-20 06:41:13'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-26 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=209 AND u.UpVotes<=51;

