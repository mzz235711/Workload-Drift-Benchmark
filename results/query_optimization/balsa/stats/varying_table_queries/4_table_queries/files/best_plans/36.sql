/*+ HashJoin(ph u b c)
 MergeJoin(ph u b)
 MergeJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=2 AND u.DownVotes<=6;

