/*+ HashJoin(ph u b c)
 HashJoin(ph u b)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(b)
 IndexScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=1 AND u.Reputation>=1 AND u.Reputation<=401 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes<=205 AND u.CreationDate<='2014-09-03 19:00:28'::timestamp;

