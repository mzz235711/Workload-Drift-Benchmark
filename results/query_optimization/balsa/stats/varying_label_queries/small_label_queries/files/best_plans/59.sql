/*+ HashJoin(ph v u c)
 HashJoin(ph v u)
 MergeJoin(v u)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(u)
 SeqScan(c)
 Leading(((ph (v u)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=1 AND c.CreationDate>='2010-07-29 08:09:31'::timestamp AND v.CreationDate>='2010-08-22 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=119 AND u.UpVotes>=0 AND u.UpVotes<=11 AND u.CreationDate>='2010-08-04 08:57:32'::timestamp;

