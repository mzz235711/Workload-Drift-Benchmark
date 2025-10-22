/*+ HashJoin(ph u v c)
 MergeJoin(ph u v)
 HashJoin(u v)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(v)
 SeqScan(c)
 Leading(((ph (u v)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.CreationDate>='2010-08-13 20:07:47'::timestamp AND ph.PostHistoryTypeId=1 AND ph.CreationDate>='2010-07-21 20:53:54'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=186;

