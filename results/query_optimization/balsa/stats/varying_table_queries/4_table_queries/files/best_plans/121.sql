/*+ HashJoin(ph u b c)
 MergeJoin(ph u b)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-04 20:52:45'::timestamp AND ph.PostHistoryTypeId=5 AND u.Reputation>=1 AND u.Reputation<=194 AND u.UpVotes<=4;

