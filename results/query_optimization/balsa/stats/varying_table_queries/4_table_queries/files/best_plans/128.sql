/*+ HashJoin(ph u v c)
 MergeJoin(ph u v)
 MergeJoin(u v)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(v)
 SeqScan(c)
 Leading(((ph (u v)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=0 AND c.CreationDate>='2010-07-27 12:57:59'::timestamp AND c.CreationDate<='2014-09-09 16:36:07'::timestamp AND ph.PostHistoryTypeId=5 AND v.BountyAmount>=0 AND v.CreationDate<='2014-09-04 00:00:00'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0 AND u.DownVotes<=3 AND u.CreationDate>='2010-07-26 19:27:23'::timestamp;

